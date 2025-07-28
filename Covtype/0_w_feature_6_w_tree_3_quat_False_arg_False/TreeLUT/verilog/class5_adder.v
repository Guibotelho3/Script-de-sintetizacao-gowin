module class5_adder(input wire [17:0] i, output wire [5:0] o);

wire [2:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = 1'd1 + i[1:0];
assign stage0_adder1 = i[4:2] + i[7:5];
assign stage0_adder2 = i[10:8] + i[12:11];
assign stage0_adder3 = i[15:13] + i[17:16];
wire [4:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
