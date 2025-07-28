import os
import pdb
import subprocess
import re
import csv
import shutil
import xml


ROOT_DIR = r"C:\\Users\\Guilherme\\Desktop\\automacao_sintese_gowin"
GOWIN_PATH = r"C:\\Gowin\\Gowin_V1.9.11.02_x64\\IDE\\bin\\gw_sh.exe"
OUTPUT_CSV = r"C:\\Users\\Guilherme\\Desktop\\automacao_sintese_gowin\\resultados.csv"


def criar_buffer(tree_dir):
    treelut_path = os.path.join(tree_dir, "TreeLUT.v")
    if not os.path.exists(treelut_path):
        print(f"Arquivo {treelut_path} não encontrado em criar buffer.")
        return
    
    with open(treelut_path, "r", encoding="utf-8") as f:
        content = f.read()

    match = re.search(r'module\s+TreeLUT\s*\(\s*input\s+wire\s+\[(\d+):0\].*?output\s+wire\s+\[(\d+):0\]', content)

    if not match:
        print("Não foi possível encontrar a definição do módulo TreeLUT com os padrões esperados.")
        return

    input_bits = match.group(1)
    output_bits = match.group(2)
    
    TOP_WRAPPER_VERILOG = f"""
    module top_wrapper (
        input wire clk,
        input wire rst,
        input wire load,
        input wire start,
        input wire [56:0] data_in,
        output wire treelut_output,
        output wire done
    );

        reg [{input_bits}:0] treelut_input_buffer;
        reg [{int(input_bits).bit_length()-1}:0] write_index;
        reg loading;
        reg trigger;

        wire [{input_bits}:0] treelut_input;
        wire [{output_bits}:0] treelut_output_full;
        wire [6:0] group_select;

        assign treelut_input = treelut_input_buffer;
        assign group_select = data_in[6:0];

        always @(posedge clk or posedge rst) begin
            if (rst) begin
                treelut_input_buffer <= 0;
                write_index <= 0;
                loading <= 1;
                trigger <= 0;
            end else begin
                if (loading) begin
                    if (load) begin
                        if (write_index <= 288 - 16) begin
                            treelut_input_buffer[write_index +: 16] <= data_in;
                            write_index <= write_index + 16;
                        end else begin
                            loading <= 0;
                        end
                    end
                end else if (start) begin
                    trigger <= 1;
                end
            end
        end

        TreeLUT uut (
            treelut_input,
            treelut_output_full
        );

        assign treelut_output = treelut_output_full[group_select];
        assign done = (!loading && trigger);

    endmodule
    """
    return TOP_WRAPPER_VERILOG


def extrair_parametros(path):
    normalized_path = path.replace('/', '\\')
    partes = normalized_path.split('\\')

    dataset = partes[-2]
    nome = partes[-1]
    dados = nome.split("_")

    resultado = {
        "dataset": dataset,
        "w_feature": dados[3],
        "w_tree": dados[6],
        "quantization": dados[8],
        "argmax": dados[10]
    }
    return resultado


def criar_tcl(verilog_files, top_module, temp_dir):
    with open(os.path.join(temp_dir, "run.tcl"), "w") as f:
        f.write(f"set_device -name GW2A-18 -device_version NA GW2A-LV18QN88C8/I7\n")
        f.write(f'set_option -include_path "{temp_dir.replace(os.sep, '/')}"\n')

        for vf in verilog_files:
            f.write(f'add_file -type verilog "{vf.replace(os.sep, "/")}"\n')
        f.write(f"set_option -top_module {top_module}\n")
        f.write("run all\n")


def rodar_gowin(temp_dir):
    run_tcl_path = os.path.join(temp_dir, "run.tcl")  
    gowin_bin = r"C:\Gowin\Gowin_V1.9.11.02_x64\IDE\bin" 

    result = subprocess.run(
        [GOWIN_PATH, run_tcl_path, "."],  
        cwd=gowin_bin,  
        capture_output=True,
        text=True
    )

    if "run all" in open(os.path.join(temp_dir, "run.tcl"), "r").read():
        print(" Comando 'run all' está no script.")
    else:
        print(" 'run all' não encontrado no run.tcl!")

    if result.returncode == 0:
        print(" Gowin executado sem erro (returncode=0).")
    else:
        print(f"Gowin retornou erro (returncode={result.returncode}).")

    return result.stdout + result.stderr


def extrair_luts():
    impl_path = r"C:\Gowin\Gowin_V1.9.11.02_x64\IDE\bin\impl\gwsynthesis"
    xml_path = os.path.join(impl_path, "project_syn_rsc.xml")
    if not os.path.exists(xml_path):
        print("\n  → Arquivo meu_projeto_syn_rsc.xml não encontrado.\n")
        return "Erro"

    with open(xml_path, "r", encoding="utf-8") as f:
        content = f.read()

    match = re.search(r'<Module[^>]*T_Lut="(\d+)\(', content)
    if match:
        print(f"  → LUTs extraídas: {match.group(1)}")
        return match.group(1)
    else:
        print("  → Não foi possível extrair LUTs do XML.")
        return "Erro"
    

def processar_combinacao(comb_path):
    resultado = extrair_parametros(comb_path)
    print(f"\nProcurando TreeLUT e verilog em: {resultado}\n")

    tree_dir = os.path.join(comb_path, "TreeLUT", "verilog")
    if not os.path.isdir(tree_dir):
        print("  → tree_dir não encontrado.")
        return None
    print("  → tree_dir FOI encontrado.")

    verilog_files = [os.path.join(tree_dir, f) for f in os.listdir(tree_dir) if f.endswith(".v")]
    if not verilog_files:
        print("  → verilog_files NAO encontrado.")
        return None
    print("  → verilog_files FOI encontrado.")

    temp_dir = os.path.join(comb_path, "temp_gowin")
    os.makedirs(temp_dir, exist_ok=True)
    print(f"\nTemp dir será criado em: {temp_dir}")

    # Primeira tentativa: TreeLUT
    criar_tcl(verilog_files, "TreeLUT", temp_dir)
    print(f"\nExecutando Síntese...\n")
    resultado = rodar_gowin(temp_dir)

    if "ports exceeds the resource limit " in resultado or "I/O ports exceed" in resultado:
        print("  → Excesso de I/O! Criando top_wrapper...")
        buffer_criado = criar_buffer(tree_dir)

        if buffer_criado:  
            wrapper_path = os.path.join(tree_dir, "top_wrapper.v")  

        with open(wrapper_path, "w", encoding="utf-8") as f:
            f.write(buffer_criado)

        verilog_files.append(wrapper_path)
        criar_tcl(verilog_files, "top_wrapper", temp_dir)
        resultado = rodar_gowin(temp_dir)


    luts = extrair_luts()
    print("-----------------------------------------------------------------------------------------------------------------------------")
    
    return {
        **extrair_parametros(comb_path),
        "LUTs": luts,
        "accuracy": "N/A"
    }


def main():
    resultados = []
    for root, dirs, files in os.walk(ROOT_DIR):

        if 'TreeLUT' in dirs:
            tree_lut_path = os.path.join(root, 'TreeLUT')
        
            if os.path.exists(os.path.join(tree_lut_path, 'verilog')):
                comb_path = os.path.abspath(root)     
                
                resultado = processar_combinacao(comb_path)
                
                resultados.append(resultado)
    

    # Salvar CSV
    with open(OUTPUT_CSV, "w", newline="") as csvfile:
        campos = ["dataset", "w_feature", "w_tree", "quantization", "argmax", "LUTs", "accuracy"]
        writer = csv.DictWriter(csvfile, fieldnames=campos)
        writer.writeheader()

        for row in resultados:
            writer.writerow(row)

    print(f"\n✅ Pronto! {len(resultados)} combinações processadas. Resultados salvos em '{OUTPUT_CSV}'.")

if __name__ == "__main__":
    main()
