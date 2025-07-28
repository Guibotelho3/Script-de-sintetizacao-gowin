module class4_adder(input wire [14:0] i, output wire [5:0] o);

wire [3:0] stage0_adder0;
wire [2:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [2:0] stage0_adder3;
 assign stage0_adder0 = 2'd2 + i[2:0];
assign stage0_adder1 = i[4:3] + i[6:5];
assign stage0_adder2 = i[8:7] + i[11:9];
assign stage0_adder3 = i[13:12] + i[14:14];
wire [4:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
