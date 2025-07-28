`timescale 1ns/1ps

module sim ();

reg [161:0] x_test [0:191733];
reg [2:0] y_test [0:191733];

reg [161:0] treelut_input;
wire [2:0] out_predicted;

reg [2:0] out_expected;

integer i, j;
reg [17:0] result_false;
reg [17:0] result_true;
TreeLUT TreeLUT_inst(treelut_input, out_predicted);
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