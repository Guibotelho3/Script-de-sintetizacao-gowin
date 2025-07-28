module class2_adder(input wire [13:0] i, output wire [5:0] o);

wire [3:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [2:0] stage0_adder2;
wire [2:0] stage0_adder3;
 assign stage0_adder0 = 2'd2 + i[2:0];
assign stage0_adder1 = i[4:3] + i[7:5];
assign stage0_adder2 = i[9:8] + i[10:10];
assign stage0_adder3 = i[11:11] + i[13:12];
wire [4:0] stage1_adder0;
wire [3:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
