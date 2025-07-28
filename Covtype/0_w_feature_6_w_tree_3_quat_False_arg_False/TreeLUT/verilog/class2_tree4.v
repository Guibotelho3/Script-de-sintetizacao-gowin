module class2_tree4(input wire [534:0] i, output wire [1:0] o);

wire [1:0] new_1;
wire [1:0] new_3;
wire [1:0] new_5;
wire [1:0] new_6;
wire [1:0] new_7;
wire [1:0] new_9;
wire [1:0] new_10;
wire [1:0] new_11;
wire [1:0] new_13;
wire [1:0] new_14;
wire [1:0] new_15;
wire [1:0] new_16;
wire [1:0] new_17;
wire [1:0] new_20;
wire [1:0] new_21;
wire [1:0] new_22;
wire [1:0] new_24;
wire [1:0] new_25;
wire [1:0] new_26;
assign new_26 = i[494] ? 0 : 0;
assign new_25 = i[50] ? 0 : 0;
assign new_24 = i[220] ? 2 : 0;
assign new_22 = i[215] ? 0 : 0;
assign new_21 = i[69] ? 0 : 0;
assign new_20 = i[216] ? 1 : 0;
assign new_17 = i[532] ? 0 : 0;
assign new_16 = i[129] ? new_25 : new_26;
assign new_15 = i[42] ? 0 : new_24;
assign new_14 = i[120] ? new_21 : new_22;
assign new_13 = i[465] ? 0 : new_20;
assign new_11 = i[516] ? new_17 : 0;
assign new_10 = i[74] ? new_15 : new_16;
assign new_9 = i[119] ? new_13 : new_14;
assign new_7 = i[515] ? new_11 : 0;
assign new_6 = i[348] ? new_9 : new_10;
assign new_5 = i[522] ? new_7 : 0;
assign new_3 = i[523] ? new_5 : new_6;
assign new_1 = i[524] ? new_3 : 0;
assign o = i[495] ? new_1 : 0;


endmodule
