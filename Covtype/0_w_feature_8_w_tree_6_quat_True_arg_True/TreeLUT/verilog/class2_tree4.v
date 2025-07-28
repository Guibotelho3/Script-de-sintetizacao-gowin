module class2_tree4(input wire [1237:0] i, output wire [4:0] o);

wire [4:0] new_1;
wire [4:0] new_3;
wire [4:0] new_5;
wire [4:0] new_6;
wire [4:0] new_7;
wire [4:0] new_9;
wire [4:0] new_10;
wire [4:0] new_11;
wire [4:0] new_13;
wire [4:0] new_14;
wire [4:0] new_15;
wire [4:0] new_16;
wire [4:0] new_17;
wire [4:0] new_19;
wire [4:0] new_20;
wire [4:0] new_21;
wire [4:0] new_24;
wire [4:0] new_25;
wire [4:0] new_26;
assign new_26 = i[1197] ? 0 : 4;
assign new_25 = i[188] ? 1 : 2;
assign new_24 = i[539] ? 19 : 1;
assign new_21 = i[1152] ? 0 : 1;
assign new_20 = i[1172] ? 18 : 1;
assign new_19 = i[783] ? 0 : 5;
assign new_17 = i[1235] ? 4 : 0;
assign new_16 = i[395] ? new_25 : new_26;
assign new_15 = i[160] ? 0 : new_24;
assign new_14 = i[520] ? new_21 : 0;
assign new_13 = i[1168] ? new_19 : new_20;
assign new_11 = i[1219] ? new_17 : 0;
assign new_10 = i[265] ? new_15 : new_16;
assign new_9 = i[385] ? new_13 : new_14;
assign new_7 = i[1218] ? new_11 : 0;
assign new_6 = i[853] ? new_9 : new_10;
assign new_5 = i[1225] ? new_7 : 0;
assign new_3 = i[1226] ? new_5 : new_6;
assign new_1 = i[1227] ? new_3 : 0;
assign o = i[1198] ? new_1 : 0;


endmodule
