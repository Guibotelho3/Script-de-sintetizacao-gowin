module class4_adder(input wire [20:0] i, output wire [6:0] o);

wire [4:0] stage0_adder0;
wire [3:0] stage0_adder1;
wire [4:0] stage0_adder2;
wire [3:0] stage0_adder3;
 assign stage0_adder0 = 3'd5 + i[3:0];
assign stage0_adder1 = i[6:4] + i[8:7];
assign stage0_adder2 = i[11:9] + i[15:12];
assign stage0_adder3 = i[18:16] + i[20:19];
wire [5:0] stage1_adder0;
wire [5:0] stage1_adder1;
 assign stage1_adder0 = stage0_adder0 + stage0_adder1;
assign stage1_adder1 = stage0_adder2 + stage0_adder3;
assign o = stage1_adder0 + stage1_adder1;

endmodule
