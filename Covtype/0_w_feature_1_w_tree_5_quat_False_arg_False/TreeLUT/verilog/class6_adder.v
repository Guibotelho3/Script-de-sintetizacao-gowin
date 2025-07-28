module class6_adder(input wire [31:0] i, output wire [7:0] o);

wire [5:0] stage0_adder0;
wire [5:0] stage0_adder1;
wire [5:0] stage0_adder2;
wire [5:0] stage0_adder3;
 assign stage0_adder0 = 3'd7 + i[4:0];
assign stage0_adder1 = i[9:5] + i[13:10];
assign stage0_adder2 = i[18:14] + i[22:19];
assign stage0_adder3 = i[27:23] + i[31:28];
wire [6:0] stage1_adder0;
wire [6:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
