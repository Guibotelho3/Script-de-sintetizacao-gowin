module TreeLUT(input wire [41:0] i, output wire [0:0] o);

wire [9:0] treelut_output;

wire [82:0] binary_features;

assign binary_features[0] = (i[2:0] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[1] = (i[2:0] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[2] = (i[2:0] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[3] = (i[2:0] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[4] = (i[2:0] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[5] = (i[2:0] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[6] = (i[2:0] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[7] = (i[5:3] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[8] = (i[5:3] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[9] = (i[5:3] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[10] = (i[5:3] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[11] = (i[5:3] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[12] = (i[5:3] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[13] = (i[5:3] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[14] = (i[8:6] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[15] = (i[8:6] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[16] = (i[8:6] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[17] = (i[8:6] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[18] = (i[8:6] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[19] = (i[8:6] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[20] = (i[8:6] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[21] = (i[11:9] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[22] = (i[11:9] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[23] = (i[11:9] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[24] = (i[11:9] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[25] = (i[11:9] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[26] = (i[11:9] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[27] = (i[14:12] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[28] = (i[14:12] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[29] = (i[14:12] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[30] = (i[14:12] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[31] = (i[14:12] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[32] = (i[14:12] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[33] = (i[17:15] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[34] = (i[17:15] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[35] = (i[17:15] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[36] = (i[17:15] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[37] = (i[17:15] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[38] = (i[17:15] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[39] = (i[20:18] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[40] = (i[20:18] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[41] = (i[20:18] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[42] = (i[20:18] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[43] = (i[20:18] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[44] = (i[20:18] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[45] = (i[20:18] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[46] = (i[23:21] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[47] = (i[23:21] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[48] = (i[23:21] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[49] = (i[23:21] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[50] = (i[23:21] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[51] = (i[26:24] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[52] = (i[26:24] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[53] = (i[26:24] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[54] = (i[26:24] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[55] = (i[29:27] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[56] = (i[32:30] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[57] = (i[32:30] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[58] = (i[32:30] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[59] = (i[32:30] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[60] = (i[32:30] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[61] = (i[32:30] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[62] = (i[35:33] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[63] = (i[35:33] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[64] = (i[35:33] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[65] = (i[35:33] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[66] = (i[35:33] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[67] = (i[35:33] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[68] = (i[35:33] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[69] = (i[38:36] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[70] = (i[38:36] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[71] = (i[38:36] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[72] = (i[38:36] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[73] = (i[38:36] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[74] = (i[38:36] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[75] = (i[38:36] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[76] = (i[41:39] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[77] = (i[41:39] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[78] = (i[41:39] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[79] = (i[41:39] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[80] = (i[41:39] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[81] = (i[41:39] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[82] = (i[41:39] < (3'd7))? 1'b1 : 1'b0;


wire [27:0] trees_output;

class0_tree0 class0_tree0_inst(.i(binary_features), .o(trees_output[1:0]));
class0_tree1 class0_tree1_inst(.i(binary_features), .o(trees_output[3:2]));
class0_tree2 class0_tree2_inst(.i(binary_features), .o(trees_output[5:4]));
class0_tree3 class0_tree3_inst(.i(binary_features), .o(trees_output[7:6]));
class0_tree4 class0_tree4_inst(.i(binary_features), .o(trees_output[9:8]));
class0_tree5 class0_tree5_inst(.i(binary_features), .o(trees_output[11:10]));
class0_tree6 class0_tree6_inst(.i(binary_features), .o(trees_output[13:12]));
class1_tree0 class1_tree0_inst(.i(binary_features), .o(trees_output[15:14]));
class1_tree1 class1_tree1_inst(.i(binary_features), .o(trees_output[17:16]));
class1_tree2 class1_tree2_inst(.i(binary_features), .o(trees_output[19:18]));
class1_tree3 class1_tree3_inst(.i(binary_features), .o(trees_output[21:20]));
class1_tree4 class1_tree4_inst(.i(binary_features), .o(trees_output[23:22]));
class1_tree5 class1_tree5_inst(.i(binary_features), .o(trees_output[25:24]));
class1_tree6 class1_tree6_inst(.i(binary_features), .o(trees_output[27:26]));

class0_adder class0_adder_inst(.i(trees_output[13:0]), .o(treelut_output[4:0]));
class1_adder class1_adder_inst(.i(trees_output[27:14]), .o(treelut_output[9:5]));


argmax argmax_inst(treelut_output, o);


endmodule


module argmax(input wire [9:0] i, output wire [0:0] o);

wire [4:0] sum [0:1];
assign sum[0] = i[4:0];
assign sum[1] = i[9:5];

assign o = ((sum[0] >= sum[1])) ? 1'd0 :
 1'd1;
endmodule
