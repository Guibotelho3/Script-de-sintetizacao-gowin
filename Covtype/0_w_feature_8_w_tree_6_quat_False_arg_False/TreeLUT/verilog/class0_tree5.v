module class0_tree5(input wire [1237:0] i, output wire [3:0] o);

wire [3:0] new_1;
wire [3:0] new_3;
wire [3:0] new_5;
wire [3:0] new_7;
wire [3:0] new_8;
wire [3:0] new_9;
wire [3:0] new_10;
wire [3:0] new_11;
wire [3:0] new_12;
wire [3:0] new_13;
wire [3:0] new_14;
wire [3:0] new_15;
wire [3:0] new_16;
wire [3:0] new_17;
wire [3:0] new_18;
wire [3:0] new_20;
assign new_20 = i[750] ? 2 : 6;
assign new_18 = i[1060] ? 0 : 6;
assign new_17 = i[98] ? 1 : 11;
assign new_16 = i[225] ? 2 : 7;
assign new_15 = i[391] ? 8 : 4;
assign new_14 = i[1030] ? 6 : 2;
assign new_13 = i[1205] ? 5 : 2;
assign new_12 = i[694] ? 1 : new_20;
assign new_11 = i[631] ? new_17 : new_18;
assign new_10 = i[79] ? new_15 : new_16;
assign new_9 = i[1220] ? new_13 : new_14;
assign new_8 = i[940] ? new_11 : new_12;
assign new_7 = i[1207] ? new_9 : new_10;
assign new_5 = i[1228] ? new_7 : new_8;
assign new_3 = i[1200] ? new_5 : 1;
assign new_1 = i[1201] ? new_3 : 1;
assign o = i[1237] ? new_1 : 2;


endmodule
