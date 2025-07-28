// Benchmark "TreeLUT" written by ABC on Tue Jun 10 11:10:18 2025

module TreeLUT ( 
    \i[0] , \i[1] , \i[2] , \i[3] , \i[4] , \i[5] , \i[6] , \i[7] , \i[8] ,
    \i[9] , \i[10] , \i[11] , \i[12] , \i[13] , \i[14] , \i[15] , \i[16] ,
    \i[17] , \i[18] , \i[19] , \i[20] , \i[21] , \i[22] , \i[23] , \i[24] ,
    \i[25] , \i[26] , \i[27] , \i[28] , \i[29] , \i[30] , \i[31] , \i[32] ,
    \i[33] , \i[34] , \i[35] , \i[36] , \i[37] , \i[38] , \i[39] , \i[40] ,
    \i[41] , \i[42] , \i[43] , \i[44] , \i[45] , \i[46] , \i[47] , \i[48] ,
    \i[49] , \i[50] , \i[51] , \i[52] , \i[53] , \i[54] , \i[55] , \i[56] ,
    \i[57] , \i[58] , \i[59] , \i[60] , \i[61] , \i[62] , \i[63] ,
    \o[0] , \o[1] , \o[2]   );
  input  \i[0] , \i[1] , \i[2] , \i[3] , \i[4] , \i[5] , \i[6] , \i[7] ,
    \i[8] , \i[9] , \i[10] , \i[11] , \i[12] , \i[13] , \i[14] , \i[15] ,
    \i[16] , \i[17] , \i[18] , \i[19] , \i[20] , \i[21] , \i[22] , \i[23] ,
    \i[24] , \i[25] , \i[26] , \i[27] , \i[28] , \i[29] , \i[30] , \i[31] ,
    \i[32] , \i[33] , \i[34] , \i[35] , \i[36] , \i[37] , \i[38] , \i[39] ,
    \i[40] , \i[41] , \i[42] , \i[43] , \i[44] , \i[45] , \i[46] , \i[47] ,
    \i[48] , \i[49] , \i[50] , \i[51] , \i[52] , \i[53] , \i[54] , \i[55] ,
    \i[56] , \i[57] , \i[58] , \i[59] , \i[60] , \i[61] , \i[62] , \i[63] ;
  output \o[0] , \o[1] , \o[2] ;
  wire new_n70_, new_n71_, new_n72_, new_n73_, new_n74_, new_n75_, new_n76_,
    new_n77_, new_n78_, new_n79_, new_n80_, new_n81_, new_n82_, new_n83_,
    new_n84_, new_n85_, new_n86_, new_n87_, new_n88_, new_n89_, new_n90_,
    new_n91_, new_n92_, new_n93_, new_n94_, new_n95_, new_n96_, new_n97_,
    new_n98_, new_n99_, new_n100_, new_n101_, new_n102_, new_n103_,
    new_n104_, new_n105_, new_n106_, new_n107_, new_n108_, new_n109_,
    new_n110_, new_n111_, new_n112_, new_n113_, new_n114_, new_n115_,
    new_n116_, new_n117_, new_n118_, new_n119_, new_n120_, new_n121_,
    new_n122_, new_n123_, new_n124_, new_n125_, new_n126_, new_n127_,
    new_n128_, new_n129_, new_n130_, new_n131_, new_n132_, new_n133_,
    new_n134_, new_n135_, new_n136_, new_n137_, new_n138_, new_n139_,
    new_n140_, new_n141_, new_n142_, new_n143_, new_n144_, new_n145_,
    new_n146_, new_n147_, new_n148_, new_n149_, new_n150_, new_n151_,
    new_n152_, new_n153_, new_n154_, new_n155_, new_n156_, new_n157_,
    new_n158_, new_n159_, new_n160_, new_n161_, new_n162_, new_n163_,
    new_n164_, new_n165_, new_n166_, new_n167_, new_n168_, new_n169_,
    new_n170_, new_n171_, new_n172_, new_n173_, new_n174_, new_n175_,
    new_n176_, new_n177_, new_n178_, new_n179_, new_n180_, new_n181_,
    new_n182_, new_n183_, new_n184_, new_n185_, new_n186_, new_n187_,
    new_n188_, new_n189_, new_n190_, new_n191_, new_n192_, new_n193_,
    new_n194_, new_n195_, new_n196_, new_n197_, new_n198_, new_n199_,
    new_n200_, new_n201_, new_n202_, new_n203_, new_n205_, new_n206_;
  assign \o[0]  = ~new_n70_ & ~new_n200_;
  assign new_n70_ = ~new_n71_ & (new_n192_ | (~new_n195_ & (~new_n197_ | new_n186_)));
  assign new_n71_ = (~new_n168_ | (new_n167_ & (new_n185_ | ~new_n158_))) & new_n72_ & (new_n167_ | new_n185_ | ~new_n158_);
  assign new_n72_ = new_n167_ | (new_n151_ & (~new_n158_ | (new_n73_ & new_n118_)));
  assign new_n73_ = new_n74_ & new_n108_;
  assign new_n74_ = (new_n75_ | ~new_n105_) & (new_n98_ | new_n106_ | ~new_n107_ | new_n105_);
  assign new_n75_ = (~new_n88_ & ~new_n97_ & (new_n94_ | ~new_n93_)) | (new_n76_ & new_n97_);
  assign new_n76_ = new_n86_ | ((new_n77_ | ~new_n80_) & (new_n85_ | ~new_n87_ | new_n80_));
  assign new_n77_ = (~new_n78_ | new_n83_) & (new_n81_ | new_n84_ | ~new_n83_);
  assign new_n78_ = \i[3]  & \i[2]  & \i[1]  & new_n79_ & \i[0] ;
  assign new_n79_ = new_n80_ & (\i[5]  | \i[4] );
  assign new_n80_ = \i[6]  & \i[7] ;
  assign new_n81_ = new_n82_ & ~\i[10]  & ~\i[11] ;
  assign new_n82_ = ~\i[8]  & ~\i[9] ;
  assign new_n83_ = \i[7]  & \i[5]  & \i[6] ;
  assign new_n84_ = ~\i[3]  & ~\i[1]  & ~\i[2] ;
  assign new_n85_ = new_n86_ & (\i[13]  | \i[12] );
  assign new_n86_ = \i[14]  & \i[15] ;
  assign new_n87_ = ~\i[7]  & ~\i[6]  & ~\i[4]  & ~\i[5] ;
  assign new_n88_ = ~new_n90_ & ~new_n85_ & new_n89_ & (new_n92_ | new_n91_);
  assign new_n89_ = \i[15]  & (\i[14]  | \i[13] );
  assign new_n90_ = \i[31]  & \i[29]  & \i[30] ;
  assign new_n91_ = \i[15]  & (\i[14]  | (\i[13]  & \i[12] ));
  assign new_n92_ = ~\i[10]  & ~\i[11]  & (~\i[9]  | ~\i[8] );
  assign new_n93_ = ~new_n85_ & new_n90_ & (new_n91_ | (~\i[10]  & ~\i[11] ));
  assign new_n94_ = ~new_n96_ & new_n91_ & (~new_n95_ | ~new_n80_);
  assign new_n95_ = \i[4]  & \i[5] ;
  assign new_n96_ = ~\i[7]  & (~\i[6]  | ~\i[5] );
  assign new_n97_ = ~\i[11]  & ~\i[9]  & ~\i[10] ;
  assign new_n98_ = new_n99_ & (new_n103_ | new_n101_ | \i[7]  | ~new_n104_);
  assign new_n99_ = ~new_n102_ & (~new_n100_ | (\i[2]  & \i[3] ) | (~\i[1]  & ~\i[2]  & ~\i[3] ));
  assign new_n100_ = new_n101_ & (~\i[27]  | (~\i[25]  & ~\i[26] ));
  assign new_n101_ = \i[31]  & \i[30]  & \i[28]  & \i[29] ;
  assign new_n102_ = ~\i[31]  & ~\i[30]  & ~\i[28]  & ~\i[29] ;
  assign new_n103_ = \i[7]  & (\i[5]  | \i[6]  | \i[4] );
  assign new_n104_ = ~\i[31]  & ~\i[29]  & ~\i[30] ;
  assign new_n105_ = ~\i[11]  & (~\i[10]  | new_n82_);
  assign new_n106_ = new_n102_ & \i[7] ;
  assign new_n107_ = ~\i[11]  & (~\i[10]  | ~\i[9] );
  assign new_n108_ = ~new_n109_ & ((new_n86_ & new_n117_) | ~new_n116_ | new_n113_);
  assign new_n109_ = new_n112_ & (new_n97_ | (new_n85_ & new_n92_) | (new_n110_ & ~new_n92_));
  assign new_n110_ = \i[31]  & new_n111_ & \i[30] ;
  assign new_n111_ = \i[10]  & \i[11] ;
  assign new_n112_ = (new_n82_ | ~new_n111_) & (new_n86_ | ~new_n97_);
  assign new_n113_ = new_n114_ & (~new_n115_ | (~new_n80_ & \i[27] ));
  assign new_n114_ = \i[9]  & \i[8]  & ~new_n86_ & new_n111_;
  assign new_n115_ = \i[30]  & \i[31]  & (\i[29]  | \i[28] );
  assign new_n116_ = new_n91_ & ~new_n82_ & new_n111_;
  assign new_n117_ = ~\i[31]  & (~\i[29]  | ~\i[30]  | ~\i[28] );
  assign new_n118_ = new_n119_ & new_n134_;
  assign new_n119_ = (new_n126_ & ~new_n91_) | (~new_n120_ & ~new_n132_ & new_n91_);
  assign new_n120_ = new_n97_ & ~new_n121_ & ~new_n86_;
  assign new_n121_ = (~new_n124_ | ~new_n83_) & (new_n125_ | ~new_n122_ | new_n83_);
  assign new_n122_ = new_n79_ ? ~new_n81_ : ~new_n123_;
  assign new_n123_ = ~\i[3]  & ~\i[2]  & ~\i[0]  & ~\i[1] ;
  assign new_n124_ = \i[3]  & \i[0]  & ~\i[2]  & ~new_n90_ & ~\i[1] ;
  assign new_n125_ = ~\i[7]  & (~\i[6]  | (~\i[5]  & ~\i[4] ));
  assign new_n126_ = (new_n127_ | new_n130_ | new_n111_) & (new_n131_ | ~\i[15]  | ~new_n111_);
  assign new_n127_ = ~new_n97_ & (new_n92_ | ~new_n128_ | ~new_n129_);
  assign new_n128_ = \i[11]  & (\i[10]  | (\i[9]  & \i[8] ));
  assign new_n129_ = \i[31]  & (\i[29]  | \i[30]  | \i[28] );
  assign new_n130_ = new_n97_ & (~\i[15]  | (new_n83_ & new_n80_));
  assign new_n131_ = ~\i[30]  & ~\i[31]  & (~\i[29]  | ~\i[28] );
  assign new_n132_ = ~new_n97_ & new_n133_ & (\i[27]  | (\i[25]  & \i[26] ));
  assign new_n133_ = \i[9]  & \i[8]  & new_n111_ & ~new_n86_ & ~new_n80_;
  assign new_n134_ = (new_n135_ | ~new_n85_) & (new_n148_ | ~new_n150_ | new_n85_);
  assign new_n135_ = (new_n144_ | ~new_n103_ | \i[11] ) & (new_n136_ | ~new_n117_ | ~\i[11] );
  assign new_n136_ = (new_n142_ | new_n139_ | new_n140_) & (~new_n137_ | new_n143_);
  assign new_n137_ = new_n139_ & (new_n128_ | new_n138_);
  assign new_n138_ = ~\i[7]  & (~\i[6]  | ~new_n95_);
  assign new_n139_ = \i[11]  & (\i[10]  | \i[9] );
  assign new_n140_ = new_n141_ & (~new_n125_ | (~\i[30]  & ~\i[31] ));
  assign new_n141_ = \i[13]  & new_n86_ & \i[12] ;
  assign new_n142_ = ~new_n141_ & ((~new_n95_ & ~\i[6]  & \i[7] ) | (~\i[7]  & (new_n95_ | \i[6] )));
  assign new_n143_ = \i[19]  & \i[18]  & \i[16]  & \i[17] ;
  assign new_n144_ = new_n147_ ? ~new_n145_ : (new_n146_ | (new_n80_ & new_n95_));
  assign new_n145_ = ~new_n79_ & ~new_n107_ & \i[3]  & (\i[2]  | \i[1] );
  assign new_n146_ = ~\i[2]  & ~\i[3]  & new_n83_ & (~\i[1]  | ~\i[0] );
  assign new_n147_ = ~\i[11]  & (~\i[9]  | ~\i[10]  | ~\i[8] );
  assign new_n148_ = ~new_n149_ & (~new_n139_ | (~new_n111_ & new_n103_));
  assign new_n149_ = \i[11]  & \i[8]  & new_n138_ & ~\i[9]  & ~\i[10] ;
  assign new_n150_ = ~\i[15]  & ~\i[13]  & ~\i[14] ;
  assign new_n151_ = (~new_n158_ & ~new_n164_) | (new_n152_ & (~new_n158_ | ~new_n164_));
  assign new_n152_ = ~new_n156_ & ~new_n143_ & (new_n104_ | new_n153_);
  assign new_n153_ = ~new_n154_ & (~new_n155_ | (~new_n91_ & (~new_n90_ | ~new_n89_)));
  assign new_n154_ = new_n101_ & ~new_n96_ & ~new_n105_ & ~new_n103_;
  assign new_n155_ = ~new_n101_ & ~new_n139_ & (~new_n91_ | (~new_n85_ & new_n131_));
  assign new_n156_ = \i[15]  & new_n104_ & ~new_n107_ & ~new_n85_ & ~new_n157_;
  assign new_n157_ = (new_n147_ | ~\i[14] ) & (~\i[12]  | ~\i[13]  | \i[14] );
  assign new_n158_ = ~new_n159_ ^ ~new_n163_;
  assign new_n159_ = ~new_n161_ & ((~\i[14]  & ~\i[15] ) | new_n162_ | new_n160_);
  assign new_n160_ = \i[15]  & ~new_n104_ & new_n128_;
  assign new_n161_ = ~new_n89_ & new_n162_ & (new_n90_ ? ~new_n143_ : new_n131_);
  assign new_n162_ = \i[15]  & (\i[13]  | \i[14]  | \i[12] );
  assign new_n163_ = new_n162_ & new_n131_ & new_n89_ & ~new_n143_ & ~new_n91_;
  assign new_n164_ = ~new_n143_ & ~new_n139_ & ~new_n165_ & ~new_n104_;
  assign new_n165_ = ~new_n162_ | (~new_n166_ & (new_n90_ | new_n92_ | ~new_n115_));
  assign new_n166_ = ~new_n89_ & new_n92_ & \i[7]  & (\i[6]  | new_n95_);
  assign new_n167_ = ~new_n159_ & new_n163_;
  assign new_n168_ = ~new_n169_ & new_n181_;
  assign new_n169_ = (new_n170_ | new_n175_ | ~new_n117_) & (~new_n180_ | ~new_n101_ | new_n117_);
  assign new_n170_ = ~new_n171_ & ~\i[11] ;
  assign new_n171_ = (new_n172_ | new_n173_ | ~new_n104_) & (new_n174_ | ~new_n103_ | new_n104_);
  assign new_n172_ = new_n85_ & (\i[7]  ? (new_n107_ ? new_n103_ : \i[6] ) : ~\i[6] );
  assign new_n173_ = \i[7]  & new_n86_ & ~new_n85_ & new_n107_;
  assign new_n174_ = (new_n80_ & ((\i[5]  & new_n147_) | (\i[4]  & (\i[5]  | new_n147_)))) | (new_n107_ & new_n147_);
  assign new_n175_ = ~new_n178_ & \i[11]  & (~new_n176_ | new_n137_);
  assign new_n176_ = ~new_n177_ & new_n85_ & (new_n139_ | (~new_n125_ & new_n141_));
  assign new_n177_ = ~\i[14]  & ~\i[15]  & (~\i[13]  | ~\i[12] );
  assign new_n178_ = new_n177_ & (new_n179_ | (~new_n139_ & (\i[7]  | \i[6] )));
  assign new_n179_ = ~new_n111_ & new_n139_ & (new_n125_ | new_n103_);
  assign new_n180_ = ~\i[11]  & ~\i[10]  & ~new_n125_ & ~new_n96_;
  assign new_n181_ = new_n96_ & (new_n182_ | (~new_n87_ & new_n184_ & new_n183_));
  assign new_n182_ = ~new_n101_ & new_n86_ & new_n129_ & (\i[7]  | \i[6] );
  assign new_n183_ = \i[11]  & ~new_n143_ & ~new_n150_;
  assign new_n184_ = ~new_n129_ & (~\i[11]  | (~\i[10]  & new_n82_));
  assign new_n185_ = ~new_n169_ ^ ~new_n181_;
  assign new_n186_ = new_n187_ & (new_n118_ | new_n190_ | ~new_n191_);
  assign new_n187_ = new_n188_ & ((~new_n152_ & (~new_n181_ | new_n164_)) | new_n169_ | (~new_n181_ & new_n164_));
  assign new_n188_ = ~new_n189_ & ((~new_n181_ & new_n74_) | new_n164_ | ~new_n152_);
  assign new_n189_ = (new_n152_ | (new_n167_ & (~new_n164_ | ~new_n158_))) & (new_n167_ | (~new_n164_ & (~new_n108_ | ~new_n158_)));
  assign new_n190_ = ~new_n152_ & new_n164_;
  assign new_n191_ = ~new_n152_ ^ ~new_n164_;
  assign new_n192_ = new_n193_ & (~new_n134_ | (new_n185_ & new_n119_ & new_n73_));
  assign new_n193_ = ~new_n168_ & new_n194_ & (~new_n134_ | (new_n191_ & new_n158_));
  assign new_n194_ = ~new_n190_ & ~new_n167_;
  assign new_n195_ = new_n196_ & (~new_n119_ | (new_n185_ & new_n73_ & new_n134_));
  assign new_n196_ = ~new_n168_ & new_n194_ & (~new_n119_ | (new_n191_ & new_n158_));
  assign new_n197_ = ~new_n168_ & new_n199_ & (~new_n108_ | (new_n185_ & new_n198_));
  assign new_n198_ = new_n134_ & new_n74_ & new_n119_;
  assign new_n199_ = ~new_n167_ & ((~new_n108_ & (~new_n164_ | new_n152_)) | (new_n158_ & ~new_n164_ & new_n152_));
  assign new_n200_ = new_n202_ & ~new_n201_ & ~new_n203_;
  assign new_n201_ = (new_n169_ | (new_n167_ & (~new_n181_ | ~new_n158_))) & (new_n167_ | (~new_n181_ & (~new_n74_ | ~new_n158_)));
  assign new_n202_ = ~new_n169_ | new_n181_ | (~new_n164_ & new_n108_ & new_n118_);
  assign new_n203_ = ~new_n152_ & ((~new_n181_ & new_n164_) | (new_n169_ & (~new_n181_ | new_n164_)));
  assign \o[1]  = new_n205_ & (~new_n206_ | (~new_n186_ & ~new_n197_));
  assign new_n205_ = ~new_n71_ & ~new_n200_;
  assign new_n206_ = ~new_n192_ & ~new_n195_;
  assign \o[2]  = new_n205_ & new_n206_;
endmodule


