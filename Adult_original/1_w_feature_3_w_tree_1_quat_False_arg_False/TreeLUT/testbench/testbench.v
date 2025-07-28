`timescale 1ns/1ps

module sim ();

reg [41:0] x_test [0:16117];
reg [0:0] y_test [0:16117];

reg [41:0] treelut_input;
wire [7:0] treelut_output;

wire [0:0] out_predicted;

reg [0:0] out_expected;

integer i, j;
reg [13:0] result_false;
reg [13:0] result_true;

TreeLUT TreeLUT_inst(treelut_input, treelut_output);
argmax argmax_inst(treelut_output, out_predicted);

initial begin
	
	result_false <= 0; result_true <= 0;
	$readmemb("X_test.mem", x_test); $readmemb("y_test.mem", y_test);
end

initial begin
	#105
	for (i = 0; i <= 16118; i = i + 1) begin
		#10
		treelut_input <= x_test[i];
	end
end

initial begin
	#105
	for (j = 0; j <= 16118; j = j + 1) begin
		#10
		out_expected <= y_test[j];
		if(out_predicted == out_expected)
			result_true <= result_true + 1;
		else
			result_false <= result_false+1;
	end
	#10
	$display("Result: %d/%d", result_true, result_false);
	$finish;
end
endmodule

module argmax(input wire [7:0] i, output wire [0:0] o);

wire [3:0] sum [0:1];
assign sum[0] = i[3:0];
assign sum[1] = i[7:4];

assign o = ((sum[0] >= sum[1])) ? 1'd0 :
 1'd1;
endmodule
