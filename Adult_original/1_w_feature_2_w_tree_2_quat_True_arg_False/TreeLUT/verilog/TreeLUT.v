module TreeLUT(input wire [111:0] all_features,output wire [9:0] o);

wire [27:0] i;


 quantization quantization_inst(all_features, i);

wire [39:0] binary_features;

assign binary_features[0] = (i[1:0] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[1] = (i[1:0] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[2] = (i[1:0] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[3] = (i[3:2] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[4] = (i[3:2] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[5] = (i[3:2] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[6] = (i[5:4] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[7] = (i[5:4] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[8] = (i[5:4] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[9] = (i[7:6] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[10] = (i[7:6] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[11] = (i[7:6] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[12] = (i[9:8] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[13] = (i[9:8] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[14] = (i[9:8] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[15] = (i[11:10] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[16] = (i[11:10] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[17] = (i[11:10] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[18] = (i[13:12] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[19] = (i[13:12] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[20] = (i[13:12] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[21] = (i[15:14] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[22] = (i[15:14] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[23] = (i[15:14] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[24] = (i[17:16] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[25] = (i[17:16] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[26] = (i[17:16] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[27] = (i[19:18] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[28] = (i[21:20] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[29] = (i[21:20] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[30] = (i[21:20] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[31] = (i[23:22] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[32] = (i[23:22] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[33] = (i[23:22] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[34] = (i[25:24] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[35] = (i[25:24] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[36] = (i[25:24] < (2'd3))? 1'b1 : 1'b0;
assign binary_features[37] = (i[27:26] < (2'd1))? 1'b1 : 1'b0;
assign binary_features[38] = (i[27:26] < (2'd2))? 1'b1 : 1'b0;
assign binary_features[39] = (i[27:26] < (2'd3))? 1'b1 : 1'b0;


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

class0_adder class0_adder_inst(.i(trees_output[13:0]), .o(o[4:0]));
class1_adder class1_adder_inst(.i(trees_output[27:14]), .o(o[9:5]));

endmodule


module quantization(input wire [111:0] i, output wire [27:0] o);
    assign o[1:0] = (i[7:0] < 8'b00011101) ? 0 : (i[7:0] < 8'b00110101) ? 1 : (i[7:0] < 8'b01001101) ? 2 : 3;
    assign o[3:2] = (i[15:8] < 8'b00000001) ? 0 : (i[15:8] < 8'b00000100) ? 1 : (i[15:8] < 8'b00000111) ? 2 : 3;
    assign o[5:4] = (i[23:16] < 8'b00101010) ? 0 : (i[23:16] < 8'b01111111) ? 1 : (i[23:16] < 8'b11010100) ? 2 : 3;
    assign o[7:6] = (i[31:24] < 8'b00000010) ? 0 : (i[31:24] < 8'b00000111) ? 1 : (i[31:24] < 8'b00001100) ? 2 : 3;
    assign o[9:8] = (i[39:32] < 8'b00000011) ? 0 : (i[39:32] < 8'b00001000) ? 1 : (i[39:32] < 8'b00001101) ? 2 : 3;
    assign o[11:10] = (i[47:40] < 8'b00000001) ? 0 : (i[47:40] < 8'b00000011) ? 1 : (i[47:40] < 8'b00000101) ? 2 : 3;
    assign o[13:12] = (i[55:48] < 8'b00000010) ? 0 : (i[55:48] < 8'b00000111) ? 1 : (i[55:48] < 8'b00001100) ? 2 : 3;
    assign o[15:14] = (i[63:56] < 8'b00000000) ? 0 : (i[63:56] < 8'b00000001) ? 1 : (i[63:56] < 8'b00000010) ? 2 : 3;
    assign o[17:16] = (i[71:64] < 8'b00000000) ? 0 : (i[71:64] < 8'b00000001) ? 1 : (i[71:64] < 8'b00000010) ? 2 : 3;
    assign o[19:18] = i[79:72];
    assign o[21:20] = (i[87:80] < 8'b00101010) ? 0 : (i[87:80] < 8'b01111110) ? 1 : (i[87:80] < 8'b11010010) ? 2 : 3;
    assign o[23:22] = (i[95:88] < 8'b00101010) ? 0 : (i[95:88] < 8'b01111111) ? 1 : (i[95:88] < 8'b11010100) ? 2 : 3;
    assign o[25:24] = (i[103:96] < 8'b00010001) ? 0 : (i[103:96] < 8'b00110001) ? 1 : (i[103:96] < 8'b01010001) ? 2 : 3;
    assign o[27:26] = (i[111:104] < 8'b00000111) ? 0 : (i[111:104] < 8'b00010101) ? 1 : (i[111:104] < 8'b00100011) ? 2 : 3;
endmodule
