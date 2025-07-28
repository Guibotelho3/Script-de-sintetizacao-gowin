module class4_tree6(input wire [534:0] i, output wire [0:0] o);

wire [0:0] new_1;
wire [0:0] new_3;
wire [0:0] new_5;
wire [0:0] new_7;
wire [0:0] new_9;
wire [0:0] new_11;
wire [0:0] new_12;
assign new_12 = i[403] ? 0 : 0;
assign new_11 = i[512] ? 1 : 0;
assign new_9 = i[158] ? new_11 : new_12;
assign new_7 = i[530] ? new_9 : 0;
assign new_5 = i[529] ? new_7 : 0;
assign new_3 = i[532] ? new_5 : 0;
assign new_1 = i[514] ? new_3 : 0;
assign o = i[534] ? new_1 : 0;


endmodule
