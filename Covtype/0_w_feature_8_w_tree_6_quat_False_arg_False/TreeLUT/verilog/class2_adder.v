module class2_adder(input wire [34:0] i, output wire [8:0] o);

wire [5:0] stage0_adder0;
wire [6:0] stage0_adder1;
wire [6:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 5'd21 + i[4:0];
assign stage0_adder1 = i[9:5] + i[15:10];
assign stage0_adder2 = i[21:16] + i[26:22];
assign stage0_adder3 = i[30:27] + i[34:31];
wire [7:0] stage1_adder0;
wire [7:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
