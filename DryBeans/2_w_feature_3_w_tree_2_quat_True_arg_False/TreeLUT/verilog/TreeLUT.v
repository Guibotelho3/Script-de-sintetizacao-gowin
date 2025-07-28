module TreeLUT(input wire [127:0] all_features,output wire [27:0] o);

wire [47:0] i;


 quantization quantization_inst(all_features, i);

wire [42:0] binary_features;

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
assign binary_features[21] = (i[11:9] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[22] = (i[11:9] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[23] = (i[11:9] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[24] = (i[11:9] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[25] = (i[11:9] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[26] = (i[11:9] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[27] = (i[11:9] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[28] = (i[14:12] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[29] = (i[20:18] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[30] = (i[20:18] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[31] = (i[20:18] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[32] = (i[20:18] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[33] = (i[20:18] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[34] = (i[20:18] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[35] = (i[20:18] < (3'd7))? 1'b1 : 1'b0;
assign binary_features[36] = (i[23:21] < (3'd1))? 1'b1 : 1'b0;
assign binary_features[37] = (i[23:21] < (3'd2))? 1'b1 : 1'b0;
assign binary_features[38] = (i[23:21] < (3'd3))? 1'b1 : 1'b0;
assign binary_features[39] = (i[23:21] < (3'd4))? 1'b1 : 1'b0;
assign binary_features[40] = (i[23:21] < (3'd5))? 1'b1 : 1'b0;
assign binary_features[41] = (i[23:21] < (3'd6))? 1'b1 : 1'b0;
assign binary_features[42] = (i[23:21] < (3'd7))? 1'b1 : 1'b0;


wire [57:0] trees_output;

class0_tree0 class0_tree0_inst(.i(binary_features), .o(trees_output[1:0]));
class0_tree1 class0_tree1_inst(.i(binary_features), .o(trees_output[2:2]));
class0_tree2 class0_tree2_inst(.i(binary_features), .o(trees_output[3:3]));
class0_tree3 class0_tree3_inst(.i(binary_features), .o(trees_output[4:4]));
class0_tree4 class0_tree4_inst(.i(binary_features), .o(trees_output[5:5]));
class0_tree5 class0_tree5_inst(.i(binary_features), .o(trees_output[6:6]));
class0_tree6 class0_tree6_inst(.i(binary_features), .o(trees_output[7:7]));
class1_tree0 class1_tree0_inst(.i(binary_features), .o(trees_output[9:8]));
class1_tree1 class1_tree1_inst(.i(binary_features), .o(trees_output[11:10]));
class1_tree2 class1_tree2_inst(.i(binary_features), .o(trees_output[12:12]));
class1_tree3 class1_tree3_inst(.i(binary_features), .o(trees_output[13:13]));
class1_tree4 class1_tree4_inst(.i(binary_features), .o(trees_output[14:14]));
class1_tree5 class1_tree5_inst(.i(binary_features), .o(trees_output[15:15]));
class1_tree6 class1_tree6_inst(.i(binary_features), .o(trees_output[16:16]));
class2_tree0 class2_tree0_inst(.i(binary_features), .o(trees_output[18:17]));
class2_tree1 class2_tree1_inst(.i(binary_features), .o(trees_output[19:19]));
class2_tree2 class2_tree2_inst(.i(binary_features), .o(trees_output[20:20]));
class2_tree3 class2_tree3_inst(.i(binary_features), .o(trees_output[21:21]));
class2_tree4 class2_tree4_inst(.i(binary_features), .o(trees_output[22:22]));
class2_tree5 class2_tree5_inst(.i(binary_features), .o(trees_output[23:23]));
class2_tree6 class2_tree6_inst(.i(binary_features), .o(trees_output[24:24]));
class3_tree0 class3_tree0_inst(.i(binary_features), .o(trees_output[26:25]));
class3_tree1 class3_tree1_inst(.i(binary_features), .o(trees_output[27:27]));
class3_tree2 class3_tree2_inst(.i(binary_features), .o(trees_output[28:28]));
class3_tree3 class3_tree3_inst(.i(binary_features), .o(trees_output[29:29]));
class3_tree4 class3_tree4_inst(.i(binary_features), .o(trees_output[30:30]));
class3_tree5 class3_tree5_inst(.i(binary_features), .o(trees_output[31:31]));
class3_tree6 class3_tree6_inst(.i(binary_features), .o(trees_output[32:32]));
class4_tree0 class4_tree0_inst(.i(binary_features), .o(trees_output[34:33]));
class4_tree1 class4_tree1_inst(.i(binary_features), .o(trees_output[36:35]));
class4_tree2 class4_tree2_inst(.i(binary_features), .o(trees_output[37:37]));
class4_tree3 class4_tree3_inst(.i(binary_features), .o(trees_output[38:38]));
class4_tree4 class4_tree4_inst(.i(binary_features), .o(trees_output[39:39]));
class4_tree5 class4_tree5_inst(.i(binary_features), .o(trees_output[40:40]));
class4_tree6 class4_tree6_inst(.i(binary_features), .o(trees_output[41:41]));
class5_tree0 class5_tree0_inst(.i(binary_features), .o(trees_output[43:42]));
class5_tree1 class5_tree1_inst(.i(binary_features), .o(trees_output[44:44]));
class5_tree2 class5_tree2_inst(.i(binary_features), .o(trees_output[45:45]));
class5_tree3 class5_tree3_inst(.i(binary_features), .o(trees_output[46:46]));
class5_tree4 class5_tree4_inst(.i(binary_features), .o(trees_output[47:47]));
class5_tree5 class5_tree5_inst(.i(binary_features), .o(trees_output[48:48]));
class5_tree6 class5_tree6_inst(.i(binary_features), .o(trees_output[49:49]));
class6_tree0 class6_tree0_inst(.i(binary_features), .o(trees_output[51:50]));
class6_tree1 class6_tree1_inst(.i(binary_features), .o(trees_output[52:52]));
class6_tree2 class6_tree2_inst(.i(binary_features), .o(trees_output[53:53]));
class6_tree3 class6_tree3_inst(.i(binary_features), .o(trees_output[54:54]));
class6_tree4 class6_tree4_inst(.i(binary_features), .o(trees_output[55:55]));
class6_tree5 class6_tree5_inst(.i(binary_features), .o(trees_output[56:56]));
class6_tree6 class6_tree6_inst(.i(binary_features), .o(trees_output[57:57]));

class0_adder class0_adder_inst(.i(trees_output[7:0]), .o(o[3:0]));
class1_adder class1_adder_inst(.i(trees_output[16:8]), .o(o[7:4]));
class2_adder class2_adder_inst(.i(trees_output[24:17]), .o(o[11:8]));
class3_adder class3_adder_inst(.i(trees_output[32:25]), .o(o[15:12]));
class4_adder class4_adder_inst(.i(trees_output[41:33]), .o(o[19:16]));
class5_adder class5_adder_inst(.i(trees_output[49:42]), .o(o[23:20]));
class6_adder class6_adder_inst(.i(trees_output[57:50]), .o(o[27:24]));

endmodule


module quantization(input wire [127:0] i, output wire [47:0] o);
    assign o[2:0] = (i[7:0] < 8'b00010010) ? 0 : (i[7:0] < 8'b00110110) ? 1 : (i[7:0] < 8'b01011010) ? 2 : (i[7:0] < 8'b01111110) ? 3 : (i[7:0] < 8'b10100010) ? 4 : (i[7:0] < 8'b11000110) ? 5 : (i[7:0] < 8'b11101010) ? 6 : 7;
    assign o[5:3] = (i[15:8] < 8'b00010010) ? 0 : (i[15:8] < 8'b00110110) ? 1 : (i[15:8] < 8'b01011010) ? 2 : (i[15:8] < 8'b01111110) ? 3 : (i[15:8] < 8'b10100010) ? 4 : (i[15:8] < 8'b11000110) ? 5 : (i[15:8] < 8'b11101010) ? 6 : 7;
    assign o[8:6] = (i[23:16] < 8'b00010010) ? 0 : (i[23:16] < 8'b00110110) ? 1 : (i[23:16] < 8'b01011010) ? 2 : (i[23:16] < 8'b01111110) ? 3 : (i[23:16] < 8'b10100010) ? 4 : (i[23:16] < 8'b11000110) ? 5 : (i[23:16] < 8'b11101010) ? 6 : 7;
    assign o[11:9] = (i[31:24] < 8'b00010010) ? 0 : (i[31:24] < 8'b00110110) ? 1 : (i[31:24] < 8'b01011010) ? 2 : (i[31:24] < 8'b01111110) ? 3 : (i[31:24] < 8'b10100010) ? 4 : (i[31:24] < 8'b11000110) ? 5 : (i[31:24] < 8'b11101010) ? 6 : 7;
    assign o[14:12] = i[39:32];
    assign o[17:15] = (i[47:40] < 8'b00000000) ? 0 : (i[47:40] < 8'b00000000) ? 1 : (i[47:40] < 8'b00000000) ? 2 : (i[47:40] < 8'b00000000) ? 3 : (i[47:40] < 8'b00000000) ? 4 : (i[47:40] < 8'b00000000) ? 5 : (i[47:40] < 8'b00000000) ? 6 : 7;
    assign o[20:18] = (i[55:48] < 8'b00010010) ? 0 : (i[55:48] < 8'b00110110) ? 1 : (i[55:48] < 8'b01011010) ? 2 : (i[55:48] < 8'b01111110) ? 3 : (i[55:48] < 8'b10100010) ? 4 : (i[55:48] < 8'b11000110) ? 5 : (i[55:48] < 8'b11101010) ? 6 : 7;
    assign o[23:21] = (i[63:56] < 8'b00010010) ? 0 : (i[63:56] < 8'b00110110) ? 1 : (i[63:56] < 8'b01011010) ? 2 : (i[63:56] < 8'b01111110) ? 3 : (i[63:56] < 8'b10100010) ? 4 : (i[63:56] < 8'b11000110) ? 5 : (i[63:56] < 8'b11101010) ? 6 : 7;
    assign o[26:24] = (i[71:64] < 8'b00000000) ? 0 : (i[71:64] < 8'b00000000) ? 1 : (i[71:64] < 8'b00000000) ? 2 : (i[71:64] < 8'b00000000) ? 3 : (i[71:64] < 8'b00000000) ? 4 : (i[71:64] < 8'b00000000) ? 5 : (i[71:64] < 8'b00000000) ? 6 : 7;
    assign o[29:27] = (i[79:72] < 8'b00000000) ? 0 : (i[79:72] < 8'b00000000) ? 1 : (i[79:72] < 8'b00000000) ? 2 : (i[79:72] < 8'b00000000) ? 3 : (i[79:72] < 8'b00000000) ? 4 : (i[79:72] < 8'b00000000) ? 5 : (i[79:72] < 8'b00000000) ? 6 : 7;
    assign o[32:30] = (i[87:80] < 8'b00000000) ? 0 : (i[87:80] < 8'b00000000) ? 1 : (i[87:80] < 8'b00000000) ? 2 : (i[87:80] < 8'b00000000) ? 3 : (i[87:80] < 8'b00000000) ? 4 : (i[87:80] < 8'b00000000) ? 5 : (i[87:80] < 8'b00000000) ? 6 : 7;
    assign o[35:33] = (i[95:88] < 8'b00000000) ? 0 : (i[95:88] < 8'b00000000) ? 1 : (i[95:88] < 8'b00000000) ? 2 : (i[95:88] < 8'b00000000) ? 3 : (i[95:88] < 8'b00000000) ? 4 : (i[95:88] < 8'b00000000) ? 5 : (i[95:88] < 8'b00000000) ? 6 : 7;
    assign o[38:36] = (i[103:96] < 8'b00000000) ? 0 : (i[103:96] < 8'b00000000) ? 1 : (i[103:96] < 8'b00000000) ? 2 : (i[103:96] < 8'b00000000) ? 3 : (i[103:96] < 8'b00000000) ? 4 : (i[103:96] < 8'b00000000) ? 5 : (i[103:96] < 8'b00000000) ? 6 : 7;
    assign o[41:39] = (i[111:104] < 8'b00000000) ? 0 : (i[111:104] < 8'b00000000) ? 1 : (i[111:104] < 8'b00000000) ? 2 : (i[111:104] < 8'b00000000) ? 3 : (i[111:104] < 8'b00000000) ? 4 : (i[111:104] < 8'b00000000) ? 5 : (i[111:104] < 8'b00000000) ? 6 : 7;
    assign o[44:42] = (i[119:112] < 8'b00000000) ? 0 : (i[119:112] < 8'b00000000) ? 1 : (i[119:112] < 8'b00000000) ? 2 : (i[119:112] < 8'b00000000) ? 3 : (i[119:112] < 8'b00000000) ? 4 : (i[119:112] < 8'b00000000) ? 5 : (i[119:112] < 8'b00000000) ? 6 : 7;
    assign o[47:45] = (i[127:120] < 8'b00000000) ? 0 : (i[127:120] < 8'b00000000) ? 1 : (i[127:120] < 8'b00000000) ? 2 : (i[127:120] < 8'b00000000) ? 3 : (i[127:120] < 8'b00000000) ? 4 : (i[127:120] < 8'b00000000) ? 5 : (i[127:120] < 8'b00000000) ? 6 : 7;
endmodule
