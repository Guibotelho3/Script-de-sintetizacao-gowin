module class0_tree5(input wire [534:0] i, output wire [0:0] o);

wire [0:0] new_1;
wire [0:0] new_3;
wire [0:0] new_5;
wire [0:0] new_7;
wire [0:0] new_8;
wire [0:0] new_9;
wire [0:0] new_10;
wire [0:0] new_11;
wire [0:0] new_13;
wire [0:0] new_14;
wire [0:0] new_15;
wire [0:0] new_16;
wire [0:0] new_17;
wire [0:0] new_18;
assign new_18 = i[416] ? 0 : 1;
assign new_17 = i[27] ? 0 : 1;
assign new_16 = i[495] ? 1 : 1;
assign new_15 = i[266] ? 0 : 1;
assign new_14 = i[524] ? 1 : 1;
assign new_13 = i[510] ? 1 : 0;
assign new_11 = i[247] ? new_17 : new_18;
assign new_10 = i[34] ? new_15 : new_16;
assign new_9 = i[532] ? new_13 : new_14;
assign new_8 = i[374] ? new_11 : 0;
assign new_7 = i[515] ? new_9 : new_10;
assign new_5 = i[525] ? new_7 : new_8;
assign new_3 = i[497] ? new_5 : 0;
assign new_1 = i[498] ? new_3 : 0;
assign o = i[534] ? new_1 : 0;


endmodule
