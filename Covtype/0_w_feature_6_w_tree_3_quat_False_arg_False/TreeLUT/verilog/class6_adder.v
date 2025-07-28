module class6_adder(input wire [14:0] i, output wire [5:0] o);

wire [2:0] stage0_adder0;
wire [2:0] stage0_adder1;
wire [3:0] stage0_adder2;
wire [1:0] stage0_adder3;
 assign stage0_adder0 = i[1:0] + i[3:2];
assign stage0_adder1 = i[4:4] + i[6:5];
assign stage0_adder2 = i[9:7] + i[12:10];
assign stage0_adder3 = i[14:13];
wire [3:0] stage1_adder0;
wire [4:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
