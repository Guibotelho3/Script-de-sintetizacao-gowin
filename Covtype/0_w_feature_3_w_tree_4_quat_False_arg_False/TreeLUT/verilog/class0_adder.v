module class0_adder(input wire [18:0] i, output wire [6:0] o);

wire [3:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = 2'd3 + i[2:0];
assign stage0_adder1 = i[5:3] + i[8:6];
assign stage0_adder2 = i[10:9] + i[13:11];
assign stage0_adder3 = i[15:14] + i[18:16];
wire [4:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
