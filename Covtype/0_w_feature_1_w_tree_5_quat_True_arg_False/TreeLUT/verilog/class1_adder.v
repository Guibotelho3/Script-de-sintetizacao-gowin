module class1_adder(input wire [28:0] i, output wire [7:0] o);

wire [5:0] stage0_adder0;
wire [4:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = i[4:0] + i[8:5];
assign stage0_adder1 = i[12:9] + i[16:13];
assign stage0_adder2 = i[20:17] + i[24:21];
assign stage0_adder3 = i[28:25];
wire [6:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
