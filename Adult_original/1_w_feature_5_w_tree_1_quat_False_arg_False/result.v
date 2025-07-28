// Benchmark "TreeLUT" written by ABC on Tue Jun 10 10:58:03 2025

module TreeLUT ( 
    \i[0] , \i[1] , \i[2] , \i[3] , \i[4] , \i[5] , \i[6] , \i[7] , \i[8] ,
    \i[9] , \i[10] , \i[11] , \i[12] , \i[13] , \i[14] , \i[15] , \i[16] ,
    \i[17] , \i[18] , \i[19] , \i[20] , \i[21] , \i[22] , \i[23] , \i[24] ,
    \i[25] , \i[26] , \i[27] , \i[28] , \i[29] , \i[30] , \i[31] , \i[32] ,
    \i[33] , \i[34] , \i[35] , \i[36] , \i[37] , \i[38] , \i[39] , \i[40] ,
    \i[41] , \i[42] , \i[43] , \i[44] , \i[45] , \i[46] , \i[47] , \i[48] ,
    \i[49] , \i[50] , \i[51] , \i[52] , \i[53] , \i[54] , \i[55] , \i[56] ,
    \i[57] , \i[58] , \i[59] , \i[60] , \i[61] , \i[62] , \i[63] , \i[64] ,
    \i[65] , \i[66] , \i[67] , \i[68] , \i[69] ,
    \o[0] , \o[1] , \o[2] , \o[3] , \o[4] , \o[5]   );
  input  \i[0] , \i[1] , \i[2] , \i[3] , \i[4] , \i[5] , \i[6] , \i[7] ,
    \i[8] , \i[9] , \i[10] , \i[11] , \i[12] , \i[13] , \i[14] , \i[15] ,
    \i[16] , \i[17] , \i[18] , \i[19] , \i[20] , \i[21] , \i[22] , \i[23] ,
    \i[24] , \i[25] , \i[26] , \i[27] , \i[28] , \i[29] , \i[30] , \i[31] ,
    \i[32] , \i[33] , \i[34] , \i[35] , \i[36] , \i[37] , \i[38] , \i[39] ,
    \i[40] , \i[41] , \i[42] , \i[43] , \i[44] , \i[45] , \i[46] , \i[47] ,
    \i[48] , \i[49] , \i[50] , \i[51] , \i[52] , \i[53] , \i[54] , \i[55] ,
    \i[56] , \i[57] , \i[58] , \i[59] , \i[60] , \i[61] , \i[62] , \i[63] ,
    \i[64] , \i[65] , \i[66] , \i[67] , \i[68] , \i[69] ;
  output \o[0] , \o[1] , \o[2] , \o[3] , \o[4] , \o[5] ;
  wire new_n79_, new_n80_, new_n81_, new_n82_, new_n83_, new_n84_, new_n85_,
    new_n86_, new_n87_, new_n88_, new_n89_, new_n90_, new_n91_, new_n92_,
    new_n93_, new_n94_, new_n95_, new_n96_, new_n97_, new_n98_, new_n99_,
    new_n100_, new_n101_, new_n102_, new_n103_, new_n104_, new_n105_,
    new_n106_, new_n107_, new_n108_, new_n109_, new_n110_, new_n111_,
    new_n112_, new_n113_, new_n114_, new_n115_, new_n116_, new_n117_,
    new_n118_, new_n119_, new_n120_, new_n121_, new_n122_, new_n123_,
    new_n124_, new_n125_, new_n126_, new_n127_, new_n128_, new_n129_,
    new_n130_, new_n131_, new_n132_, new_n133_, new_n134_, new_n135_,
    new_n136_, new_n137_, new_n138_, new_n139_, new_n140_, new_n141_,
    new_n142_, new_n143_, new_n144_, new_n145_, new_n146_, new_n147_,
    new_n148_, new_n149_, new_n150_, new_n151_, new_n152_, new_n153_,
    new_n154_, new_n155_, new_n156_, new_n157_, new_n158_, new_n159_,
    new_n160_, new_n161_, new_n162_, new_n163_, new_n164_, new_n165_,
    new_n166_, new_n167_, new_n168_, new_n169_, new_n170_, new_n171_,
    new_n172_, new_n173_, new_n174_, new_n175_, new_n176_, new_n177_,
    new_n178_, new_n179_, new_n180_, new_n181_, new_n182_, new_n183_,
    new_n184_, new_n185_, new_n186_, new_n187_, new_n188_, new_n189_,
    new_n190_, new_n191_, new_n192_, new_n193_, new_n194_, new_n195_,
    new_n196_, new_n197_, new_n198_, new_n199_, new_n200_, new_n201_,
    new_n202_, new_n203_, new_n204_, new_n205_, new_n206_, new_n207_,
    new_n208_, new_n209_, new_n210_, new_n211_, new_n212_, new_n213_,
    new_n214_, new_n215_, new_n216_, new_n217_, new_n218_, new_n219_,
    new_n220_, new_n221_, new_n222_, new_n223_, new_n224_, new_n225_,
    new_n226_, new_n227_, new_n228_, new_n229_, new_n230_, new_n231_,
    new_n232_, new_n233_, new_n234_, new_n235_, new_n236_, new_n237_,
    new_n238_, new_n239_, new_n240_, new_n241_, new_n242_, new_n243_,
    new_n244_, new_n245_, new_n246_, new_n247_, new_n248_, new_n249_,
    new_n250_, new_n251_, new_n252_, new_n253_, new_n254_, new_n255_,
    new_n256_, new_n257_, new_n258_, new_n259_, new_n260_, new_n261_,
    new_n262_, new_n263_, new_n264_, new_n265_, new_n266_, new_n267_,
    new_n268_, new_n269_, new_n270_, new_n272_, new_n273_, new_n274_,
    new_n277_, new_n278_, new_n279_, new_n280_, new_n281_, new_n282_,
    new_n283_, new_n284_, new_n285_, new_n286_, new_n287_, new_n288_,
    new_n289_, new_n290_, new_n291_, new_n292_, new_n293_, new_n294_,
    new_n295_, new_n296_, new_n297_, new_n298_, new_n299_, new_n300_,
    new_n301_, new_n302_, new_n303_, new_n304_, new_n305_, new_n306_,
    new_n307_, new_n308_, new_n309_, new_n310_, new_n311_, new_n312_,
    new_n313_, new_n314_, new_n315_, new_n316_, new_n317_, new_n318_,
    new_n319_, new_n320_, new_n321_, new_n322_, new_n323_, new_n324_,
    new_n325_, new_n326_, new_n327_, new_n328_, new_n329_, new_n330_,
    new_n331_, new_n332_, new_n333_, new_n334_, new_n335_, new_n336_,
    new_n337_, new_n338_, new_n339_, new_n340_, new_n341_, new_n342_,
    new_n343_, new_n344_, new_n345_, new_n346_, new_n347_, new_n348_,
    new_n349_, new_n350_, new_n351_, new_n352_, new_n353_, new_n354_,
    new_n355_, new_n356_, new_n357_, new_n358_, new_n359_, new_n360_,
    new_n361_, new_n362_, new_n363_, new_n364_, new_n365_, new_n366_,
    new_n367_, new_n368_, new_n369_, new_n370_, new_n371_, new_n372_,
    new_n374_, new_n375_, new_n376_;
  assign \o[0]  = new_n79_ ? (~new_n214_ ^ new_n264_) : (new_n214_ ^ new_n264_);
  assign new_n79_ = new_n80_ ? (~new_n202_ ^ new_n208_) : (new_n202_ ^ new_n208_);
  assign new_n80_ = new_n81_ ? (new_n140_ ^ new_n199_) : (~new_n140_ ^ new_n199_);
  assign new_n81_ = new_n139_ ? (new_n102_ ? new_n133_ : new_n120_) : new_n82_;
  assign new_n82_ = (~new_n111_ & ~new_n119_ & (new_n118_ | new_n97_)) | (new_n83_ & new_n119_);
  assign new_n83_ = (new_n84_ | new_n96_) & (~new_n87_ | ~new_n96_ | new_n94_ | ~new_n95_);
  assign new_n84_ = (new_n85_ | new_n93_) & (~new_n94_ | ~new_n93_ | ~new_n91_ | ~new_n92_);
  assign new_n85_ = \i[44]  ? ~new_n86_ : ~new_n90_;
  assign new_n86_ = new_n87_ & (\i[66]  | \i[67]  | \i[68]  | \i[69] );
  assign new_n87_ = new_n88_ & new_n89_;
  assign new_n88_ = ~\i[52]  & ~\i[50]  & ~\i[51] ;
  assign new_n89_ = ~\i[53]  & ~\i[54] ;
  assign new_n90_ = ~\i[4]  & (~\i[3]  | (~\i[2]  & (~\i[1]  | ~\i[0] )));
  assign new_n91_ = ~\i[3]  & ~\i[4] ;
  assign new_n92_ = ~\i[64]  & (~\i[61]  | ~\i[62]  | ~\i[63]  | ~\i[60] );
  assign new_n93_ = \i[24]  & (\i[21]  | \i[22]  | \i[23]  | \i[20] );
  assign new_n94_ = ~\i[4]  & ~\i[2]  & ~\i[3] ;
  assign new_n95_ = ~new_n91_ & ~\i[68]  & ~\i[69]  & (~\i[67]  | ~\i[66] );
  assign new_n96_ = \i[24]  & (\i[23]  | (\i[22]  & (\i[21]  | \i[20] )));
  assign new_n97_ = new_n110_ ? new_n104_ : (new_n98_ | (new_n108_ & new_n103_));
  assign new_n98_ = ~new_n103_ & (new_n102_ ? ~new_n101_ : ~new_n99_);
  assign new_n99_ = ~\i[4]  & (~\i[0]  | ~\i[1]  | ~new_n100_);
  assign new_n100_ = \i[2]  & \i[3] ;
  assign new_n101_ = new_n91_ & (~\i[2]  | (~\i[0]  & ~\i[1] ));
  assign new_n102_ = \i[23]  & \i[24]  & (\i[22]  | \i[21]  | \i[20] );
  assign new_n103_ = ~\i[64]  & (~\i[62]  | ~\i[63]  | ~\i[61] );
  assign new_n104_ = (~new_n105_ | ~new_n107_ | new_n103_) & (new_n106_ | ~new_n87_ | ~new_n103_);
  assign new_n105_ = new_n91_ & (~\i[2]  | ~\i[1] );
  assign new_n106_ = \i[22]  & \i[23]  & \i[24]  & (\i[21]  | \i[20] );
  assign new_n107_ = \i[29]  & (\i[28]  | (\i[27]  & (\i[26]  | \i[25] )));
  assign new_n108_ = new_n91_ & new_n109_;
  assign new_n109_ = \i[59]  & \i[57]  & \i[58] ;
  assign new_n110_ = \i[23]  & \i[24]  & (\i[22]  | (\i[21]  & \i[20] ));
  assign new_n111_ = new_n118_ & ~new_n112_ & new_n117_;
  assign new_n112_ = ~new_n116_ & (new_n114_ ? ~new_n115_ : new_n113_);
  assign new_n113_ = \i[4]  & (\i[3]  | (\i[2]  & (\i[1]  | \i[0] )));
  assign new_n114_ = \i[52]  & \i[53]  & \i[54]  & (\i[51]  | \i[50] );
  assign new_n115_ = \i[4]  & ((\i[0]  & \i[1] ) | \i[3]  | \i[2] );
  assign new_n116_ = \i[54]  & \i[53]  & \i[51]  & \i[52] ;
  assign new_n117_ = \i[54]  & (\i[53]  | (\i[51]  & \i[52]  & \i[50] ));
  assign new_n118_ = \i[54]  & (\i[52]  | \i[53]  | \i[51] );
  assign new_n119_ = \i[39]  & \i[38]  & \i[37]  & \i[35]  & \i[36] ;
  assign new_n120_ = (new_n121_ & new_n93_) | (~new_n125_ & ~new_n93_ & (new_n128_ | ~new_n87_));
  assign new_n121_ = ~new_n122_ & (~new_n101_ | ~new_n87_ | ~new_n91_ | ~new_n124_);
  assign new_n122_ = (new_n117_ & \i[54] ) | (~new_n123_ & \i[53]  & ~\i[54] );
  assign new_n123_ = \i[4]  & (\i[2]  | \i[3]  | \i[1] );
  assign new_n124_ = ~\i[58]  & ~\i[59]  & (~\i[57]  | ~\i[56]  | ~\i[55] );
  assign new_n125_ = ~new_n87_ & ~new_n126_ & ~\i[24]  & (~\i[23]  | ~\i[22] );
  assign new_n126_ = (~new_n127_ & new_n89_) | (\i[13]  & \i[14]  & ~new_n89_);
  assign new_n127_ = ~\i[4]  & (~\i[3]  | (~\i[1]  & ~\i[2]  & ~\i[0] ));
  assign new_n128_ = (new_n129_ | new_n132_ | new_n131_) & (~new_n130_ | ~new_n103_ | ~new_n131_);
  assign new_n129_ = ~\i[59]  & (~\i[57]  | ~\i[58]  | ~\i[56] );
  assign new_n130_ = ~\i[24]  & (~\i[22]  | ~\i[23]  | ~\i[21] );
  assign new_n131_ = ~\i[58]  & ~\i[59]  & (~\i[57]  | ~\i[56] );
  assign new_n132_ = ~\i[19]  & ~\i[18]  & ~\i[16]  & ~\i[17] ;
  assign new_n133_ = (new_n134_ | new_n137_) & (~new_n86_ | ~new_n137_ | new_n138_ | ~new_n90_);
  assign new_n134_ = (~new_n135_ | ~new_n87_ | new_n131_ | ~new_n92_) & (~new_n117_ | new_n87_);
  assign new_n135_ = \i[58]  & \i[59]  & (\i[57]  | ~new_n136_);
  assign new_n136_ = ~\i[55]  & ~\i[56] ;
  assign new_n137_ = ~\i[64]  & (~\i[63]  | (~\i[62]  & ~\i[61] ));
  assign new_n138_ = \i[18]  & \i[19]  & (\i[17]  | (\i[16]  & \i[15] ));
  assign new_n139_ = ~\i[38]  & ~\i[39]  & (~\i[37]  | ~\i[36] );
  assign new_n140_ = new_n139_ ? new_n141_ : (new_n119_ ? new_n171_ : new_n186_);
  assign new_n141_ = new_n169_ ? new_n151_ : (new_n170_ ? new_n142_ : new_n167_);
  assign new_n142_ = new_n150_ & ((~new_n143_ & ~new_n148_) | (~new_n147_ & new_n149_ & new_n148_));
  assign new_n143_ = (~\i[4]  & (~new_n100_ | ~\i[1] )) ? ~new_n146_ : ~new_n144_;
  assign new_n144_ = \i[33]  & \i[34]  & (\i[32]  | ~new_n145_);
  assign new_n145_ = ~\i[30]  & ~\i[31] ;
  assign new_n146_ = \i[14]  & \i[13]  & \i[12]  & \i[10]  & \i[11] ;
  assign new_n147_ = new_n136_ & ~\i[59]  & ~\i[57]  & ~\i[58] ;
  assign new_n148_ = ~\i[64]  & (~\i[63]  | (~\i[61]  & ~\i[62]  & ~\i[60] ));
  assign new_n149_ = ~\i[59]  & (~\i[58]  | (~\i[57]  & ~\i[56] ));
  assign new_n150_ = ~\i[54]  & (~\i[53]  | (~\i[52]  & (~\i[51]  | ~\i[50] )));
  assign new_n151_ = new_n87_ ? (new_n166_ ? new_n156_ : ~new_n152_) : new_n162_;
  assign new_n152_ = (~new_n153_ | (new_n103_ ? new_n127_ : new_n155_)) & (new_n105_ | ~new_n155_ | new_n103_);
  assign new_n153_ = \i[34]  & (\i[33]  | ~new_n154_);
  assign new_n154_ = ~\i[32]  & (~\i[31]  | ~\i[30] );
  assign new_n155_ = ~\i[34]  & (~\i[33]  | (~\i[32]  & ~\i[31] ));
  assign new_n156_ = new_n106_ ? (new_n113_ ? ~new_n161_ : ~new_n160_) : new_n157_;
  assign new_n157_ = (\i[8]  & \i[9] ) ? ~new_n159_ : new_n158_;
  assign new_n158_ = \i[59]  & (\i[57]  | \i[58]  | \i[56] );
  assign new_n159_ = ~\i[4]  & (~\i[3]  | (~\i[2]  & ~\i[1] ));
  assign new_n160_ = ~\i[33]  & ~\i[34] ;
  assign new_n161_ = \i[19]  & (\i[18]  | (\i[16]  & \i[17]  & \i[15] ));
  assign new_n162_ = ~new_n117_ & (new_n163_ ? ~new_n164_ : ~new_n165_);
  assign new_n163_ = \i[54]  & ((\i[50]  & \i[51] ) | \i[53]  | \i[52] );
  assign new_n164_ = ~\i[69]  & ~\i[68]  & ~\i[67]  & ~\i[65]  & ~\i[66] ;
  assign new_n165_ = \i[54]  & (\i[51]  | \i[52]  | \i[53]  | \i[50] );
  assign new_n166_ = \i[9]  & (\i[8]  | (\i[7]  & (\i[6]  | \i[5] )));
  assign new_n167_ = new_n155_ & ~new_n168_ & ~new_n160_;
  assign new_n168_ = new_n166_ & (\i[24]  | (\i[23]  & (\i[22]  | \i[21] )));
  assign new_n169_ = \i[24]  & ((\i[20]  & \i[21] ) | \i[23]  | \i[22] );
  assign new_n170_ = ~\i[64]  & (~\i[63]  | (~\i[62]  & (~\i[61]  | ~\i[60] )));
  assign new_n171_ = new_n169_ ? new_n172_ : (new_n176_ ? new_n180_ : ~new_n185_);
  assign new_n172_ = new_n173_ ? new_n177_ : (\i[4]  ? ~new_n179_ : ~new_n174_);
  assign new_n173_ = new_n91_ & (~\i[0]  | ~\i[1]  | ~\i[2] );
  assign new_n174_ = ~new_n176_ & new_n175_;
  assign new_n175_ = \i[59]  & (\i[58]  | (\i[56]  & \i[57]  & \i[55] ));
  assign new_n176_ = ~\i[59]  & (~\i[58]  | ~\i[57] );
  assign new_n177_ = ~new_n176_ & ~new_n178_;
  assign new_n178_ = ~\i[13]  & ~\i[14] ;
  assign new_n179_ = ~\i[54]  & (~\i[53]  | (~\i[52]  & ~\i[51] ));
  assign new_n180_ = (new_n181_ & new_n170_) | (new_n89_ & ~new_n170_ & (~new_n88_ | new_n184_));
  assign new_n181_ = new_n182_ & new_n183_;
  assign new_n182_ = \i[9]  & (\i[6]  | \i[7]  | \i[8]  | \i[5] );
  assign new_n183_ = \i[14]  & (\i[13]  | (\i[11]  & \i[12]  & \i[10] ));
  assign new_n184_ = ~\i[67]  & ~\i[68]  & ~\i[69]  & (~\i[66]  | ~\i[65] );
  assign new_n185_ = ~new_n129_ & (~\i[34]  | (~\i[32]  & ~\i[33]  & new_n145_));
  assign new_n186_ = new_n102_ ? (new_n87_ ? new_n193_ : new_n196_) : new_n187_;
  assign new_n187_ = new_n87_ ? new_n109_ : (new_n192_ ? ~new_n188_ : new_n191_);
  assign new_n188_ = ~new_n189_ & new_n190_;
  assign new_n189_ = \i[49]  & \i[48]  & \i[47]  & \i[45]  & \i[46] ;
  assign new_n190_ = \i[28]  & \i[29]  & (\i[27]  | \i[26] );
  assign new_n191_ = ~new_n117_ & new_n163_;
  assign new_n192_ = ~\i[54]  & ~\i[52]  & ~\i[53] ;
  assign new_n193_ = new_n105_ ? new_n194_ : (new_n106_ ? ~new_n195_ : new_n109_);
  assign new_n194_ = \i[58]  & \i[59]  & (\i[57]  | \i[56] );
  assign new_n195_ = ~\i[68]  & ~\i[69]  & (~\i[67]  | (~\i[66]  & ~\i[65] ));
  assign new_n196_ = new_n192_ ? ~new_n123_ : (new_n197_ ? new_n198_ : ~new_n117_);
  assign new_n197_ = new_n89_ & (~\i[50]  | ~\i[51]  | ~\i[52] );
  assign new_n198_ = \i[4]  & (\i[3]  | \i[2] );
  assign new_n199_ = new_n96_ & new_n200_ & ~new_n170_ & ~new_n115_;
  assign new_n200_ = new_n201_ & new_n189_ & (\i[4]  | new_n100_);
  assign new_n201_ = \i[64]  & \i[63]  & ~new_n94_ & \i[62] ;
  assign new_n202_ = ~new_n87_ & (new_n206_ | (~new_n207_ & new_n205_ & new_n203_));
  assign new_n203_ = ~new_n198_ & new_n204_ & new_n89_ & (\i[24]  | \i[23] );
  assign new_n204_ = new_n192_ & (~\i[51]  | ~\i[50] );
  assign new_n205_ = ~\i[4]  & (~new_n100_ | (~\i[0]  & ~\i[1] ));
  assign new_n206_ = new_n139_ & \i[53]  & new_n102_ & ~\i[54]  & new_n88_;
  assign new_n207_ = ~\i[54]  & ~\i[53]  & ~\i[51]  & ~\i[52] ;
  assign new_n208_ = new_n209_ & ~new_n213_ & ~new_n212_ & ~new_n175_ & ~new_n211_;
  assign new_n209_ = \i[59]  & ~new_n210_ & new_n139_;
  assign new_n210_ = new_n160_ & ~\i[31]  & ~\i[32] ;
  assign new_n211_ = \i[59]  & (\i[58]  | (\i[57]  & \i[56] ));
  assign new_n212_ = ~\i[8]  & ~\i[9]  & (~\i[7]  | ~\i[6]  | ~\i[5] );
  assign new_n213_ = ~\i[2]  & ~\i[3]  & ~\i[4]  & (~\i[1]  | ~\i[0] );
  assign new_n214_ = \i[29]  ? new_n225_ : (new_n263_ ? new_n251_ : new_n215_);
  assign new_n215_ = (new_n220_ | new_n224_ | new_n130_) & (new_n216_ | new_n218_ | ~new_n130_);
  assign new_n216_ = new_n217_ & new_n132_;
  assign new_n217_ = \i[34]  & \i[33]  & \i[14]  & ~new_n154_ & new_n87_;
  assign new_n218_ = ~new_n219_ & ~new_n87_ & ~new_n165_;
  assign new_n219_ = ~\i[54]  & (~\i[52]  | ~\i[53]  | ~\i[51] );
  assign new_n220_ = new_n191_ & (new_n223_ ? (~\i[4]  | new_n222_) : ~new_n221_);
  assign new_n221_ = \i[34]  & \i[33]  & ~new_n145_ & \i[32] ;
  assign new_n222_ = ~\i[3]  & (~\i[1]  | ~\i[2]  | ~\i[0] );
  assign new_n223_ = \i[54]  & (\i[53]  | \i[52] );
  assign new_n224_ = \i[54]  & ~new_n165_ & ~new_n163_ & ~new_n113_;
  assign new_n225_ = new_n101_ ? new_n226_ : (new_n250_ ? new_n236_ : new_n243_);
  assign new_n226_ = new_n223_ ? new_n235_ : (new_n232_ | (~new_n227_ & new_n147_));
  assign new_n227_ = (~new_n138_ | ~new_n231_ | new_n230_) & (new_n228_ | ~new_n144_ | ~new_n230_);
  assign new_n228_ = \i[19]  & (\i[18]  | (~new_n229_ & \i[17] ));
  assign new_n229_ = ~\i[15]  & ~\i[16] ;
  assign new_n230_ = \i[64]  & ((\i[60]  & \i[61] ) | \i[63]  | \i[62] );
  assign new_n231_ = \i[69]  & \i[68]  & \i[67]  & \i[65]  & \i[66] ;
  assign new_n232_ = (new_n233_ | (~\i[58]  & ~\i[59]  & (~\i[57]  | new_n136_))) & (\i[58]  | \i[59]  | \i[57]  | ~new_n136_);
  assign new_n233_ = ~new_n94_ & new_n178_ & (~\i[12]  | new_n234_);
  assign new_n234_ = ~\i[10]  & ~\i[11] ;
  assign new_n235_ = ~new_n116_ & (\i[14]  | (\i[12]  & \i[13] ));
  assign new_n236_ = ~new_n237_ & (~new_n242_ | (~new_n170_ & new_n189_ & new_n241_));
  assign new_n237_ = new_n238_ & (~new_n239_ | (new_n166_ & new_n241_) | (new_n87_ & ~new_n241_));
  assign new_n238_ = \i[64]  & (new_n240_ | new_n239_ | ~\i[34] );
  assign new_n239_ = \i[39]  & ((\i[35]  & \i[36] ) | \i[38]  | \i[37] );
  assign new_n240_ = (~\i[33]  | \i[32]  | (\i[30]  & \i[31] )) & (~\i[30]  | ~\i[31]  | \i[33]  | ~\i[32] );
  assign new_n241_ = \i[29]  & \i[28]  & \i[27]  & \i[25]  & \i[26] ;
  assign new_n242_ = ~\i[64]  & (new_n189_ | new_n90_ | new_n147_);
  assign new_n243_ = (new_n246_ | new_n245_) & (new_n244_ | ~new_n249_ | ~new_n245_);
  assign new_n244_ = new_n190_ ? new_n169_ : ~new_n103_;
  assign new_n245_ = \i[59]  & (\i[57]  | \i[58]  | ~new_n136_);
  assign new_n246_ = new_n239_ & new_n247_ & ~\i[14]  & ~new_n248_ & ~\i[11] ;
  assign new_n247_ = ~\i[12]  & ~\i[13] ;
  assign new_n248_ = ~\i[64]  & ((~\i[60]  & ~\i[61] ) | ~\i[63]  | ~\i[62] );
  assign new_n249_ = \i[59]  & ((\i[55]  & \i[56] ) | \i[58]  | \i[57] );
  assign new_n250_ = \i[24]  & (\i[23]  | (\i[21]  & \i[22]  & \i[20] ));
  assign new_n251_ = new_n103_ ? (new_n261_ | (~new_n258_ & new_n262_)) : new_n252_;
  assign new_n252_ = new_n169_ ? new_n256_ : (new_n253_ | (new_n255_ & new_n257_));
  assign new_n253_ = ~new_n254_ & \i[14]  & (~new_n247_ | (\i[10]  & \i[11] ));
  assign new_n254_ = (~\i[0]  | ~\i[1]  | ~\i[2]  | ~\i[3]  | \i[4] ) & (\i[0]  | \i[1]  | \i[2]  | \i[3]  | ~\i[4] );
  assign new_n255_ = ~\i[4]  & \i[54]  & (~\i[1]  | ~\i[0]  | ~new_n100_);
  assign new_n256_ = new_n189_ & (~new_n160_ | (\i[12]  & \i[13]  & \i[14] ));
  assign new_n257_ = ~\i[39]  & (~\i[38]  | ~\i[37] );
  assign new_n258_ = (~new_n189_ | ~new_n178_ | ~new_n169_) & (new_n260_ | ~new_n259_ | new_n169_);
  assign new_n259_ = ~\i[14]  & (new_n234_ | ~\i[13]  | ~\i[12] );
  assign new_n260_ = \i[44]  & (\i[43]  | (\i[41]  & \i[42]  & \i[40] ));
  assign new_n261_ = ~new_n262_ & new_n194_ & (\i[4]  | new_n100_);
  assign new_n262_ = \i[34]  & (\i[33]  | (~new_n145_ & \i[32] ));
  assign new_n263_ = ~\i[28]  & ~\i[29]  & (~\i[27]  | (~\i[26]  & ~\i[25] ));
  assign new_n264_ = ~new_n101_ & (new_n265_ | (~new_n262_ & ~new_n228_ & new_n268_));
  assign new_n265_ = new_n266_ & new_n262_ & ~new_n135_ & ~new_n129_;
  assign new_n266_ = ~new_n211_ & ~new_n221_ & ~new_n267_;
  assign new_n267_ = \i[19]  & \i[18]  & ~new_n229_ & \i[17] ;
  assign new_n268_ = new_n269_ & new_n234_ & new_n155_ & ~new_n270_ & new_n160_;
  assign new_n269_ = \i[69]  & ~\i[14]  & new_n247_;
  assign new_n270_ = ~\i[68]  & (~\i[66]  | ~\i[67]  | ~\i[65] );
  assign \o[1]  = new_n272_ ? (~new_n273_ ^ new_n274_) : (new_n273_ ^ new_n274_);
  assign new_n272_ = (~new_n214_ & new_n264_) | (~new_n79_ & (~new_n214_ | new_n264_));
  assign new_n273_ = (new_n202_ & new_n208_) | (~new_n80_ & (new_n202_ | new_n208_));
  assign new_n274_ = (~new_n140_ & new_n199_) | (~new_n81_ & (~new_n140_ | new_n199_));
  assign \o[2]  = (new_n273_ & new_n274_) | (new_n272_ & (new_n273_ | new_n274_));
  assign \o[3]  = new_n277_ ? (~new_n360_ ^ new_n369_) : (new_n360_ ^ new_n369_);
  assign new_n277_ = new_n278_ ? (~new_n310_ ^ new_n349_) : (new_n310_ ^ new_n349_);
  assign new_n278_ = new_n87_ ? (new_n213_ ? new_n304_ : new_n279_) : new_n291_;
  assign new_n279_ = new_n290_ ? (new_n287_ | (new_n100_ & \i[4] )) : new_n280_;
  assign new_n280_ = (new_n281_ & new_n107_) | (~new_n285_ & ~new_n286_ & ~new_n107_);
  assign new_n281_ = new_n262_ ? new_n282_ : (new_n284_ ? ~new_n91_ : ~new_n231_);
  assign new_n282_ = (new_n205_ & \i[67]  & \i[68]  & \i[69] ) | (new_n283_ & (~\i[67]  | ~\i[68]  | ~\i[69] ));
  assign new_n283_ = \i[34]  & (\i[33]  | (\i[31]  & \i[32]  & \i[30] ));
  assign new_n284_ = \i[64]  & (\i[63]  | (\i[62]  & (\i[61]  | \i[60] )));
  assign new_n285_ = ~new_n210_ & ~\i[14]  & (~\i[13]  | (~\i[11]  & ~\i[12] ));
  assign new_n286_ = \i[19]  & \i[18]  & \i[17]  & \i[15]  & \i[16] ;
  assign new_n287_ = (~new_n288_ | ~new_n284_) & (new_n170_ | ~new_n212_ | new_n284_);
  assign new_n288_ = \i[64]  & new_n247_ & ~\i[14]  & ~new_n289_ & ~\i[11] ;
  assign new_n289_ = ~\i[63]  & (~\i[61]  | ~\i[62]  | ~\i[60] );
  assign new_n290_ = \i[44]  & \i[43]  & \i[42]  & \i[40]  & \i[41] ;
  assign new_n291_ = ~new_n292_ & (~new_n303_ | (~new_n301_ & ~new_n163_));
  assign new_n292_ = new_n89_ & ((~new_n293_ & ~new_n207_) | (~new_n298_ & ~new_n113_ & new_n207_));
  assign new_n293_ = (~new_n297_ & ~new_n294_ & ~new_n204_) | (new_n204_ & (~new_n198_ | new_n178_));
  assign new_n294_ = ~new_n295_ & new_n89_ & (~\i[52]  | (~\i[50]  & ~\i[51] ));
  assign new_n295_ = (new_n148_ | new_n166_) & (new_n296_ | ~\i[14]  | ~new_n166_);
  assign new_n296_ = ~\i[13]  & (~\i[12]  | ~\i[11] );
  assign new_n297_ = ~new_n198_ & (~new_n89_ | (\i[50]  & \i[51]  & \i[52] ));
  assign new_n298_ = new_n107_ ? ~new_n300_ : new_n299_;
  assign new_n299_ = ~\i[7]  & ~\i[8]  & ~\i[9]  & (~\i[6]  | ~\i[5] );
  assign new_n300_ = ~\i[64]  & (\i[19]  | (\i[18]  & (\i[17]  | \i[16] )));
  assign new_n301_ = new_n165_ ? new_n302_ : (\i[54]  ? ~new_n198_ : new_n123_);
  assign new_n302_ = new_n263_ & (\i[9]  | (\i[8]  & (\i[7]  | \i[6] )));
  assign new_n303_ = \i[54]  ? ((\i[50]  & \i[52] ) ? ~\i[51]  : ~\i[53] ) : (\i[53]  & (\i[51]  | \i[50]  | \i[52] ));
  assign new_n304_ = (~\i[14]  & new_n296_) ? new_n309_ : ~new_n305_;
  assign new_n305_ = (new_n306_ | new_n231_ | new_n119_) & (new_n307_ | new_n308_ | ~new_n119_);
  assign new_n306_ = ~\i[23]  & ~\i[24]  & (~\i[22]  | ~\i[21] );
  assign new_n307_ = \i[14]  & \i[13]  & \i[11]  & ~\i[10]  & ~\i[12] ;
  assign new_n308_ = \i[13]  & \i[14]  & (\i[12]  | (\i[11]  & \i[10] ));
  assign new_n309_ = new_n103_ ? ~new_n250_ : ~new_n257_;
  assign new_n310_ = new_n311_ ? (new_n323_ ^ new_n339_) : (~new_n323_ ^ new_n339_);
  assign new_n311_ = new_n139_ ? new_n312_ : (new_n119_ ? new_n316_ : new_n319_);
  assign new_n312_ = new_n169_ ? new_n313_ : (new_n170_ ? ~new_n142_ : ~new_n167_);
  assign new_n313_ = new_n87_ ? (new_n166_ ? new_n314_ : new_n152_) : ~new_n162_;
  assign new_n314_ = new_n106_ ? (new_n113_ ? new_n161_ : new_n160_) : new_n315_;
  assign new_n315_ = (\i[8]  & \i[9] ) ? new_n159_ : ~new_n158_;
  assign new_n316_ = new_n169_ ? new_n317_ : (new_n176_ ? new_n318_ : new_n185_);
  assign new_n317_ = new_n173_ ? ~new_n177_ : (\i[4]  ? new_n179_ : new_n174_);
  assign new_n318_ = new_n170_ ? ~new_n181_ : (~new_n89_ | (~new_n184_ & new_n88_));
  assign new_n319_ = new_n102_ ? (new_n87_ ? new_n321_ : new_n322_) : new_n320_;
  assign new_n320_ = new_n87_ ? ~new_n109_ : (new_n192_ ? new_n188_ : ~new_n191_);
  assign new_n321_ = new_n105_ ? ~new_n194_ : (new_n106_ ? new_n195_ : ~new_n109_);
  assign new_n322_ = new_n192_ ? new_n123_ : (new_n197_ ? ~new_n198_ : new_n117_);
  assign new_n323_ = new_n139_ ? (new_n337_ | (~new_n333_ & ~new_n102_)) : new_n324_;
  assign new_n324_ = (new_n325_ | new_n329_ | new_n119_) & (new_n330_ | new_n332_ | ~new_n119_);
  assign new_n325_ = new_n118_ & ((~new_n326_ & ~new_n117_) | (~new_n115_ & new_n328_ & new_n117_));
  assign new_n326_ = (new_n105_ | ~new_n106_ | new_n223_) & (new_n113_ | new_n327_ | ~new_n223_);
  assign new_n327_ = \i[38]  & \i[39]  & (\i[37]  | \i[36]  | \i[35] );
  assign new_n328_ = ~new_n116_ & new_n114_;
  assign new_n329_ = new_n110_ & new_n192_ & new_n103_ & ~new_n87_ & ~new_n118_;
  assign new_n330_ = new_n96_ & ~new_n331_ & ~new_n299_ & ~new_n87_ & ~new_n123_;
  assign new_n331_ = ~\i[63]  & ~\i[64]  & (~\i[62]  | ~\i[61]  | ~\i[60] );
  assign new_n332_ = new_n89_ & new_n93_ & ~new_n96_ & ~new_n91_ & ~new_n88_;
  assign new_n333_ = (new_n334_ | ~new_n93_) & (~new_n336_ | new_n93_ | new_n87_ | new_n183_);
  assign new_n334_ = ~new_n335_ & (new_n176_ | new_n124_ | ~new_n129_ | ~new_n87_);
  assign new_n335_ = ~new_n88_ & new_n207_ & new_n89_ & (\i[64]  | \i[63] );
  assign new_n336_ = new_n89_ & (\i[24]  | (\i[22]  & \i[23] ));
  assign new_n337_ = new_n338_ & (~new_n87_ | (~new_n135_ & ~new_n131_ & ~new_n299_));
  assign new_n338_ = ~new_n137_ & new_n102_ & (new_n87_ | (~new_n101_ & ~new_n117_));
  assign new_n339_ = (new_n340_ | new_n94_) & (new_n346_ | new_n347_ | new_n213_ | ~new_n94_);
  assign new_n340_ = (~new_n344_ | ~new_n107_ | ~new_n170_) & (new_n107_ | new_n170_ | ~new_n341_ | ~new_n263_);
  assign new_n341_ = \i[69]  & \i[68]  & \i[67]  & new_n342_ & new_n343_;
  assign new_n342_ = \i[22]  & \i[21]  & \i[20]  & ~new_n100_ & ~\i[4] ;
  assign new_n343_ = \i[23]  & \i[24]  & (\i[66]  | \i[65] );
  assign new_n344_ = ~new_n308_ & new_n345_ & (~new_n89_ | (\i[51]  & \i[52] ));
  assign new_n345_ = \i[13]  & \i[14]  & (\i[12]  | \i[11]  | \i[10] );
  assign new_n346_ = ~\i[29]  & (new_n149_ ? (~new_n284_ | new_n259_) : ~new_n182_);
  assign new_n347_ = \i[29]  & (new_n207_ | ~new_n348_);
  assign new_n348_ = new_n257_ & \i[18]  & \i[19]  & (\i[17]  | ~new_n229_);
  assign new_n349_ = (new_n350_ | ~new_n213_) & (new_n357_ | new_n210_ | new_n212_ | new_n213_);
  assign new_n350_ = (~\i[69]  & (~\i[67]  | ~\i[68] )) ? ~new_n356_ : new_n351_;
  assign new_n351_ = ~new_n352_ & (new_n248_ | ~new_n354_ | ~new_n355_);
  assign new_n352_ = new_n262_ & new_n353_ & ~new_n283_ & new_n228_;
  assign new_n353_ = new_n248_ & (\i[29]  | (\i[28]  & (\i[27]  | \i[26] )));
  assign new_n354_ = ~\i[14]  & ~\i[12]  & ~\i[13] ;
  assign new_n355_ = ~\i[19]  | (~\i[16]  & ~\i[17]  & ~\i[18]  & ~\i[15] );
  assign new_n356_ = ~\i[34]  & (~\i[32]  | ~\i[33]  | ~\i[31] );
  assign new_n357_ = (~new_n358_ | ~new_n175_) & (~new_n211_ | new_n175_ | new_n169_ | \i[29] );
  assign new_n358_ = \i[9]  & \i[8]  & ~new_n144_ & ~new_n359_;
  assign new_n359_ = \i[14]  & (~new_n234_ | ~new_n247_);
  assign new_n360_ = \i[29]  ? new_n365_ : (new_n263_ ? new_n363_ : new_n361_);
  assign new_n361_ = (~new_n224_ & ~new_n130_) | (~new_n362_ & ~new_n216_ & new_n130_);
  assign new_n362_ = ~new_n219_ & ~new_n165_ & ~new_n87_ & ~new_n155_;
  assign new_n363_ = (~new_n261_ | ~new_n103_) & (~new_n169_ | new_n103_ | new_n205_ | ~new_n364_);
  assign new_n364_ = \i[14]  & \i[13]  & new_n189_ & \i[12] ;
  assign new_n365_ = (~new_n368_ & ~new_n366_ & ~new_n101_) | (new_n101_ & (new_n223_ | ~new_n232_));
  assign new_n366_ = ~new_n250_ & (new_n245_ ? (~new_n249_ | new_n367_) : new_n246_);
  assign new_n367_ = new_n169_ & new_n190_;
  assign new_n368_ = new_n189_ & new_n241_ & new_n250_ & ~new_n170_ & ~\i[64] ;
  assign new_n369_ = ~new_n101_ & (new_n370_ | (~new_n127_ & new_n262_ & new_n372_));
  assign new_n370_ = new_n331_ & new_n371_ & ~new_n155_ & new_n102_;
  assign new_n371_ = ~\i[33]  & new_n257_ & \i[34]  & (~\i[32]  ^ new_n145_);
  assign new_n372_ = new_n212_ & new_n267_ & ~new_n173_ & ~new_n221_;
  assign \o[4]  = new_n374_ ? (~new_n375_ ^ new_n376_) : (new_n375_ ^ new_n376_);
  assign new_n374_ = (~new_n360_ & new_n369_) | (~new_n277_ & (~new_n360_ | new_n369_));
  assign new_n375_ = (~new_n310_ & ~new_n349_) | (~new_n278_ & (~new_n310_ | ~new_n349_));
  assign new_n376_ = (~new_n339_ & new_n323_) | (~new_n311_ & (~new_n339_ | new_n323_));
  assign \o[5]  = (new_n375_ & new_n376_) | (new_n374_ & (new_n375_ | new_n376_));
endmodule


