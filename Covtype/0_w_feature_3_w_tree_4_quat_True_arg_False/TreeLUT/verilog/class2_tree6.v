module class2_tree6(input wire [102:0] i, output wire [1:0] o);

wire [1:0] new_1;
wire [1:0] new_3;
wire [1:0] new_5;
wire [1:0] new_6;
wire [1:0] new_7;
wire [1:0] new_9;
wire [1:0] new_10;
wire [1:0] new_11;
wire [1:0] new_13;
wire [1:0] new_15;
wire [1:0] new_17;
wire [1:0] new_19;
wire [1:0] new_20;
wire [1:0] new_21;
assign new_21 = i[43] ? 0 : 1;
assign new_20 = i[26] ? 1 : 0;
assign new_19 = i[4] ? 0 : 1;
assign new_17 = i[77] ? 1 : 2;
assign new_15 = i[8] ? new_21 : 0;
assign new_13 = i[52] ? new_19 : new_20;
assign new_11 = i[83] ? new_17 : 0;
assign new_10 = i[26] ? new_15 : 0;
assign new_9 = i[15] ? new_13 : 0;
assign new_7 = i[90] ? new_11 : 0;
assign new_6 = i[53] ? new_9 : new_10;
assign new_5 = i[100] ? new_7 : 0;
assign new_3 = i[91] ? new_5 : new_6;
assign new_1 = i[92] ? new_3 : 0;
assign o = i[63] ? new_1 : 0;


endmodule
