module class1_adder(input wire [18:0] i, output wire [6:0] o);

wire [3:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [2:0] stage0_adder3;
 assign stage0_adder0 = i[2:0] + i[5:3];
assign stage0_adder1 = i[7:6] + i[10:8];
assign stage0_adder2 = i[12:11] + i[15:13];
assign stage0_adder3 = i[18:16];
wire [4:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
