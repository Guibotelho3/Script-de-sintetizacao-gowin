module class1_adder(input wire [21:0] i, output wire [6:0] o);

wire [4:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [2:0] stage0_adder3;
 assign stage0_adder0 = i[3:0] + i[6:4];
assign stage0_adder1 = i[9:7] + i[12:10];
assign stage0_adder2 = i[15:13] + i[18:16];
assign stage0_adder3 = i[21:19];
wire [5:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
