
    module top_wrapper (
        input wire clk,
        input wire rst,
        input wire load,
        input wire start,
        input wire [56:0] data_in,
        output wire treelut_output,
        output wire done
    );

        reg [111:0] treelut_input_buffer;
        reg [6:0] write_index;
        reg loading;
        reg trigger;

        wire [111:0] treelut_input;
        wire [11:0] treelut_output_full;
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
    