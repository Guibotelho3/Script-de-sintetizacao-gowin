module class4_tree6(input wire [102:0] i, output wire [1:0] o);

wire [1:0] new_1;
wire [1:0] new_3;
wire [1:0] new_5;
wire [1:0] new_7;
wire [1:0] new_8;
wire [1:0] new_9;
wire [1:0] new_10;
wire [1:0] new_11;
wire [1:0] new_12;
wire [1:0] new_13;
wire [1:0] new_14;
wire [1:0] new_15;
wire [1:0] new_16;
wire [1:0] new_17;
wire [1:0] new_18;
wire [1:0] new_20;
assign new_20 = i[27] ? 1 : 1;
assign new_18 = i[15] ? 3 : 1;
assign new_17 = i[52] ? 0 : 3;
assign new_16 = i[32] ? 1 : 1;
assign new_15 = i[17] ? 1 : 0;
assign new_14 = i[26] ? 1 : 1;
assign new_13 = i[89] ? 1 : 1;
assign new_12 = i[42] ? 0 : new_20;
assign new_11 = i[12] ? new_17 : new_18;
assign new_10 = i[43] ? new_15 : new_16;
assign new_9 = i[77] ? new_13 : new_14;
assign new_8 = i[2] ? new_11 : new_12;
assign new_7 = i[74] ? new_9 : new_10;
assign new_5 = i[67] ? new_7 : new_8;
assign new_3 = i[97] ? new_5 : 0;
assign new_1 = i[100] ? new_3 : 0;
assign o = i[102] ? new_1 : 0;


endmodule
