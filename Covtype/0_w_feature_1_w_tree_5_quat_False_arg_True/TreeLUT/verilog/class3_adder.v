module class3_adder(input wire [27:0] i, output wire [7:0] o);

wire [5:0] stage0_adder0;
wire [4:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 4'd10 + i[4:0];
assign stage0_adder1 = i[8:5] + i[12:9];
assign stage0_adder2 = i[16:13] + i[20:17];
assign stage0_adder3 = i[23:21] + i[27:24];
wire [6:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
