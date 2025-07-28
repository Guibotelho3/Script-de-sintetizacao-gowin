module class5_adder(input wire [37:0] i, output wire [8:0] o);

wire [5:0] stage0_adder0;
wire [6:0] stage0_adder1;
wire [6:0] stage0_adder2;
wire [5:0] stage0_adder3;
 assign stage0_adder0 = i[4:0] + i[9:5];
assign stage0_adder1 = i[15:10] + i[21:16];
assign stage0_adder2 = i[25:22] + i[31:26];
assign stage0_adder3 = i[37:32];
wire [7:0] stage1_adder0;
wire [7:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
