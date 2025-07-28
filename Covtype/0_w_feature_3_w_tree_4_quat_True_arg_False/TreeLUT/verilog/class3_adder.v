module class3_adder(input wire [17:0] i, output wire [6:0] o);

wire [3:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = 3'd4 + i[2:0];
assign stage0_adder1 = i[5:3] + i[7:6];
assign stage0_adder2 = i[10:8] + i[12:11];
assign stage0_adder3 = i[14:13] + i[17:15];
wire [4:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
