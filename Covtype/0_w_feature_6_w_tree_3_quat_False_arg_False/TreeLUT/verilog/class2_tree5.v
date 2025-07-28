module class2_tree5(input wire [534:0] i, output wire [1:0] o);

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
wire [1:0] new_17;
wire [1:0] new_18;
wire [1:0] new_19;
wire [1:0] new_20;
wire [1:0] new_21;
wire [1:0] new_23;
wire [1:0] new_24;
assign new_24 = i[406] ? 0 : 0;
assign new_23 = i[42] ? 0 : 1;
assign new_21 = i[489] ? 0 : 0;
assign new_20 = i[479] ? 2 : 0;
assign new_19 = i[320] ? 0 : 1;
assign new_18 = i[355] ? 0 : 1;
assign new_17 = i[516] ? 0 : 0;
assign new_15 = i[372] ? new_23 : new_24;
assign new_14 = i[215] ? new_21 : 0;
assign new_13 = i[476] ? new_19 : new_20;
assign new_11 = i[506] ? new_17 : new_18;
assign new_10 = i[130] ? new_15 : 0;
assign new_9 = i[120] ? new_13 : new_14;
assign new_7 = i[515] ? new_11 : 0;
assign new_6 = i[348] ? new_9 : new_10;
assign new_5 = i[522] ? new_7 : 0;
assign new_3 = i[523] ? new_5 : new_6;
assign new_1 = i[524] ? new_3 : 0;
assign o = i[495] ? new_1 : 0;


endmodule
