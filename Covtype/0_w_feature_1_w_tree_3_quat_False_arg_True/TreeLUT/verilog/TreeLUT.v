module TreeLUT(input wire [53:0] i, output wire [2:0] o);

wire [41:0] treelut_output;

wire [50:0] binary_features;

assign binary_features[0] = (i[0:0] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[1] = (i[1:1] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[2] = (i[2:2] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[3] = (i[3:3] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[4] = (i[4:4] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[5] = (i[5:5] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[6] = (i[6:6] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[7] = (i[7:7] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[8] = (i[8:8] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[9] = (i[9:9] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[10] = (i[10:10] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[11] = (i[11:11] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[12] = (i[12:12] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[13] = (i[13:13] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[14] = (i[14:14] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[15] = (i[15:15] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[16] = (i[16:16] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[17] = (i[19:19] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[18] = (i[20:20] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[19] = (i[21:21] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[20] = (i[22:22] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[21] = (i[23:23] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[22] = (i[24:24] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[23] = (i[26:26] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[24] = (i[27:27] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[25] = (i[28:28] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[26] = (i[29:29] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[27] = (i[30:30] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[28] = (i[31:31] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[29] = (i[32:32] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[30] = (i[33:33] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[31] = (i[34:34] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[32] = (i[35:35] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[33] = (i[36:36] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[34] = (i[37:37] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[35] = (i[38:38] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[36] = (i[39:39] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[37] = (i[40:40] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[38] = (i[41:41] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[39] = (i[42:42] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[40] = (i[43:43] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[41] = (i[44:44] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[42] = (i[45:45] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[43] = (i[46:46] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[44] = (i[47:47] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[45] = (i[48:48] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[46] = (i[49:49] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[47] = (i[50:50] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[48] = (i[51:51] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[49] = (i[52:52] < (1'd1))? 1'b1 : 1'b0;
assign binary_features[50] = (i[53:53] < (1'd1))? 1'b1 : 1'b0;


wire [105:0] trees_output;

class0_tree0 class0_tree0_inst(.i(binary_features), .o(trees_output[2:0]));
class0_tree1 class0_tree1_inst(.i(binary_features), .o(trees_output[5:3]));
class0_tree2 class0_tree2_inst(.i(binary_features), .o(trees_output[7:6]));
class0_tree3 class0_tree3_inst(.i(binary_features), .o(trees_output[9:8]));
class0_tree4 class0_tree4_inst(.i(binary_features), .o(trees_output[11:10]));
class0_tree5 class0_tree5_inst(.i(binary_features), .o(trees_output[13:12]));
class0_tree6 class0_tree6_inst(.i(binary_features), .o(trees_output[14:14]));
class1_tree0 class1_tree0_inst(.i(binary_features), .o(trees_output[17:15]));
class1_tree1 class1_tree1_inst(.i(binary_features), .o(trees_output[19:18]));
class1_tree2 class1_tree2_inst(.i(binary_features), .o(trees_output[21:20]));
class1_tree3 class1_tree3_inst(.i(binary_features), .o(trees_output[23:22]));
class1_tree4 class1_tree4_inst(.i(binary_features), .o(trees_output[25:24]));
class1_tree5 class1_tree5_inst(.i(binary_features), .o(trees_output[27:26]));
class1_tree6 class1_tree6_inst(.i(binary_features), .o(trees_output[29:28]));
class2_tree0 class2_tree0_inst(.i(binary_features), .o(trees_output[32:30]));
class2_tree1 class2_tree1_inst(.i(binary_features), .o(trees_output[34:33]));
class2_tree2 class2_tree2_inst(.i(binary_features), .o(trees_output[37:35]));
class2_tree3 class2_tree3_inst(.i(binary_features), .o(trees_output[39:38]));
class2_tree4 class2_tree4_inst(.i(binary_features), .o(trees_output[40:40]));
class2_tree5 class2_tree5_inst(.i(binary_features), .o(trees_output[41:41]));
class2_tree6 class2_tree6_inst(.i(binary_features), .o(trees_output[43:42]));
class3_tree0 class3_tree0_inst(.i(binary_features), .o(trees_output[46:44]));
class3_tree1 class3_tree1_inst(.i(binary_features), .o(trees_output[48:47]));
class3_tree2 class3_tree2_inst(.i(binary_features), .o(trees_output[50:49]));
class3_tree3 class3_tree3_inst(.i(binary_features), .o(trees_output[52:51]));
class3_tree4 class3_tree4_inst(.i(binary_features), .o(trees_output[54:53]));
class3_tree5 class3_tree5_inst(.i(binary_features), .o(trees_output[55:55]));
class3_tree6 class3_tree6_inst(.i(binary_features), .o(trees_output[57:56]));
class4_tree0 class4_tree0_inst(.i(binary_features), .o(trees_output[60:58]));
class4_tree1 class4_tree1_inst(.i(binary_features), .o(trees_output[62:61]));
class4_tree2 class4_tree2_inst(.i(binary_features), .o(trees_output[64:63]));
class4_tree3 class4_tree3_inst(.i(binary_features), .o(trees_output[66:65]));
class4_tree4 class4_tree4_inst(.i(binary_features), .o(trees_output[69:67]));
class4_tree5 class4_tree5_inst(.i(binary_features), .o(trees_output[71:70]));
class4_tree6 class4_tree6_inst(.i(binary_features), .o(trees_output[72:72]));
class5_tree0 class5_tree0_inst(.i(binary_features), .o(trees_output[75:73]));
class5_tree1 class5_tree1_inst(.i(binary_features), .o(trees_output[77:76]));
class5_tree2 class5_tree2_inst(.i(binary_features), .o(trees_output[80:78]));
class5_tree3 class5_tree3_inst(.i(binary_features), .o(trees_output[82:81]));
class5_tree4 class5_tree4_inst(.i(binary_features), .o(trees_output[84:83]));
class5_tree5 class5_tree5_inst(.i(binary_features), .o(trees_output[86:85]));
class5_tree6 class5_tree6_inst(.i(binary_features), .o(trees_output[87:87]));
class6_tree0 class6_tree0_inst(.i(binary_features), .o(trees_output[90:88]));
class6_tree1 class6_tree1_inst(.i(binary_features), .o(trees_output[93:91]));
class6_tree2 class6_tree2_inst(.i(binary_features), .o(trees_output[95:94]));
class6_tree3 class6_tree3_inst(.i(binary_features), .o(trees_output[98:96]));
class6_tree4 class6_tree4_inst(.i(binary_features), .o(trees_output[100:99]));
class6_tree5 class6_tree5_inst(.i(binary_features), .o(trees_output[103:101]));
class6_tree6 class6_tree6_inst(.i(binary_features), .o(trees_output[105:104]));

class0_adder class0_adder_inst(.i(trees_output[14:0]), .o(treelut_output[5:0]));
class1_adder class1_adder_inst(.i(trees_output[29:15]), .o(treelut_output[11:6]));
class2_adder class2_adder_inst(.i(trees_output[43:30]), .o(treelut_output[17:12]));
class3_adder class3_adder_inst(.i(trees_output[57:44]), .o(treelut_output[23:18]));
class4_adder class4_adder_inst(.i(trees_output[72:58]), .o(treelut_output[29:24]));
class5_adder class5_adder_inst(.i(trees_output[87:73]), .o(treelut_output[35:30]));
class6_adder class6_adder_inst(.i(trees_output[105:88]), .o(treelut_output[41:36]));


argmax argmax_inst(treelut_output, o);


endmodule


module argmax(input wire [41:0] i, output wire [2:0] o);

wire [5:0] sum [0:6];
assign sum[0] = i[5:0];
assign sum[1] = i[11:6];
assign sum[2] = i[17:12];
assign sum[3] = i[23:18];
assign sum[4] = i[29:24];
assign sum[5] = i[35:30];
assign sum[6] = i[41:36];

assign o = ((sum[0] >= sum[1]) & (sum[0] >= sum[2]) & (sum[0] >= sum[3]) & (sum[0] >= sum[4]) & (sum[0] >= sum[5]) & (sum[0] >= sum[6])) ? 3'd0 :
 ((sum[1] >= sum[0]) & (sum[1] >= sum[2]) & (sum[1] >= sum[3]) & (sum[1] >= sum[4]) & (sum[1] >= sum[5]) & (sum[1] >= sum[6])) ? 3'd1 :
 ((sum[2] >= sum[0]) & (sum[2] >= sum[1]) & (sum[2] >= sum[3]) & (sum[2] >= sum[4]) & (sum[2] >= sum[5]) & (sum[2] >= sum[6])) ? 3'd2 :
 ((sum[3] >= sum[0]) & (sum[3] >= sum[1]) & (sum[3] >= sum[2]) & (sum[3] >= sum[4]) & (sum[3] >= sum[5]) & (sum[3] >= sum[6])) ? 3'd3 :
 ((sum[4] >= sum[0]) & (sum[4] >= sum[1]) & (sum[4] >= sum[2]) & (sum[4] >= sum[3]) & (sum[4] >= sum[5]) & (sum[4] >= sum[6])) ? 3'd4 :
 ((sum[5] >= sum[0]) & (sum[5] >= sum[1]) & (sum[5] >= sum[2]) & (sum[5] >= sum[3]) & (sum[5] >= sum[4]) & (sum[5] >= sum[6])) ? 3'd5 :
 3'd6;
endmodule
