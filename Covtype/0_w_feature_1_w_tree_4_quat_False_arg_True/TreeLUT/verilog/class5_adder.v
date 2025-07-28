module class5_adder(input wire [21:0] i, output wire [6:0] o);

wire [4:0] stage0_adder0;
wire [4:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = 3'd5 + i[3:0];
assign stage0_adder1 = i[6:4] + i[10:7];
assign stage0_adder2 = i[13:11] + i[16:14];
assign stage0_adder3 = i[19:17] + i[21:20];
wire [5:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
