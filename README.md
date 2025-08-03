# 🔧 Verilog Synthesizer with Automatic Buffer for Gowin FPGA

Script em Python que busca arquivos Verilog em diretórios e realiza a sintetização deles no Gowin.

Se for necessário, também realiza a criação de um buffer baseado na quantidade de bits de entrada e saída para o caso do erro de ports I/O excedentes no FPGA.

> **⚠️ Atenção:**  
> Deve-se atentar aos caminhos dos arquivos `ROOT_DIR`, `GOWIN_PATH`, `OUTPUT_CSV`, além da estrutura de organização das pastas, pois estes foram designados para as aplicações personalizadas desse projeto.  
> O script pode ser ajustado conforme as necessidades.

## 🧩 Funções

- **`criar_buffer()`**  
  Função que busca o top module chamado aqui de `"TreeLUT.v"` e cria um buffer conforme o número de input e output bits que estão sendo analisados.

- **`extrair_parametros()`**  
  Função usada para percorrer as pastas e formatar os nomes para realizar um print com uma melhor visualização.

- **`criar_tcl()`**  
  Função que cria e configura o arquivo `.tcl` usado pelo Gowin para realizar a síntese. Utiliza-se aqui um modelo específico de FPGA, além do comando `run all` para concluir a síntese.

- **`rodar_gowin()`**  
  Função que busca o executável do Gowin (`.exe`) na máquina e busca o arquivo `.tcl` gerado para rodar o comando `run all`.

- **`extrair_luts()`**  
  Função que procura o arquivo `.xml` de log da síntese gerado pelo Gowin no diretório padrão e extrai o número de LUTs de cada combinação sintetizada.

- **`processar_combinacao()`**  
  Função principal que procura por pastas chamadas `"verilog"` dentro de `"TreeLUT"` para montar os caminhos que levam aos arquivos `.v` e, além disso, verifica se será necessário fazer a criação do buffer.

# Esquema de arquivos que o script considera:
automacao_sintese_gowin/
│── Covtype/ 
  │──0_w_feature_1_w_tree_3_quat_False_arg_False/
  │──0_w_feature_1_w_tree_3_quat_False_arg_True/
                                .
                                .
  │──0_w_feature_2_w_tree_3_quat_False_arg_False/
     │──TreeLUT/
        │──verilog/
        │──testbench/
           │──temp_gowin/
           │──result.v
│── Adult/
│── Drybeans/ 
---

💡 *Este projeto foi criado para automação de testes e análises com sintetização de módulos Verilog em dispositivos Gowin FPGA. Ideal para fluxos que exigem geração de buffers e extração precisa de parâmetros pós-síntese.*
