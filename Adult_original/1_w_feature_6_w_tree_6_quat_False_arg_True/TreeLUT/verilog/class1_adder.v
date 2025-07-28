module class1_adder(input wire [41:0] i, output wire [8:0] o);

wire [6:0] stage0_adder0;
wire [6:0] stage0_adder1;
wire [6:0] stage0_adder2;
wire [6:0] stage0_adder3;
 assign stage0_adder0 = 6'd52 + i[5:0];
assign stage0_adder1 = i[11:6] + i[17:12];
assign stage0_adder2 = i[23:18] + i[29:24];
assign stage0_adder3 = i[35:30] + i[41:36];
wire [7:0] stage1_adder0;
wire [7:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
