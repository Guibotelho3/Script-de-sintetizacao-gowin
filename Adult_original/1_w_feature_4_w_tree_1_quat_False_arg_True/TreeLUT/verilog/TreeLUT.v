module TreeLUT(input wire [55:0] i, output wire [0:0] o);

wire [7:0] treelut_output;

wire [135:0] binary_features;

assign binary_features[0] = (i[3:0] < (4'd1))? 1'b1 : 1'b0;
assign binary_features[1] = (i[3:0] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[2] = (i[3:0] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[3] = (i[3:0] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[4] = (i[3:0] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[5] = (i[3:0] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[6] = (i[3:0] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[7] = (i[3:0] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[8] = (i[3:0] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[9] = (i[3:0] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[10] = (i[3:0] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[11] = (i[3:0] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[12] = (i[3:0] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[13] = (i[3:0] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[14] = (i[7:4] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[15] = (i[7:4] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[16] = (i[7:4] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[17] = (i[7:4] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[18] = (i[7:4] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[19] = (i[7:4] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[20] = (i[7:4] < (4'd13))? 1'b1 : 1'b0;
assign binary_features[21] = (i[11:8] < (4'd1))? 1'b1 : 1'b0;
assign binary_features[22] = (i[11:8] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[23] = (i[11:8] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[24] = (i[11:8] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[25] = (i[11:8] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[26] = (i[11:8] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[27] = (i[11:8] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[28] = (i[11:8] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[29] = (i[11:8] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[30] = (i[11:8] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[31] = (i[11:8] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[32] = (i[11:8] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[33] = (i[11:8] < (4'd13))? 1'b1 : 1'b0;
assign binary_features[34] = (i[11:8] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[35] = (i[11:8] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[36] = (i[15:12] < (4'd1))? 1'b1 : 1'b0;
assign binary_features[37] = (i[15:12] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[38] = (i[15:12] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[39] = (i[15:12] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[40] = (i[15:12] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[41] = (i[15:12] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[42] = (i[15:12] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[43] = (i[15:12] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[44] = (i[15:12] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[45] = (i[15:12] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[46] = (i[15:12] < (4'd13))? 1'b1 : 1'b0;
assign binary_features[47] = (i[15:12] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[48] = (i[19:16] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[49] = (i[19:16] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[50] = (i[19:16] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[51] = (i[19:16] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[52] = (i[19:16] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[53] = (i[19:16] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[54] = (i[19:16] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[55] = (i[19:16] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[56] = (i[19:16] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[57] = (i[19:16] < (4'd13))? 1'b1 : 1'b0;
assign binary_features[58] = (i[19:16] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[59] = (i[23:20] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[60] = (i[23:20] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[61] = (i[23:20] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[62] = (i[23:20] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[63] = (i[23:20] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[64] = (i[23:20] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[65] = (i[27:24] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[66] = (i[27:24] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[67] = (i[27:24] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[68] = (i[27:24] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[69] = (i[27:24] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[70] = (i[27:24] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[71] = (i[27:24] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[72] = (i[27:24] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[73] = (i[27:24] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[74] = (i[27:24] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[75] = (i[27:24] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[76] = (i[27:24] < (4'd13))? 1'b1 : 1'b0;
assign binary_features[77] = (i[27:24] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[78] = (i[31:28] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[79] = (i[31:28] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[80] = (i[31:28] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[81] = (i[31:28] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[82] = (i[31:28] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[83] = (i[35:32] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[84] = (i[35:32] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[85] = (i[35:32] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[86] = (i[35:32] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[87] = (i[39:36] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[88] = (i[43:40] < (4'd1))? 1'b1 : 1'b0;
assign binary_features[89] = (i[43:40] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[90] = (i[43:40] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[91] = (i[43:40] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[92] = (i[43:40] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[93] = (i[43:40] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[94] = (i[43:40] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[95] = (i[43:40] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[96] = (i[43:40] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[97] = (i[43:40] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[98] = (i[43:40] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[99] = (i[43:40] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[100] = (i[43:40] < (4'd15))? 1'b1 : 1'b0;
assign binary_features[101] = (i[47:44] < (4'd1))? 1'b1 : 1'b0;
assign binary_features[102] = (i[47:44] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[103] = (i[47:44] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[104] = (i[47:44] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[105] = (i[47:44] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[106] = (i[47:44] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[107] = (i[47:44] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[108] = (i[47:44] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[109] = (i[47:44] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[110] = (i[47:44] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[111] = (i[47:44] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[112] = (i[47:44] < (4'd13))? 1'b1 : 1'b0;
assign binary_features[113] = (i[47:44] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[114] = (i[51:48] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[115] = (i[51:48] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[116] = (i[51:48] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[117] = (i[51:48] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[118] = (i[51:48] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[119] = (i[51:48] < (4'd7))? 1'b1 : 1'b0;
assign binary_features[120] = (i[51:48] < (4'd8))? 1'b1 : 1'b0;
assign binary_features[121] = (i[51:48] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[122] = (i[51:48] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[123] = (i[51:48] < (4'd11))? 1'b1 : 1'b0;
assign binary_features[124] = (i[51:48] < (4'd12))? 1'b1 : 1'b0;
assign binary_features[125] = (i[51:48] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[126] = (i[55:52] < (4'd1))? 1'b1 : 1'b0;
assign binary_features[127] = (i[55:52] < (4'd2))? 1'b1 : 1'b0;
assign binary_features[128] = (i[55:52] < (4'd3))? 1'b1 : 1'b0;
assign binary_features[129] = (i[55:52] < (4'd4))? 1'b1 : 1'b0;
assign binary_features[130] = (i[55:52] < (4'd5))? 1'b1 : 1'b0;
assign binary_features[131] = (i[55:52] < (4'd6))? 1'b1 : 1'b0;
assign binary_features[132] = (i[55:52] < (4'd9))? 1'b1 : 1'b0;
assign binary_features[133] = (i[55:52] < (4'd10))? 1'b1 : 1'b0;
assign binary_features[134] = (i[55:52] < (4'd14))? 1'b1 : 1'b0;
assign binary_features[135] = (i[55:52] < (4'd15))? 1'b1 : 1'b0;


wire [13:0] trees_output;

class0_tree0 class0_tree0_inst(.i(binary_features), .o(trees_output[0:0]));
class0_tree1 class0_tree1_inst(.i(binary_features), .o(trees_output[1:1]));
class0_tree2 class0_tree2_inst(.i(binary_features), .o(trees_output[2:2]));
class0_tree3 class0_tree3_inst(.i(binary_features), .o(trees_output[3:3]));
class0_tree4 class0_tree4_inst(.i(binary_features), .o(trees_output[4:4]));
class0_tree5 class0_tree5_inst(.i(binary_features), .o(trees_output[5:5]));
class0_tree6 class0_tree6_inst(.i(binary_features), .o(trees_output[6:6]));
class1_tree0 class1_tree0_inst(.i(binary_features), .o(trees_output[7:7]));
class1_tree1 class1_tree1_inst(.i(binary_features), .o(trees_output[8:8]));
class1_tree2 class1_tree2_inst(.i(binary_features), .o(trees_output[9:9]));
class1_tree3 class1_tree3_inst(.i(binary_features), .o(trees_output[10:10]));
class1_tree4 class1_tree4_inst(.i(binary_features), .o(trees_output[11:11]));
class1_tree5 class1_tree5_inst(.i(binary_features), .o(trees_output[12:12]));
class1_tree6 class1_tree6_inst(.i(binary_features), .o(trees_output[13:13]));

class0_adder class0_adder_inst(.i(trees_output[6:0]), .o(treelut_output[3:0]));
class1_adder class1_adder_inst(.i(trees_output[13:7]), .o(treelut_output[7:4]));


argmax argmax_inst(treelut_output, o);


endmodule


module argmax(input wire [7:0] i, output wire [0:0] o);

wire [3:0] sum [0:1];
assign sum[0] = i[3:0];
assign sum[1] = i[7:4];

assign o = ((sum[0] >= sum[1])) ? 1'd0 :
 1'd1;
endmodule
