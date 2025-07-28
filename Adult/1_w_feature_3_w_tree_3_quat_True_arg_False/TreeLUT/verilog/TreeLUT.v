module TreeLUT(input wire [111:0] all_features,output wire [11:0] o);

wire [41:0] i;


 quantization quantization_inst(all_features, i);

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


wire [41:0] trees_output;

class0_tree0 class0_tree0_inst(.i(binary_features), .o(trees_output[2:0]));
class0_tree1 class0_tree1_inst(.i(binary_features), .o(trees_output[5:3]));
class0_tree2 class0_tree2_inst(.i(binary_features), .o(trees_output[8:6]));
class0_tree3 class0_tree3_inst(.i(binary_features), .o(trees_output[11:9]));
class0_tree4 class0_tree4_inst(.i(binary_features), .o(trees_output[14:12]));
class0_tree5 class0_tree5_inst(.i(binary_features), .o(trees_output[17:15]));
class0_tree6 class0_tree6_inst(.i(binary_features), .o(trees_output[20:18]));
class1_tree0 class1_tree0_inst(.i(binary_features), .o(trees_output[23:21]));
class1_tree1 class1_tree1_inst(.i(binary_features), .o(trees_output[26:24]));
class1_tree2 class1_tree2_inst(.i(binary_features), .o(trees_output[29:27]));
class1_tree3 class1_tree3_inst(.i(binary_features), .o(trees_output[32:30]));
class1_tree4 class1_tree4_inst(.i(binary_features), .o(trees_output[35:33]));
class1_tree5 class1_tree5_inst(.i(binary_features), .o(trees_output[38:36]));
class1_tree6 class1_tree6_inst(.i(binary_features), .o(trees_output[41:39]));

class0_adder class0_adder_inst(.i(trees_output[20:0]), .o(o[5:0]));
class1_adder class1_adder_inst(.i(trees_output[41:21]), .o(o[11:6]));

endmodule


module quantization(input wire [111:0] i, output wire [41:0] o);
    assign o[2:0] = (i[7:0] < 8'b00010110) ? 0 : (i[7:0] < 8'b00100000) ? 1 : (i[7:0] < 8'b00101010) ? 2 : (i[7:0] < 8'b00110100) ? 3 : (i[7:0] < 8'b00111110) ? 4 : (i[7:0] < 8'b01001000) ? 5 : (i[7:0] < 8'b01010010) ? 6 : 7;
    assign o[5:3] = (i[15:8] < 8'b00000000) ? 0 : (i[15:8] < 8'b00000001) ? 1 : (i[15:8] < 8'b00000010) ? 2 : (i[15:8] < 8'b00000011) ? 3 : (i[15:8] < 8'b00000100) ? 4 : (i[15:8] < 8'b00000101) ? 5 : (i[15:8] < 8'b00000110) ? 6 : 7;
    assign o[8:6] = (i[23:16] < 8'b00010010) ? 0 : (i[23:16] < 8'b00110110) ? 1 : (i[23:16] < 8'b01011010) ? 2 : (i[23:16] < 8'b01111110) ? 3 : (i[23:16] < 8'b10100010) ? 4 : (i[23:16] < 8'b11000110) ? 5 : (i[23:16] < 8'b11101010) ? 6 : 7;
    assign o[11:9] = (i[31:24] < 8'b00000001) ? 0 : (i[31:24] < 8'b00000011) ? 1 : (i[31:24] < 8'b00000101) ? 2 : (i[31:24] < 8'b00000111) ? 3 : (i[31:24] < 8'b00001001) ? 4 : (i[31:24] < 8'b00001011) ? 5 : (i[31:24] < 8'b00001101) ? 6 : 7;
    assign o[14:12] = (i[39:32] < 8'b00000010) ? 0 : (i[39:32] < 8'b00000100) ? 1 : (i[39:32] < 8'b00000110) ? 2 : (i[39:32] < 8'b00001000) ? 3 : (i[39:32] < 8'b00001010) ? 4 : (i[39:32] < 8'b00001100) ? 5 : (i[39:32] < 8'b00001110) ? 6 : 7;
    assign o[17:15] = (i[47:40] < 8'b00000000) ? 0 : (i[47:40] < 8'b00000000) ? 1 : (i[47:40] < 8'b00000000) ? 2 : (i[47:40] < 8'b00000000) ? 3 : (i[47:40] < 8'b00000000) ? 4 : (i[47:40] < 8'b00000000) ? 5 : (i[47:40] < 8'b00000000) ? 6 : 7;
    assign o[20:18] = (i[55:48] < 8'b00000001) ? 0 : (i[55:48] < 8'b00000011) ? 1 : (i[55:48] < 8'b00000101) ? 2 : (i[55:48] < 8'b00000111) ? 3 : (i[55:48] < 8'b00001001) ? 4 : (i[55:48] < 8'b00001011) ? 5 : (i[55:48] < 8'b00001101) ? 6 : 7;
    assign o[23:21] = (i[63:56] < 8'b00000000) ? 0 : (i[63:56] < 8'b00000000) ? 1 : (i[63:56] < 8'b00000000) ? 2 : (i[63:56] < 8'b00000000) ? 3 : (i[63:56] < 8'b00000000) ? 4 : (i[63:56] < 8'b00000000) ? 5 : (i[63:56] < 8'b00000000) ? 6 : 7;
    assign o[26:24] = (i[71:64] < 8'b00000000) ? 0 : (i[71:64] < 8'b00000000) ? 1 : (i[71:64] < 8'b00000000) ? 2 : (i[71:64] < 8'b00000000) ? 3 : (i[71:64] < 8'b00000000) ? 4 : (i[71:64] < 8'b00000000) ? 5 : (i[71:64] < 8'b00000000) ? 6 : 7;
    assign o[29:27] = i[79:72];
    assign o[32:30] = (i[87:80] < 8'b00010010) ? 0 : (i[87:80] < 8'b00110110) ? 1 : (i[87:80] < 8'b01011010) ? 2 : (i[87:80] < 8'b01111110) ? 3 : (i[87:80] < 8'b10100010) ? 4 : (i[87:80] < 8'b11000110) ? 5 : (i[87:80] < 8'b11101010) ? 6 : 7;
    assign o[35:33] = (i[95:88] < 8'b00010010) ? 0 : (i[95:88] < 8'b00110110) ? 1 : (i[95:88] < 8'b01011010) ? 2 : (i[95:88] < 8'b01111110) ? 3 : (i[95:88] < 8'b10100010) ? 4 : (i[95:88] < 8'b11000110) ? 5 : (i[95:88] < 8'b11101010) ? 6 : 7;
    assign o[38:36] = (i[103:96] < 8'b00001000) ? 0 : (i[103:96] < 8'b00010110) ? 1 : (i[103:96] < 8'b00100100) ? 2 : (i[103:96] < 8'b00110010) ? 3 : (i[103:96] < 8'b01000000) ? 4 : (i[103:96] < 8'b01001110) ? 5 : (i[103:96] < 8'b01011100) ? 6 : 7;
    assign o[41:39] = (i[111:104] < 8'b00000011) ? 0 : (i[111:104] < 8'b00001001) ? 1 : (i[111:104] < 8'b00001111) ? 2 : (i[111:104] < 8'b00010101) ? 3 : (i[111:104] < 8'b00011011) ? 4 : (i[111:104] < 8'b00100001) ? 5 : (i[111:104] < 8'b00100111) ? 6 : 7;
endmodule
