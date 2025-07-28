module class0_adder(input wire [41:0] i, output wire [8:0] o);

wire [6:0] stage0_adder0;
wire [6:0] stage0_adder1;
wire [6:0] stage0_adder2;
wire [5:0] stage0_adder3;
 assign stage0_adder0 = i[5:0] + i[11:6];
assign stage0_adder1 = i[17:12] + i[23:18];
assign stage0_adder2 = i[29:24] + i[35:30];
assign stage0_adder3 = i[41:36];
wire [7:0] stage1_adder0;
wire [7:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
