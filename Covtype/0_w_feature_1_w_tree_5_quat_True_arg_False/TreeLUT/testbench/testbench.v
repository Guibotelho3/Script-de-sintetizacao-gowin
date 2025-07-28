`timescale 1ns/1ps

module sim ();

reg [431:0] x_test [0:191733];
reg [2:0] y_test [0:191733];

reg [431:0] treelut_input;
wire [55:0] treelut_output;

wire [2:0] out_predicted;

reg [2:0] out_expected;

integer i, j;
reg [17:0] result_false;
reg [17:0] result_true;

TreeLUT TreeLUT_inst(treelut_input, treelut_output);
argmax argmax_inst(treelut_output, out_predicted);

initial begin
	
	result_false <= 0; result_true <= 0;
	$readmemb("X_test.mem", x_test); $readmemb("y_test.mem", y_test);
end

initial begin
	#105
	for (i = 0; i <= 191734; i = i + 1) begin
		#10
		treelut_input <= x_test[i];
	end
end

initial begin
	#105
	for (j = 0; j <= 191734; j = j + 1) begin
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

module argmax(input wire [55:0] i, output wire [2:0] o);

wire [7:0] sum [0:6];
assign sum[0] = i[7:0];
assign sum[1] = i[15:8];
assign sum[2] = i[23:16];
assign sum[3] = i[31:24];
assign sum[4] = i[39:32];
assign sum[5] = i[47:40];
assign sum[6] = i[55:48];

assign o = ((sum[0] >= sum[1]) & (sum[0] >= sum[2]) & (sum[0] >= sum[3]) & (sum[0] >= sum[4]) & (sum[0] >= sum[5]) & (sum[0] >= sum[6])) ? 3'd0 :
 ((sum[1] >= sum[0]) & (sum[1] >= sum[2]) & (sum[1] >= sum[3]) & (sum[1] >= sum[4]) & (sum[1] >= sum[5]) & (sum[1] >= sum[6])) ? 3'd1 :
 ((sum[2] >= sum[0]) & (sum[2] >= sum[1]) & (sum[2] >= sum[3]) & (sum[2] >= sum[4]) & (sum[2] >= sum[5]) & (sum[2] >= sum[6])) ? 3'd2 :
 ((sum[3] >= sum[0]) & (sum[3] >= sum[1]) & (sum[3] >= sum[2]) & (sum[3] >= sum[4]) & (sum[3] >= sum[5]) & (sum[3] >= sum[6])) ? 3'd3 :
 ((sum[4] >= sum[0]) & (sum[4] >= sum[1]) & (sum[4] >= sum[2]) & (sum[4] >= sum[3]) & (sum[4] >= sum[5]) & (sum[4] >= sum[6])) ? 3'd4 :
 ((sum[5] >= sum[0]) & (sum[5] >= sum[1]) & (sum[5] >= sum[2]) & (sum[5] >= sum[3]) & (sum[5] >= sum[4]) & (sum[5] >= sum[6])) ? 3'd5 :
 3'd6;
endmodule
