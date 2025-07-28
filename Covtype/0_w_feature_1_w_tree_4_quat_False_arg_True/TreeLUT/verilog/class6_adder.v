module class6_adder(input wire [24:0] i, output wire [6:0] o);

wire [4:0] stage0_adder0;
wire [4:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 2'd3 + i[3:0];
assign stage0_adder1 = i[7:4] + i[10:8];
assign stage0_adder2 = i[14:11] + i[17:15];
assign stage0_adder3 = i[21:18] + i[24:22];
wire [5:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
