module class5_adder(input wire [24:0] i, output wire [6:0] o);

wire [3:0] stage0_adder0;
wire [4:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 1'd1 + i[2:0];
assign stage0_adder1 = i[5:3] + i[9:6];
assign stage0_adder2 = i[13:10] + i[17:14];
assign stage0_adder3 = i[21:18] + i[24:22];
wire [5:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
