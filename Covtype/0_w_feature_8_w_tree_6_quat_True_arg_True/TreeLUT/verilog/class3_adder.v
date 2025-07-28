module class3_adder(input wire [34:0] i, output wire [8:0] o);

wire [5:0] stage0_adder0;
wire [5:0] stage0_adder1;
wire [5:0] stage0_adder2;
wire [5:0] stage0_adder3;
 assign stage0_adder0 = 5'd20 + i[4:0];
assign stage0_adder1 = i[9:5] + i[14:10];
assign stage0_adder2 = i[19:15] + i[24:20];
assign stage0_adder3 = i[29:25] + i[34:30];
wire [6:0] stage1_adder0;
wire [6:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
