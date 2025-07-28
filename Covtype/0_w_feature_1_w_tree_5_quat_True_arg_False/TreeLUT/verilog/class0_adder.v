module class0_adder(input wire [28:0] i, output wire [7:0] o);

wire [5:0] stage0_adder0;
wire [5:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 3'd5 + i[4:0];
assign stage0_adder1 = i[9:5] + i[13:10];
assign stage0_adder2 = i[17:14] + i[21:18];
assign stage0_adder3 = i[25:22] + i[28:26];
wire [6:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
