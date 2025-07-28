module class4_adder(input wire [27:0] i, output wire [7:0] o);

wire [5:0] stage0_adder0;
wire [4:0] stage0_adder1;
wire [5:0] stage0_adder2;
wire [4:0] stage0_adder3;
 assign stage0_adder0 = 4'd10 + i[4:0];
assign stage0_adder1 = i[8:5] + i[11:9];
assign stage0_adder2 = i[15:12] + i[20:16];
assign stage0_adder3 = i[24:21] + i[27:25];
wire [6:0] stage1_adder0;
wire [6:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
