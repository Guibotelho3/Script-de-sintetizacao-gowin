module class2_tree6(input wire [1237:0] i, output wire [3:0] o);

wire [3:0] new_1;
wire [3:0] new_3;
wire [3:0] new_4;
wire [3:0] new_5;
wire [3:0] new_6;
wire [3:0] new_7;
wire [3:0] new_9;
wire [3:0] new_11;
wire [3:0] new_12;
wire [3:0] new_15;
wire [3:0] new_17;
wire [3:0] new_18;
wire [3:0] new_19;
wire [3:0] new_21;
wire [3:0] new_23;
wire [3:0] new_24;
wire [3:0] new_25;
wire [3:0] new_26;
wire [3:0] new_27;
wire [3:0] new_28;
assign new_28 = i[512] ? 4 : 1;
assign new_27 = i[171] ? 2 : 4;
assign new_26 = i[1030] ? 1 : 0;
assign new_25 = i[1187] ? 0 : 2;
assign new_24 = i[1191] ? 1 : 5;
assign new_23 = i[439] ? 10 : 1;
assign new_21 = i[1209] ? 4 : 1;
assign new_19 = i[1035] ? new_27 : new_28;
assign new_18 = i[520] ? new_25 : new_26;
assign new_17 = i[249] ? new_23 : new_24;
assign new_15 = i[1235] ? new_21 : 0;
assign new_12 = i[396] ? new_19 : 0;
assign new_11 = i[385] ? new_17 : new_18;
assign new_9 = i[1218] ? new_15 : 0;
assign new_7 = i[704] ? 6 : 0;
assign new_6 = i[854] ? new_11 : new_12;
assign new_5 = i[1225] ? new_9 : 0;
assign new_4 = i[10] ? new_7 : 0;
assign new_3 = i[1226] ? new_5 : new_6;
assign new_1 = i[1227] ? new_3 : new_4;
assign o = i[1198] ? new_1 : 0;


endmodule
