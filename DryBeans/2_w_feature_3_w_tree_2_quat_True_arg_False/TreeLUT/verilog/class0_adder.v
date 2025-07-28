module class0_adder(input wire [7:0] i, output wire [3:0] o);

wire [2:0] stage0_adder0;
wire [1:0] stage0_adder1;
wire [1:0] stage0_adder2;
wire [0:0] stage0_adder3;
 assign stage0_adder0 = i[1:0] + i[2:2];
assign stage0_adder1 = i[3:3] + i[4:4];
assign stage0_adder2 = i[5:5] + i[6:6];
assign stage0_adder3 = i[7:7];
wire [3:0] stage1_adder0;
wire [2:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
