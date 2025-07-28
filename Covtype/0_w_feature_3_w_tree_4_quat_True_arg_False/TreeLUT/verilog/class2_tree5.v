module class2_tree5(input wire [102:0] i, output wire [0:0] o);

wire [0:0] new_1;
wire [0:0] new_3;
wire [0:0] new_5;
wire [0:0] new_6;
wire [0:0] new_7;
wire [0:0] new_9;
wire [0:0] new_10;
wire [0:0] new_11;
wire [0:0] new_13;
wire [0:0] new_15;
wire [0:0] new_16;
wire [0:0] new_17;
wire [0:0] new_19;
wire [0:0] new_20;
wire [0:0] new_21;
wire [0:0] new_22;
wire [0:0] new_23;
wire [0:0] new_24;
assign new_24 = i[1] ? 1 : 0;
assign new_23 = i[5] ? 0 : 0;
assign new_22 = i[4] ? 1 : 0;
assign new_21 = i[19] ? 0 : 0;
assign new_20 = i[28] ? 1 : 0;
assign new_19 = i[28] ? 0 : 1;
assign new_17 = i[74] ? 1 : 0;
assign new_16 = i[44] ? new_23 : new_24;
assign new_15 = i[60] ? new_21 : new_22;
assign new_13 = i[4] ? new_19 : new_20;
assign new_11 = i[84] ? new_17 : 0;
assign new_10 = i[26] ? new_15 : new_16;
assign new_9 = i[15] ? new_13 : 0;
assign new_7 = i[90] ? new_11 : 0;
assign new_6 = i[52] ? new_9 : new_10;
assign new_5 = i[83] ? new_7 : 0;
assign new_3 = i[91] ? new_5 : new_6;
assign new_1 = i[92] ? new_3 : 0;
assign o = i[63] ? new_1 : 0;


endmodule
