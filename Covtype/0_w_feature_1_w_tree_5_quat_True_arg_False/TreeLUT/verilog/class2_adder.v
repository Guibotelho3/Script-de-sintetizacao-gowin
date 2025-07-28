module class2_adder(input wire [26:0] i, output wire [7:0] o);

wire [5:0] stage0_adder0;
wire [5:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 4'd8 + i[4:0];
assign stage0_adder1 = i[8:5] + i[13:9];
assign stage0_adder2 = i[17:14] + i[20:18];
assign stage0_adder3 = i[22:21] + i[26:23];
wire [6:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
