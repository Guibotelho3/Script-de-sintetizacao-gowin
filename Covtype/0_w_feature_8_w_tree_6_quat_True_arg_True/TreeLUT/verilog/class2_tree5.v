module class2_tree5(input wire [1237:0] i, output wire [3:0] o);

wire [3:0] new_1;
wire [3:0] new_3;
wire [3:0] new_5;
wire [3:0] new_6;
wire [3:0] new_7;
wire [3:0] new_9;
wire [3:0] new_10;
wire [3:0] new_11;
wire [3:0] new_13;
wire [3:0] new_14;
wire [3:0] new_15;
wire [3:0] new_17;
wire [3:0] new_18;
wire [3:0] new_19;
wire [3:0] new_21;
wire [3:0] new_22;
wire [3:0] new_23;
wire [3:0] new_24;
assign new_24 = i[1157] ? 1 : 2;
assign new_23 = i[161] ? 1 : 7;
assign new_22 = i[697] ? 0 : 3;
assign new_21 = i[1152] ? 0 : 1;
assign new_19 = i[1147] ? 1 : 9;
assign new_18 = i[881] ? 0 : 9;
assign new_17 = i[1219] ? 4 : 0;
assign new_15 = i[930] ? new_23 : new_24;
assign new_14 = i[520] ? new_21 : new_22;
assign new_13 = i[524] ? new_19 : 0;
assign new_11 = i[1209] ? new_17 : new_18;
assign new_10 = i[396] ? new_15 : 0;
assign new_9 = i[384] ? new_13 : new_14;
assign new_7 = i[1218] ? new_11 : 0;
assign new_6 = i[854] ? new_9 : new_10;
assign new_5 = i[1225] ? new_7 : 0;
assign new_3 = i[1226] ? new_5 : new_6;
assign new_1 = i[1227] ? new_3 : 0;
assign o = i[1198] ? new_1 : 0;


endmodule
