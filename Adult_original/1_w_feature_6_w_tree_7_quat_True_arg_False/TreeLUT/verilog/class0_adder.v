module class0_adder(input wire [48:0] i, output wire [9:0] o);

wire [7:0] stage0_adder0;
wire [7:0] stage0_adder1;
wire [7:0] stage0_adder2;
wire [6:0] stage0_adder3;
 assign stage0_adder0 = i[6:0] + i[13:7];
assign stage0_adder1 = i[20:14] + i[27:21];
assign stage0_adder2 = i[34:28] + i[41:35];
assign stage0_adder3 = i[48:42];
wire [8:0] stage1_adder0;
wire [8:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
