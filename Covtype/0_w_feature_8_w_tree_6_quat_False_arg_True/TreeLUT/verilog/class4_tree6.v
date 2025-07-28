module class4_tree6(input wire [1237:0] i, output wire [1:0] o);

wire [1:0] new_1;
wire [1:0] new_3;
wire [1:0] new_5;
wire [1:0] new_7;
wire [1:0] new_9;
wire [1:0] new_11;
assign new_11 = i[850] ? 3 : 3;
assign new_9 = i[1208] ? new_11 : 0;
assign new_7 = i[1233] ? new_9 : 0;
assign new_5 = i[1232] ? new_7 : 0;
assign new_3 = i[1217] ? new_5 : 0;
assign new_1 = i[1235] ? new_3 : 0;
assign o = i[1237] ? new_1 : 0;


endmodule
