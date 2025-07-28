module class6_adder(input wire [21:0] i, output wire [6:0] o);

wire [3:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = 2'd2 + i[2:0];
assign stage0_adder1 = i[5:3] + i[8:6];
assign stage0_adder2 = i[11:9] + i[15:12];
assign stage0_adder3 = i[18:16] + i[21:19];
wire [4:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
