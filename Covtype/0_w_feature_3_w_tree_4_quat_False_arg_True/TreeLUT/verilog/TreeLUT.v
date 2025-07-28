module TreeLUT(input wire [161:0] i, output wire [2:0] o);

wire [48:0] treelut_output;

wire [102:0] binary_features;

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
assign binary_features[19] = (i[11:9] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[20] = (i[11:9] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[21] = (i[11:9] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[22] = (i[11:9] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[23] = (i[11:9] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[24] = (i[11:9] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[25] = (i[11:9] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[26] = (i[14:12] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[27] = (i[14:12] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[28] = (i[14:12] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[29] = (i[14:12] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[30] = (i[14:12] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[31] = (i[14:12] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[32] = (i[14:12] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[33] = (i[17:15] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[34] = (i[17:15] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[35] = (i[17:15] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[36] = (i[17:15] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[37] = (i[17:15] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[38] = (i[17:15] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[39] = (i[17:15] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[40] = (i[20:18] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[41] = (i[20:18] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[42] = (i[20:18] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[43] = (i[20:18] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[44] = (i[20:18] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[45] = (i[23:21] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[46] = (i[23:21] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[47] = (i[23:21] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[48] = (i[23:21] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[49] = (i[26:24] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[50] = (i[26:24] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[51] = (i[26:24] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[52] = (i[26:24] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[53] = (i[26:24] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[54] = (i[26:24] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[55] = (i[26:24] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[56] = (i[29:27] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[57] = (i[29:27] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[58] = (i[29:27] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[59] = (i[29:27] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[60] = (i[29:27] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[61] = (i[29:27] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[62] = (i[29:27] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[63] = (i[32:30] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[64] = (i[35:33] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[65] = (i[38:36] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[66] = (i[41:39] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[67] = (i[44:42] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[68] = (i[47:45] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[69] = (i[50:48] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[70] = (i[59:57] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[71] = (i[62:60] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[72] = (i[65:63] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[73] = (i[68:66] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[74] = (i[71:69] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[75] = (i[74:72] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[76] = (i[80:78] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[77] = (i[83:81] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[78] = (i[86:84] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[79] = (i[89:87] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[80] = (i[92:90] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[81] = (i[95:93] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[82] = (i[98:96] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[83] = (i[101:99] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[84] = (i[104:102] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[85] = (i[110:108] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[86] = (i[113:111] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[87] = (i[116:114] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[88] = (i[119:117] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[89] = (i[122:120] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[90] = (i[125:123] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[91] = (i[128:126] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[92] = (i[131:129] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[93] = (i[134:132] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[94] = (i[137:135] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[95] = (i[140:138] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[96] = (i[143:141] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[97] = (i[146:144] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[98] = (i[149:147] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[99] = (i[152:150] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[100] = (i[155:153] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[101] = (i[158:156] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[102] = (i[161:159] < (3'd7))? 1'b1 : 1'b0;


wire [140:0] trees_output;

class0_tree0 class0_tree0_inst(.i(binary_features), .o(trees_output[2:0]));
class0_tree1 class0_tree1_inst(.i(binary_features), .o(trees_output[5:3]));
class0_tree2 class0_tree2_inst(.i(binary_features), .o(trees_output[8:6]));
class0_tree3 class0_tree3_inst(.i(binary_features), .o(trees_output[10:9]));
class0_tree4 class0_tree4_inst(.i(binary_features), .o(trees_output[13:11]));
class0_tree5 class0_tree5_inst(.i(binary_features), .o(trees_output[15:14]));
class0_tree6 class0_tree6_inst(.i(binary_features), .o(trees_output[18:16]));
class1_tree0 class1_tree0_inst(.i(binary_features), .o(trees_output[21:19]));
class1_tree1 class1_tree1_inst(.i(binary_features), .o(trees_output[24:22]));
class1_tree2 class1_tree2_inst(.i(binary_features), .o(trees_output[26:25]));
class1_tree3 class1_tree3_inst(.i(binary_features), .o(trees_output[29:27]));
class1_tree4 class1_tree4_inst(.i(binary_features), .o(trees_output[31:30]));
class1_tree5 class1_tree5_inst(.i(binary_features), .o(trees_output[34:32]));
class1_tree6 class1_tree6_inst(.i(binary_features), .o(trees_output[37:35]));
class2_tree0 class2_tree0_inst(.i(binary_features), .o(trees_output[40:38]));
class2_tree1 class2_tree1_inst(.i(binary_features), .o(trees_output[43:41]));
class2_tree2 class2_tree2_inst(.i(binary_features), .o(trees_output[47:44]));
class2_tree3 class2_tree3_inst(.i(binary_features), .o(trees_output[49:48]));
class2_tree4 class2_tree4_inst(.i(binary_features), .o(trees_output[51:50]));
class2_tree5 class2_tree5_inst(.i(binary_features), .o(trees_output[52:52]));
class2_tree6 class2_tree6_inst(.i(binary_features), .o(trees_output[54:53]));
class3_tree0 class3_tree0_inst(.i(binary_features), .o(trees_output[57:55]));
class3_tree1 class3_tree1_inst(.i(binary_features), .o(trees_output[60:58]));
class3_tree2 class3_tree2_inst(.i(binary_features), .o(trees_output[62:61]));
class3_tree3 class3_tree3_inst(.i(binary_features), .o(trees_output[65:63]));
class3_tree4 class3_tree4_inst(.i(binary_features), .o(trees_output[67:66]));
class3_tree5 class3_tree5_inst(.i(binary_features), .o(trees_output[69:68]));
class3_tree6 class3_tree6_inst(.i(binary_features), .o(trees_output[72:70]));
class4_tree0 class4_tree0_inst(.i(binary_features), .o(trees_output[75:73]));
class4_tree1 class4_tree1_inst(.i(binary_features), .o(trees_output[78:76]));
class4_tree2 class4_tree2_inst(.i(binary_features), .o(trees_output[81:79]));
class4_tree3 class4_tree3_inst(.i(binary_features), .o(trees_output[85:82]));
class4_tree4 class4_tree4_inst(.i(binary_features), .o(trees_output[88:86]));
class4_tree5 class4_tree5_inst(.i(binary_features), .o(trees_output[91:89]));
class4_tree6 class4_tree6_inst(.i(binary_features), .o(trees_output[93:92]));
class5_tree0 class5_tree0_inst(.i(binary_features), .o(trees_output[96:94]));
class5_tree1 class5_tree1_inst(.i(binary_features), .o(trees_output[99:97]));
class5_tree2 class5_tree2_inst(.i(binary_features), .o(trees_output[103:100]));
class5_tree3 class5_tree3_inst(.i(binary_features), .o(trees_output[107:104]));
class5_tree4 class5_tree4_inst(.i(binary_features), .o(trees_output[111:108]));
class5_tree5 class5_tree5_inst(.i(binary_features), .o(trees_output[115:112]));
class5_tree6 class5_tree6_inst(.i(binary_features), .o(trees_output[118:116]));
class6_tree0 class6_tree0_inst(.i(binary_features), .o(trees_output[121:119]));
class6_tree1 class6_tree1_inst(.i(binary_features), .o(trees_output[124:122]));
class6_tree2 class6_tree2_inst(.i(binary_features), .o(trees_output[127:125]));
class6_tree3 class6_tree3_inst(.i(binary_features), .o(trees_output[130:128]));
class6_tree4 class6_tree4_inst(.i(binary_features), .o(trees_output[134:131]));
class6_tree5 class6_tree5_inst(.i(binary_features), .o(trees_output[137:135]));
class6_tree6 class6_tree6_inst(.i(binary_features), .o(trees_output[140:138]));

class0_adder class0_adder_inst(.i(trees_output[18:0]), .o(treelut_output[6:0]));
class1_adder class1_adder_inst(.i(trees_output[37:19]), .o(treelut_output[13:7]));
class2_adder class2_adder_inst(.i(trees_output[54:38]), .o(treelut_output[20:14]));
class3_adder class3_adder_inst(.i(trees_output[72:55]), .o(treelut_output[27:21]));
class4_adder class4_adder_inst(.i(trees_output[93:73]), .o(treelut_output[34:28]));
class5_adder class5_adder_inst(.i(trees_output[118:94]), .o(treelut_output[41:35]));
class6_adder class6_adder_inst(.i(trees_output[140:119]), .o(treelut_output[48:42]));


argmax argmax_inst(treelut_output, o);


endmodule


module argmax(input wire [48:0] i, output wire [2:0] o);

wire [6:0] sum [0:6];
assign sum[0] = i[6:0];
assign sum[1] = i[13:7];
assign sum[2] = i[20:14];
assign sum[3] = i[27:21];
assign sum[4] = i[34:28];
assign sum[5] = i[41:35];
assign sum[6] = i[48:42];

assign o = ((sum[0] >= sum[1]) & (sum[0] >= sum[2]) & (sum[0] >= sum[3]) & (sum[0] >= sum[4]) & (sum[0] >= sum[5]) & (sum[0] >= sum[6])) ? 3'd0 :
 ((sum[1] >= sum[0]) & (sum[1] >= sum[2]) & (sum[1] >= sum[3]) & (sum[1] >= sum[4]) & (sum[1] >= sum[5]) & (sum[1] >= sum[6])) ? 3'd1 :
 ((sum[2] >= sum[0]) & (sum[2] >= sum[1]) & (sum[2] >= sum[3]) & (sum[2] >= sum[4]) & (sum[2] >= sum[5]) & (sum[2] >= sum[6])) ? 3'd2 :
 ((sum[3] >= sum[0]) & (sum[3] >= sum[1]) & (sum[3] >= sum[2]) & (sum[3] >= sum[4]) & (sum[3] >= sum[5]) & (sum[3] >= sum[6])) ? 3'd3 :
 ((sum[4] >= sum[0]) & (sum[4] >= sum[1]) & (sum[4] >= sum[2]) & (sum[4] >= sum[3]) & (sum[4] >= sum[5]) & (sum[4] >= sum[6])) ? 3'd4 :
 ((sum[5] >= sum[0]) & (sum[5] >= sum[1]) & (sum[5] >= sum[2]) & (sum[5] >= sum[3]) & (sum[5] >= sum[4]) & (sum[5] >= sum[6])) ? 3'd5 :
 3'd6;
endmodule
