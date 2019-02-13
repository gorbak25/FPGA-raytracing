////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fixed_mul_translate.v
// /___/   /\     Timestamp: Sun Jan 13 21:49:50 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim fixed_mul.ngd fixed_mul_translate.v 
// Device	: 5vfx130tff1738-2
// Input file	: fixed_mul.ngd
// Output file	: /home/test/FPGA/raytracing/netgen/translate/fixed_mul_translate.v
// # of Modules	: 1
// Design Name	: fixed_mul
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fixed_mul (
r, a, b
);
  output [31 : 0] r;
  input [31 : 0] a;
  input [31 : 0] b;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_0;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_1;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_10;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_11;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_12;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_13;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_14;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_15;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_16;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_17;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_18;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_19;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_2;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_20;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_21;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_22;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_23;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_24;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_25;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_26;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_27;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_28;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_29;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_3;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_30;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_31;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_32;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_33;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_34;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_35;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_36;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_37;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_38;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_39;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_4;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_40;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_41;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_42;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_43;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_44;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_45;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_46;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_47;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_5;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_6;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_7;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_8;
  wire Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_9;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_0;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_1;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_10;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_11;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_12;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_13;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_14;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_15;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_16;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_17;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_18;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_19;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_2;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_20;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_21;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_22;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_23;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_24;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_25;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_26;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_27;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_28;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_29;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_3;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_4;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_5;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_6;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_7;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_8;
  wire Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_9;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_0;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_1;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_10;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_11;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_12;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_13;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_14;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_15;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_16;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_17;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_18;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_19;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_2;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_20;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_21;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_22;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_23;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_24;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_25;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_26;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_27;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_28;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_29;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_3;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_30;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_31;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_32;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_33;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_34;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_35;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_36;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_37;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_38;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_39;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_4;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_40;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_41;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_42;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_43;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_44;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_45;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_46;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_47;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_5;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_6;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_7;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_8;
  wire Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_9;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_0;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_1;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_10;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_11;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_12;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_13;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_14;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_15;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_16;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_17;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_18;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_19;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_2;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_20;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_21;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_22;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_23;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_24;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_25;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_26;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_27;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_28;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_29;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_3;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_4;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_5;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_6;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_7;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_8;
  wire Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_9;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_0;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_1;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_10;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_11;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_12;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_13;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_14;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_15;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_16;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_17;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_18;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_19;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_2;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_20;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_21;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_22;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_23;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_24;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_25;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_26;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_27;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_28;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_29;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_3;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_30;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_31;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_32;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_33;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_34;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_35;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_36;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_37;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_38;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_39;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_4;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_40;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_41;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_42;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_43;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_44;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_45;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_46;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_47;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_5;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_6;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_7;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_8;
  wire Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_9;
  wire N0;
  wire N01;
  wire N02;
  wire N1;
  wire N2;
  wire a_0_IBUF_241;
  wire a_10_IBUF_242;
  wire a_11_IBUF_243;
  wire a_12_IBUF_244;
  wire a_13_IBUF_245;
  wire a_14_IBUF_246;
  wire a_15_IBUF_247;
  wire a_16_IBUF_248;
  wire a_17_IBUF_249;
  wire a_18_IBUF_250;
  wire a_19_IBUF_251;
  wire a_1_IBUF_252;
  wire a_20_IBUF_253;
  wire a_21_IBUF_254;
  wire a_22_IBUF_255;
  wire a_23_IBUF_256;
  wire a_24_IBUF_257;
  wire a_25_IBUF_258;
  wire a_26_IBUF_259;
  wire a_27_IBUF_260;
  wire a_28_IBUF_261;
  wire a_29_IBUF_262;
  wire a_2_IBUF_263;
  wire a_30_IBUF_264;
  wire a_31_IBUF_265;
  wire a_3_IBUF_266;
  wire a_4_IBUF_267;
  wire a_5_IBUF_268;
  wire a_6_IBUF_269;
  wire a_7_IBUF_270;
  wire a_8_IBUF_271;
  wire a_9_IBUF_272;
  wire b_0_IBUF_305;
  wire b_10_IBUF_306;
  wire b_11_IBUF_307;
  wire b_12_IBUF_308;
  wire b_13_IBUF_309;
  wire b_14_IBUF_310;
  wire b_15_IBUF_311;
  wire b_16_IBUF_312;
  wire b_17_IBUF_313;
  wire b_18_IBUF_314;
  wire b_19_IBUF_315;
  wire b_1_IBUF_316;
  wire b_20_IBUF_317;
  wire b_21_IBUF_318;
  wire b_22_IBUF_319;
  wire b_23_IBUF_320;
  wire b_24_IBUF_321;
  wire b_25_IBUF_322;
  wire b_26_IBUF_323;
  wire b_27_IBUF_324;
  wire b_28_IBUF_325;
  wire b_29_IBUF_326;
  wire b_2_IBUF_327;
  wire b_30_IBUF_328;
  wire b_31_IBUF_329;
  wire b_3_IBUF_330;
  wire b_4_IBUF_331;
  wire b_5_IBUF_332;
  wire b_6_IBUF_333;
  wire b_7_IBUF_334;
  wire b_8_IBUF_335;
  wire b_9_IBUF_336;
  wire r_0_OBUF_369;
  wire r_10_OBUF_370;
  wire r_11_OBUF_371;
  wire r_12_OBUF_372;
  wire r_13_OBUF_373;
  wire r_14_OBUF_374;
  wire r_15_OBUF_375;
  wire r_16_OBUF_376;
  wire r_17_OBUF_377;
  wire r_18_OBUF_378;
  wire r_19_OBUF_379;
  wire r_1_OBUF_380;
  wire r_20_OBUF_381;
  wire r_21_OBUF_382;
  wire r_22_OBUF_383;
  wire r_23_OBUF_384;
  wire r_24_OBUF_385;
  wire r_25_OBUF_386;
  wire r_26_OBUF_387;
  wire r_27_OBUF_388;
  wire r_28_OBUF_389;
  wire r_29_OBUF_390;
  wire r_2_OBUF_391;
  wire r_30_OBUF_392;
  wire r_31_OBUF_393;
  wire r_3_OBUF_394;
  wire r_4_OBUF_395;
  wire r_5_OBUF_396;
  wire r_6_OBUF_397;
  wire r_7_OBUF_398;
  wire r_8_OBUF_399;
  wire r_9_OBUF_400;
  wire r_cmp_gt0000;
  wire NLW_Mmult_tmp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp_OVERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp_UNDERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp_CARRYCASCIN_UNCONNECTED;
  wire NLW_Mmult_tmp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Mmult_tmp_MULTSIGNIN_UNCONNECTED;
  wire NLW_Mmult_tmp_MULTSIGNOUT_UNCONNECTED;
  wire GND;
  wire \NLW_Mmult_tmp_PCIN[47]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[46]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[45]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[44]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[43]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[42]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[41]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[40]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[39]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[38]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[37]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[36]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[35]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[34]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[33]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[32]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[31]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[30]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_PCIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[47]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[46]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[45]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[44]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[43]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[42]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[41]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[40]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[39]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[38]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[37]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[36]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[35]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[34]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[33]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[32]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[31]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[30]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_P[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_BCOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_ACIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp_CARRYOUT[0]_UNCONNECTED ;
  wire NLW_Mmult_tmp1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp1_OVERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp1_UNDERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp1_CARRYCASCIN_UNCONNECTED;
  wire NLW_Mmult_tmp1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Mmult_tmp1_MULTSIGNIN_UNCONNECTED;
  wire NLW_Mmult_tmp1_MULTSIGNOUT_UNCONNECTED;
  wire \NLW_Mmult_tmp1_BCIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[47]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[46]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[45]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[44]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[43]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[42]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[41]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[40]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[39]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[38]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[37]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[36]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[35]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[34]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[33]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[32]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[31]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[30]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_P[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_BCOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_ACOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp1_CARRYOUT[0]_UNCONNECTED ;
  wire NLW_Mmult_tmp2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp2_PATTERNDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp2_OVERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp2_UNDERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp2_CARRYCASCIN_UNCONNECTED;
  wire NLW_Mmult_tmp2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Mmult_tmp2_MULTSIGNIN_UNCONNECTED;
  wire NLW_Mmult_tmp2_MULTSIGNOUT_UNCONNECTED;
  wire \NLW_Mmult_tmp2_BCIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[47]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[46]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[45]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[44]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[43]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[42]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[41]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[40]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[39]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[38]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[37]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[36]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[35]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[34]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[33]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[32]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[31]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[30]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_P[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_BCOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_ACIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp2_CARRYOUT[0]_UNCONNECTED ;
  wire NLW_Mmult_tmp3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp3_PATTERNDETECT_UNCONNECTED;
  wire NLW_Mmult_tmp3_OVERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp3_UNDERFLOW_UNCONNECTED;
  wire NLW_Mmult_tmp3_CARRYCASCIN_UNCONNECTED;
  wire NLW_Mmult_tmp3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Mmult_tmp3_MULTSIGNIN_UNCONNECTED;
  wire NLW_Mmult_tmp3_MULTSIGNOUT_UNCONNECTED;
  wire \NLW_Mmult_tmp3_BCIN[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCIN[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[47]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[46]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[45]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[44]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[43]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[42]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[41]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[40]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[39]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[38]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[37]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[36]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[35]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[34]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[33]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[32]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[31]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[30]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_PCOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[47]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[46]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[45]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[44]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[43]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[42]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[41]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[40]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[39]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[38]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[37]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[36]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[35]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[34]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[33]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[32]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[31]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_P[30]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_BCOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[29]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[28]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[27]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[26]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[25]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[24]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[23]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[22]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[21]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[20]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[19]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[18]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[17]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[16]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[15]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[14]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[13]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[12]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[11]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[10]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[9]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[8]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[7]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[6]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[5]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[4]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_ACOUT[0]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_Mmult_tmp3_CARRYOUT[0]_UNCONNECTED ;
  wire [62 : 24] tmp;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .AREG ( 0 ),
    .ACASCREG ( 0 ),
    .BREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  Mmult_tmp (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N0),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(N0),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(NLW_Mmult_tmp_PATTERNBDETECT_UNCONNECTED),
    .PATTERNDETECT(NLW_Mmult_tmp_PATTERNDETECT_UNCONNECTED),
    .OVERFLOW(NLW_Mmult_tmp_OVERFLOW_UNCONNECTED),
    .UNDERFLOW(NLW_Mmult_tmp_UNDERFLOW_UNCONNECTED),
    .CARRYCASCIN(NLW_Mmult_tmp_CARRYCASCIN_UNCONNECTED),
    .CARRYCASCOUT(NLW_Mmult_tmp_CARRYCASCOUT_UNCONNECTED),
    .MULTSIGNIN(NLW_Mmult_tmp_MULTSIGNIN_UNCONNECTED),
    .MULTSIGNOUT(NLW_Mmult_tmp_MULTSIGNOUT_UNCONNECTED),
    .A({GND, GND, GND, GND, GND, N0, N0, N0, N0, N0, N0, N0, N0, b_16_IBUF_312, b_15_IBUF_311, b_14_IBUF_310, b_13_IBUF_309, b_12_IBUF_308, 
b_11_IBUF_307, b_10_IBUF_306, b_9_IBUF_336, b_8_IBUF_335, b_7_IBUF_334, b_6_IBUF_333, b_5_IBUF_332, b_4_IBUF_331, b_3_IBUF_330, b_2_IBUF_327, 
b_1_IBUF_316, b_0_IBUF_305}),
    .PCIN({\NLW_Mmult_tmp_PCIN[47]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[46]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[45]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[44]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[43]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[42]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[41]_UNCONNECTED 
, \NLW_Mmult_tmp_PCIN[40]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[39]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[38]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[37]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[36]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[35]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[34]_UNCONNECTED 
, \NLW_Mmult_tmp_PCIN[33]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[32]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[31]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[30]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[29]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[28]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[27]_UNCONNECTED 
, \NLW_Mmult_tmp_PCIN[26]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[25]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[24]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[23]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[22]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[21]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[20]_UNCONNECTED 
, \NLW_Mmult_tmp_PCIN[19]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[18]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[17]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[16]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[15]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[14]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[13]_UNCONNECTED 
, \NLW_Mmult_tmp_PCIN[12]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[11]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[10]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[9]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[8]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[7]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[6]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[5]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[4]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[3]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[2]_UNCONNECTED , 
\NLW_Mmult_tmp_PCIN[1]_UNCONNECTED , \NLW_Mmult_tmp_PCIN[0]_UNCONNECTED }),
    .B({N0, a_16_IBUF_248, a_15_IBUF_247, a_14_IBUF_246, a_13_IBUF_245, a_12_IBUF_244, a_11_IBUF_243, a_10_IBUF_242, a_9_IBUF_272, a_8_IBUF_271, 
a_7_IBUF_270, a_6_IBUF_269, a_5_IBUF_268, a_4_IBUF_267, a_3_IBUF_266, a_2_IBUF_263, a_1_IBUF_252, a_0_IBUF_241}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N0, N0, N1, N0, N1}),
    .BCIN({\NLW_Mmult_tmp_BCIN[17]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[16]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[15]_UNCONNECTED , 
\NLW_Mmult_tmp_BCIN[14]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[13]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[12]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[11]_UNCONNECTED 
, \NLW_Mmult_tmp_BCIN[10]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[9]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[8]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[7]_UNCONNECTED 
, \NLW_Mmult_tmp_BCIN[6]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[5]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[4]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[3]_UNCONNECTED , 
\NLW_Mmult_tmp_BCIN[2]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[1]_UNCONNECTED , \NLW_Mmult_tmp_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_47, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_46, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_45, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_44, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_43, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_42, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_41, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_40, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_39, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_38, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_37, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_36, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_35, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_34, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_33, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_32, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_31, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_30, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_29, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_28, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_27, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_26, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_25, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_24, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_23, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_22, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_21, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_20, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_19, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_18, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_17, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_16, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_15, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_14, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_13, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_12, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_11, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_10, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_9, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_8, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_7, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_6, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_5
, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_4, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_3, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_2, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_1, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_0}),
    .P({\NLW_Mmult_tmp_P[47]_UNCONNECTED , \NLW_Mmult_tmp_P[46]_UNCONNECTED , \NLW_Mmult_tmp_P[45]_UNCONNECTED , \NLW_Mmult_tmp_P[44]_UNCONNECTED , 
\NLW_Mmult_tmp_P[43]_UNCONNECTED , \NLW_Mmult_tmp_P[42]_UNCONNECTED , \NLW_Mmult_tmp_P[41]_UNCONNECTED , \NLW_Mmult_tmp_P[40]_UNCONNECTED , 
\NLW_Mmult_tmp_P[39]_UNCONNECTED , \NLW_Mmult_tmp_P[38]_UNCONNECTED , \NLW_Mmult_tmp_P[37]_UNCONNECTED , \NLW_Mmult_tmp_P[36]_UNCONNECTED , 
\NLW_Mmult_tmp_P[35]_UNCONNECTED , \NLW_Mmult_tmp_P[34]_UNCONNECTED , \NLW_Mmult_tmp_P[33]_UNCONNECTED , \NLW_Mmult_tmp_P[32]_UNCONNECTED , 
\NLW_Mmult_tmp_P[31]_UNCONNECTED , \NLW_Mmult_tmp_P[30]_UNCONNECTED , \NLW_Mmult_tmp_P[29]_UNCONNECTED , \NLW_Mmult_tmp_P[28]_UNCONNECTED , 
\NLW_Mmult_tmp_P[27]_UNCONNECTED , \NLW_Mmult_tmp_P[26]_UNCONNECTED , \NLW_Mmult_tmp_P[25]_UNCONNECTED , \NLW_Mmult_tmp_P[24]_UNCONNECTED , 
\NLW_Mmult_tmp_P[23]_UNCONNECTED , \NLW_Mmult_tmp_P[22]_UNCONNECTED , \NLW_Mmult_tmp_P[21]_UNCONNECTED , \NLW_Mmult_tmp_P[20]_UNCONNECTED , 
\NLW_Mmult_tmp_P[19]_UNCONNECTED , \NLW_Mmult_tmp_P[18]_UNCONNECTED , \NLW_Mmult_tmp_P[17]_UNCONNECTED , \NLW_Mmult_tmp_P[16]_UNCONNECTED , 
\NLW_Mmult_tmp_P[15]_UNCONNECTED , \NLW_Mmult_tmp_P[14]_UNCONNECTED , \NLW_Mmult_tmp_P[13]_UNCONNECTED , \NLW_Mmult_tmp_P[12]_UNCONNECTED , 
\NLW_Mmult_tmp_P[11]_UNCONNECTED , \NLW_Mmult_tmp_P[10]_UNCONNECTED , \NLW_Mmult_tmp_P[9]_UNCONNECTED , \NLW_Mmult_tmp_P[8]_UNCONNECTED , 
\NLW_Mmult_tmp_P[7]_UNCONNECTED , \NLW_Mmult_tmp_P[6]_UNCONNECTED , \NLW_Mmult_tmp_P[5]_UNCONNECTED , \NLW_Mmult_tmp_P[4]_UNCONNECTED , 
\NLW_Mmult_tmp_P[3]_UNCONNECTED , \NLW_Mmult_tmp_P[2]_UNCONNECTED , \NLW_Mmult_tmp_P[1]_UNCONNECTED , \NLW_Mmult_tmp_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_Mmult_tmp_BCOUT[17]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[16]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp_BCOUT[14]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[13]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp_BCOUT[11]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[10]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp_BCOUT[8]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[7]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[6]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[5]_UNCONNECTED 
, \NLW_Mmult_tmp_BCOUT[4]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[3]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[2]_UNCONNECTED , 
\NLW_Mmult_tmp_BCOUT[1]_UNCONNECTED , \NLW_Mmult_tmp_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_Mmult_tmp_ACIN[29]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[28]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[27]_UNCONNECTED , 
\NLW_Mmult_tmp_ACIN[26]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[25]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[24]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[23]_UNCONNECTED 
, \NLW_Mmult_tmp_ACIN[22]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[21]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[20]_UNCONNECTED , 
\NLW_Mmult_tmp_ACIN[19]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[18]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[17]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[16]_UNCONNECTED 
, \NLW_Mmult_tmp_ACIN[15]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[14]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[13]_UNCONNECTED , 
\NLW_Mmult_tmp_ACIN[12]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[11]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[10]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[9]_UNCONNECTED 
, \NLW_Mmult_tmp_ACIN[8]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[7]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[6]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[5]_UNCONNECTED , 
\NLW_Mmult_tmp_ACIN[4]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[3]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[2]_UNCONNECTED , \NLW_Mmult_tmp_ACIN[1]_UNCONNECTED , 
\NLW_Mmult_tmp_ACIN[0]_UNCONNECTED }),
    .ACOUT({Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_29, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_28, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_27, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_26, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_25, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_24, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_23, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_22, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_21, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_20, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_19, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_18, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_17, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_16, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_15, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_14, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_13, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_12, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_11, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_10, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_9, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_8, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_7, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_6, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_5
, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_4, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_3, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_2, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_1, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_0}),
    .CARRYOUT({\NLW_Mmult_tmp_CARRYOUT[3]_UNCONNECTED , \NLW_Mmult_tmp_CARRYOUT[2]_UNCONNECTED , \NLW_Mmult_tmp_CARRYOUT[1]_UNCONNECTED , 
\NLW_Mmult_tmp_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .AREG ( 0 ),
    .ACASCREG ( 0 ),
    .BREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .BCASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  Mmult_tmp1 (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N0),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(N0),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(NLW_Mmult_tmp1_PATTERNBDETECT_UNCONNECTED),
    .PATTERNDETECT(NLW_Mmult_tmp1_PATTERNDETECT_UNCONNECTED),
    .OVERFLOW(NLW_Mmult_tmp1_OVERFLOW_UNCONNECTED),
    .UNDERFLOW(NLW_Mmult_tmp1_UNDERFLOW_UNCONNECTED),
    .CARRYCASCIN(NLW_Mmult_tmp1_CARRYCASCIN_UNCONNECTED),
    .CARRYCASCOUT(NLW_Mmult_tmp1_CARRYCASCOUT_UNCONNECTED),
    .MULTSIGNIN(NLW_Mmult_tmp1_MULTSIGNIN_UNCONNECTED),
    .MULTSIGNOUT(NLW_Mmult_tmp1_MULTSIGNOUT_UNCONNECTED),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_47, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_46, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_45, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_44, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_43, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_42, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_41, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_40, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_39, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_38, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_37, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_36, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_35, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_34, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_33, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_32, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_31, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_30, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_29, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_28, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_27, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_26, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_25, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_24, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_23, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_22, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_21, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_20, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_19, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_18, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_17, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_16, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_15, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_14, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_13, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_12, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_11, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_10, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_9, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_8, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_7, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_6, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_5
, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_4, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_3, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_2, 
Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_1, Mmult_tmp_PCOUT_to_Mmult_tmp1_PCIN_0}),
    .B({a_31_IBUF_265, a_31_IBUF_265, a_31_IBUF_265, a_31_IBUF_265, a_30_IBUF_264, a_29_IBUF_262, a_28_IBUF_261, a_27_IBUF_260, a_26_IBUF_259, 
a_25_IBUF_258, a_24_IBUF_257, a_23_IBUF_256, a_22_IBUF_255, a_21_IBUF_254, a_20_IBUF_253, a_19_IBUF_251, a_18_IBUF_250, a_17_IBUF_249}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_Mmult_tmp1_BCIN[17]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[16]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[15]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCIN[14]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[13]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[12]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCIN[11]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[10]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[9]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCIN[8]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[7]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[6]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[5]_UNCONNECTED 
, \NLW_Mmult_tmp1_BCIN[4]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[3]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[2]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCIN[1]_UNCONNECTED , \NLW_Mmult_tmp1_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_47, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_46, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_45, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_44, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_43, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_42, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_41, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_40, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_39, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_38, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_37, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_36, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_35, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_34, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_33, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_32, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_31, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_30, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_29, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_28, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_27, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_26, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_25, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_24, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_23, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_22, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_21, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_20, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_19, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_18, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_17, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_16, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_15, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_14, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_13, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_12, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_11, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_10, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_9, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_8, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_7, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_6, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_5, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_4, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_3, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_2, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_1, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_0}),
    .P({\NLW_Mmult_tmp1_P[47]_UNCONNECTED , \NLW_Mmult_tmp1_P[46]_UNCONNECTED , \NLW_Mmult_tmp1_P[45]_UNCONNECTED , \NLW_Mmult_tmp1_P[44]_UNCONNECTED 
, \NLW_Mmult_tmp1_P[43]_UNCONNECTED , \NLW_Mmult_tmp1_P[42]_UNCONNECTED , \NLW_Mmult_tmp1_P[41]_UNCONNECTED , \NLW_Mmult_tmp1_P[40]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[39]_UNCONNECTED , \NLW_Mmult_tmp1_P[38]_UNCONNECTED , \NLW_Mmult_tmp1_P[37]_UNCONNECTED , \NLW_Mmult_tmp1_P[36]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[35]_UNCONNECTED , \NLW_Mmult_tmp1_P[34]_UNCONNECTED , \NLW_Mmult_tmp1_P[33]_UNCONNECTED , \NLW_Mmult_tmp1_P[32]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[31]_UNCONNECTED , \NLW_Mmult_tmp1_P[30]_UNCONNECTED , \NLW_Mmult_tmp1_P[29]_UNCONNECTED , \NLW_Mmult_tmp1_P[28]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[27]_UNCONNECTED , \NLW_Mmult_tmp1_P[26]_UNCONNECTED , \NLW_Mmult_tmp1_P[25]_UNCONNECTED , \NLW_Mmult_tmp1_P[24]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[23]_UNCONNECTED , \NLW_Mmult_tmp1_P[22]_UNCONNECTED , \NLW_Mmult_tmp1_P[21]_UNCONNECTED , \NLW_Mmult_tmp1_P[20]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[19]_UNCONNECTED , \NLW_Mmult_tmp1_P[18]_UNCONNECTED , \NLW_Mmult_tmp1_P[17]_UNCONNECTED , \NLW_Mmult_tmp1_P[16]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[15]_UNCONNECTED , \NLW_Mmult_tmp1_P[14]_UNCONNECTED , \NLW_Mmult_tmp1_P[13]_UNCONNECTED , \NLW_Mmult_tmp1_P[12]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[11]_UNCONNECTED , \NLW_Mmult_tmp1_P[10]_UNCONNECTED , \NLW_Mmult_tmp1_P[9]_UNCONNECTED , \NLW_Mmult_tmp1_P[8]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[7]_UNCONNECTED , \NLW_Mmult_tmp1_P[6]_UNCONNECTED , \NLW_Mmult_tmp1_P[5]_UNCONNECTED , \NLW_Mmult_tmp1_P[4]_UNCONNECTED , 
\NLW_Mmult_tmp1_P[3]_UNCONNECTED , \NLW_Mmult_tmp1_P[2]_UNCONNECTED , \NLW_Mmult_tmp1_P[1]_UNCONNECTED , \NLW_Mmult_tmp1_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_Mmult_tmp1_BCOUT[17]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[16]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCOUT[14]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[13]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCOUT[11]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[10]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCOUT[8]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[7]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[6]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCOUT[5]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[4]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[3]_UNCONNECTED , 
\NLW_Mmult_tmp1_BCOUT[2]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[1]_UNCONNECTED , \NLW_Mmult_tmp1_BCOUT[0]_UNCONNECTED }),
    .ACIN({Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_29, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_28, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_27, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_26, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_25, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_24, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_23, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_22, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_21, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_20, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_19, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_18, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_17, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_16, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_15, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_14, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_13, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_12, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_11, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_10, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_9, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_8, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_7, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_6, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_5
, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_4, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_3, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_2, 
Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_1, Mmult_tmp_ACOUT_to_Mmult_tmp1_ACIN_0}),
    .ACOUT({\NLW_Mmult_tmp1_ACOUT[29]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[28]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[27]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[26]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[25]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[24]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[23]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[22]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[21]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[20]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[19]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[18]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[17]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[16]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[14]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[13]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[11]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[10]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[8]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[7]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[6]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[5]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[4]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[3]_UNCONNECTED , 
\NLW_Mmult_tmp1_ACOUT[2]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[1]_UNCONNECTED , \NLW_Mmult_tmp1_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_Mmult_tmp1_CARRYOUT[3]_UNCONNECTED , \NLW_Mmult_tmp1_CARRYOUT[2]_UNCONNECTED , \NLW_Mmult_tmp1_CARRYOUT[1]_UNCONNECTED , 
\NLW_Mmult_tmp1_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .AREG ( 0 ),
    .ACASCREG ( 0 ),
    .BREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  Mmult_tmp2 (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N0),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(N0),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(NLW_Mmult_tmp2_PATTERNBDETECT_UNCONNECTED),
    .PATTERNDETECT(NLW_Mmult_tmp2_PATTERNDETECT_UNCONNECTED),
    .OVERFLOW(NLW_Mmult_tmp2_OVERFLOW_UNCONNECTED),
    .UNDERFLOW(NLW_Mmult_tmp2_UNDERFLOW_UNCONNECTED),
    .CARRYCASCIN(NLW_Mmult_tmp2_CARRYCASCIN_UNCONNECTED),
    .CARRYCASCOUT(NLW_Mmult_tmp2_CARRYCASCOUT_UNCONNECTED),
    .MULTSIGNIN(NLW_Mmult_tmp2_MULTSIGNIN_UNCONNECTED),
    .MULTSIGNOUT(NLW_Mmult_tmp2_MULTSIGNOUT_UNCONNECTED),
    .A({GND, GND, GND, GND, GND, b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, 
b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, b_31_IBUF_329, b_30_IBUF_328, b_29_IBUF_326, b_28_IBUF_325, b_27_IBUF_324, b_26_IBUF_323, b_25_IBUF_322, 
b_24_IBUF_321, b_23_IBUF_320, b_22_IBUF_319, b_21_IBUF_318, b_20_IBUF_317, b_19_IBUF_315, b_18_IBUF_314, b_17_IBUF_313}),
    .PCIN({Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_47, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_46, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_45, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_44, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_43, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_42, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_41, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_40, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_39, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_38, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_37, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_36, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_35, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_34, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_33, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_32, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_31, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_30, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_29, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_28, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_27, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_26, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_25, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_24, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_23, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_22, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_21, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_20, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_19, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_18, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_17, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_16, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_15, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_14, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_13, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_12, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_11, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_10, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_9, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_8, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_7, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_6, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_5, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_4, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_3, 
Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_2, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_1, Mmult_tmp1_PCOUT_to_Mmult_tmp2_PCIN_0}),
    .B({N0, a_16_IBUF_248, a_15_IBUF_247, a_14_IBUF_246, a_13_IBUF_245, a_12_IBUF_244, a_11_IBUF_243, a_10_IBUF_242, a_9_IBUF_272, a_8_IBUF_271, 
a_7_IBUF_270, a_6_IBUF_269, a_5_IBUF_268, a_4_IBUF_267, a_3_IBUF_266, a_2_IBUF_263, a_1_IBUF_252, a_0_IBUF_241}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_Mmult_tmp2_BCIN[17]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[16]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[15]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCIN[14]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[13]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[12]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCIN[11]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[10]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[9]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCIN[8]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[7]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[6]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[5]_UNCONNECTED 
, \NLW_Mmult_tmp2_BCIN[4]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[3]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[2]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCIN[1]_UNCONNECTED , \NLW_Mmult_tmp2_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_47, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_46, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_45, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_44, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_43, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_42, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_41, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_40, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_39, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_38, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_37, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_36, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_35, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_34, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_33, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_32, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_31, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_30, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_29, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_28, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_27, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_26, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_25, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_24, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_23, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_22, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_21, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_20, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_19, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_18, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_17, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_16, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_15, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_14, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_13, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_12, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_11, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_10, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_9, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_8, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_7, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_6, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_5, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_4, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_3, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_2, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_1, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_0}),
    .P({\NLW_Mmult_tmp2_P[47]_UNCONNECTED , \NLW_Mmult_tmp2_P[46]_UNCONNECTED , \NLW_Mmult_tmp2_P[45]_UNCONNECTED , \NLW_Mmult_tmp2_P[44]_UNCONNECTED 
, \NLW_Mmult_tmp2_P[43]_UNCONNECTED , \NLW_Mmult_tmp2_P[42]_UNCONNECTED , \NLW_Mmult_tmp2_P[41]_UNCONNECTED , \NLW_Mmult_tmp2_P[40]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[39]_UNCONNECTED , \NLW_Mmult_tmp2_P[38]_UNCONNECTED , \NLW_Mmult_tmp2_P[37]_UNCONNECTED , \NLW_Mmult_tmp2_P[36]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[35]_UNCONNECTED , \NLW_Mmult_tmp2_P[34]_UNCONNECTED , \NLW_Mmult_tmp2_P[33]_UNCONNECTED , \NLW_Mmult_tmp2_P[32]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[31]_UNCONNECTED , \NLW_Mmult_tmp2_P[30]_UNCONNECTED , \NLW_Mmult_tmp2_P[29]_UNCONNECTED , \NLW_Mmult_tmp2_P[28]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[27]_UNCONNECTED , \NLW_Mmult_tmp2_P[26]_UNCONNECTED , \NLW_Mmult_tmp2_P[25]_UNCONNECTED , \NLW_Mmult_tmp2_P[24]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[23]_UNCONNECTED , \NLW_Mmult_tmp2_P[22]_UNCONNECTED , \NLW_Mmult_tmp2_P[21]_UNCONNECTED , \NLW_Mmult_tmp2_P[20]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[19]_UNCONNECTED , \NLW_Mmult_tmp2_P[18]_UNCONNECTED , \NLW_Mmult_tmp2_P[17]_UNCONNECTED , tmp[33], tmp[32], tmp[31], tmp[30], 
tmp[29], tmp[28], tmp[27], tmp[26], tmp[25], tmp[24], \NLW_Mmult_tmp2_P[6]_UNCONNECTED , \NLW_Mmult_tmp2_P[5]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[4]_UNCONNECTED , \NLW_Mmult_tmp2_P[3]_UNCONNECTED , \NLW_Mmult_tmp2_P[2]_UNCONNECTED , \NLW_Mmult_tmp2_P[1]_UNCONNECTED , 
\NLW_Mmult_tmp2_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_Mmult_tmp2_BCOUT[17]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[16]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCOUT[14]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[13]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCOUT[11]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[10]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCOUT[8]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[7]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[6]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCOUT[5]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[4]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[3]_UNCONNECTED , 
\NLW_Mmult_tmp2_BCOUT[2]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[1]_UNCONNECTED , \NLW_Mmult_tmp2_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_Mmult_tmp2_ACIN[29]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[28]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[27]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[26]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[25]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[24]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[23]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[22]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[21]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[20]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[19]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[18]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[17]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[16]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[15]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[14]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[13]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[12]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[11]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[10]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[9]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[8]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[7]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[6]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[5]_UNCONNECTED 
, \NLW_Mmult_tmp2_ACIN[4]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[3]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[2]_UNCONNECTED , 
\NLW_Mmult_tmp2_ACIN[1]_UNCONNECTED , \NLW_Mmult_tmp2_ACIN[0]_UNCONNECTED }),
    .ACOUT({Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_29, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_28, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_27, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_26, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_25, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_24, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_23, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_22, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_21, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_20, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_19, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_18, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_17, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_16, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_15, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_14, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_13, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_12, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_11, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_10, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_9, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_8, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_7, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_6, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_5, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_4, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_3, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_2, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_1, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_0}),
    .CARRYOUT({\NLW_Mmult_tmp2_CARRYOUT[3]_UNCONNECTED , \NLW_Mmult_tmp2_CARRYOUT[2]_UNCONNECTED , \NLW_Mmult_tmp2_CARRYOUT[1]_UNCONNECTED , 
\NLW_Mmult_tmp2_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .AREG ( 0 ),
    .ACASCREG ( 0 ),
    .BREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .BCASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  Mmult_tmp3 (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N0),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(N0),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(NLW_Mmult_tmp3_PATTERNBDETECT_UNCONNECTED),
    .PATTERNDETECT(NLW_Mmult_tmp3_PATTERNDETECT_UNCONNECTED),
    .OVERFLOW(NLW_Mmult_tmp3_OVERFLOW_UNCONNECTED),
    .UNDERFLOW(NLW_Mmult_tmp3_UNDERFLOW_UNCONNECTED),
    .CARRYCASCIN(NLW_Mmult_tmp3_CARRYCASCIN_UNCONNECTED),
    .CARRYCASCOUT(NLW_Mmult_tmp3_CARRYCASCOUT_UNCONNECTED),
    .MULTSIGNIN(NLW_Mmult_tmp3_MULTSIGNIN_UNCONNECTED),
    .MULTSIGNOUT(NLW_Mmult_tmp3_MULTSIGNOUT_UNCONNECTED),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_47, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_46, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_45, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_44, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_43, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_42, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_41, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_40, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_39, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_38, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_37, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_36, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_35, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_34, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_33, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_32, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_31, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_30, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_29, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_28, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_27, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_26, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_25, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_24, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_23, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_22, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_21, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_20, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_19, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_18, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_17, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_16, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_15, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_14, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_13, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_12, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_11, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_10, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_9, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_8, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_7, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_6, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_5, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_4, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_3, 
Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_2, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_1, Mmult_tmp2_PCOUT_to_Mmult_tmp3_PCIN_0}),
    .B({a_31_IBUF_265, a_31_IBUF_265, a_31_IBUF_265, a_31_IBUF_265, a_30_IBUF_264, a_29_IBUF_262, a_28_IBUF_261, a_27_IBUF_260, a_26_IBUF_259, 
a_25_IBUF_258, a_24_IBUF_257, a_23_IBUF_256, a_22_IBUF_255, a_21_IBUF_254, a_20_IBUF_253, a_19_IBUF_251, a_18_IBUF_250, a_17_IBUF_249}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_Mmult_tmp3_BCIN[17]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[16]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[15]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCIN[14]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[13]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[12]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCIN[11]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[10]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[9]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCIN[8]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[7]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[6]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[5]_UNCONNECTED 
, \NLW_Mmult_tmp3_BCIN[4]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[3]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[2]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCIN[1]_UNCONNECTED , \NLW_Mmult_tmp3_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\NLW_Mmult_tmp3_PCOUT[47]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[46]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[45]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[44]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[43]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[42]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[41]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[40]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[39]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[38]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[37]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[36]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[35]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[34]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[33]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[32]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[31]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[30]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[29]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[28]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[27]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[26]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[25]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[24]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[23]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[22]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[21]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[20]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[19]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[18]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[17]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[16]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[14]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[13]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[11]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[10]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[8]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[7]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[6]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[5]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[4]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[3]_UNCONNECTED , 
\NLW_Mmult_tmp3_PCOUT[2]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[1]_UNCONNECTED , \NLW_Mmult_tmp3_PCOUT[0]_UNCONNECTED }),
    .P({\NLW_Mmult_tmp3_P[47]_UNCONNECTED , \NLW_Mmult_tmp3_P[46]_UNCONNECTED , \NLW_Mmult_tmp3_P[45]_UNCONNECTED , \NLW_Mmult_tmp3_P[44]_UNCONNECTED 
, \NLW_Mmult_tmp3_P[43]_UNCONNECTED , \NLW_Mmult_tmp3_P[42]_UNCONNECTED , \NLW_Mmult_tmp3_P[41]_UNCONNECTED , \NLW_Mmult_tmp3_P[40]_UNCONNECTED , 
\NLW_Mmult_tmp3_P[39]_UNCONNECTED , \NLW_Mmult_tmp3_P[38]_UNCONNECTED , \NLW_Mmult_tmp3_P[37]_UNCONNECTED , \NLW_Mmult_tmp3_P[36]_UNCONNECTED , 
\NLW_Mmult_tmp3_P[35]_UNCONNECTED , \NLW_Mmult_tmp3_P[34]_UNCONNECTED , \NLW_Mmult_tmp3_P[33]_UNCONNECTED , \NLW_Mmult_tmp3_P[32]_UNCONNECTED , 
\NLW_Mmult_tmp3_P[31]_UNCONNECTED , \NLW_Mmult_tmp3_P[30]_UNCONNECTED , r_31_OBUF_393, tmp[62], tmp[61], tmp[60], tmp[59], tmp[58], tmp[57], tmp[56], 
tmp[55], tmp[54], tmp[53], tmp[52], tmp[51], tmp[50], tmp[49], tmp[48], tmp[47], tmp[46], tmp[45], tmp[44], tmp[43], tmp[42], tmp[41], tmp[40], 
tmp[39], tmp[38], tmp[37], tmp[36], tmp[35], tmp[34]}),
    .BCOUT({\NLW_Mmult_tmp3_BCOUT[17]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[16]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCOUT[14]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[13]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCOUT[11]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[10]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCOUT[8]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[7]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[6]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCOUT[5]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[4]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[3]_UNCONNECTED , 
\NLW_Mmult_tmp3_BCOUT[2]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[1]_UNCONNECTED , \NLW_Mmult_tmp3_BCOUT[0]_UNCONNECTED }),
    .ACIN({Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_29, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_28, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_27, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_26, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_25, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_24, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_23, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_22, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_21, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_20, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_19, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_18, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_17, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_16, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_15, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_14, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_13, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_12, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_11, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_10, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_9, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_8, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_7, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_6, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_5, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_4, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_3, 
Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_2, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_1, Mmult_tmp2_ACOUT_to_Mmult_tmp3_ACIN_0}),
    .ACOUT({\NLW_Mmult_tmp3_ACOUT[29]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[28]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[27]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[26]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[25]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[24]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[23]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[22]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[21]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[20]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[19]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[18]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[17]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[16]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[15]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[14]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[13]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[12]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[11]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[10]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[9]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[8]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[7]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[6]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[5]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[4]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[3]_UNCONNECTED , 
\NLW_Mmult_tmp3_ACOUT[2]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[1]_UNCONNECTED , \NLW_Mmult_tmp3_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_Mmult_tmp3_CARRYOUT[3]_UNCONNECTED , \NLW_Mmult_tmp3_CARRYOUT[2]_UNCONNECTED , \NLW_Mmult_tmp3_CARRYOUT[1]_UNCONNECTED , 
\NLW_Mmult_tmp3_CARRYOUT[0]_UNCONNECTED })
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<9>1  (
    .ADR0(tmp[33]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_9_OBUF_400)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<8>1  (
    .ADR0(tmp[32]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_8_OBUF_399)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<7>1  (
    .ADR0(tmp[31]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_7_OBUF_398)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<6>1  (
    .ADR0(tmp[30]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_6_OBUF_397)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<5>1  (
    .ADR0(tmp[29]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_5_OBUF_396)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<4>1  (
    .ADR0(tmp[28]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_4_OBUF_395)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<3>1  (
    .ADR0(tmp[27]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_3_OBUF_394)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<30>1  (
    .ADR0(tmp[54]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_30_OBUF_392)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<2>1  (
    .ADR0(tmp[26]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_2_OBUF_391)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<29>1  (
    .ADR0(tmp[53]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_29_OBUF_390)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<28>1  (
    .ADR0(tmp[52]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_28_OBUF_389)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<27>1  (
    .ADR0(tmp[51]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_27_OBUF_388)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<26>1  (
    .ADR0(tmp[50]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_26_OBUF_387)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<25>1  (
    .ADR0(tmp[49]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_25_OBUF_386)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<24>1  (
    .ADR0(tmp[48]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_24_OBUF_385)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<23>1  (
    .ADR0(tmp[47]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_23_OBUF_384)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<22>1  (
    .ADR0(tmp[46]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_22_OBUF_383)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<21>1  (
    .ADR0(tmp[45]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_21_OBUF_382)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<20>1  (
    .ADR0(tmp[44]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_20_OBUF_381)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<1>1  (
    .ADR0(tmp[25]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_1_OBUF_380)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<19>1  (
    .ADR0(tmp[43]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_19_OBUF_379)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<18>1  (
    .ADR0(tmp[42]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_18_OBUF_378)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<17>1  (
    .ADR0(tmp[41]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_17_OBUF_377)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<16>1  (
    .ADR0(tmp[40]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_16_OBUF_376)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<15>1  (
    .ADR0(tmp[39]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_15_OBUF_375)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<14>1  (
    .ADR0(tmp[38]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_14_OBUF_374)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<13>1  (
    .ADR0(tmp[37]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_13_OBUF_373)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<12>1  (
    .ADR0(tmp[36]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_12_OBUF_372)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<11>1  (
    .ADR0(tmp[35]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_11_OBUF_371)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<10>1  (
    .ADR0(tmp[34]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_10_OBUF_370)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \r<0>2  (
    .ADR0(tmp[24]),
    .ADR1(N01),
    .ADR2(r_cmp_gt0000),
    .O(r_0_OBUF_369)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  r_cmp_gt00001_SW0 (
    .ADR0(tmp[58]),
    .ADR1(tmp[57]),
    .ADR2(tmp[56]),
    .ADR3(tmp[55]),
    .O(N02)
  );
  X_LUT6 #(
    .INIT ( 64'h3333333233333333 ))
  r_cmp_gt00001 (
    .ADR0(tmp[62]),
    .ADR1(r_31_OBUF_393),
    .ADR2(tmp[61]),
    .ADR3(tmp[60]),
    .ADR4(tmp[59]),
    .ADR5(N02),
    .O(r_cmp_gt0000)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \r<0>1_SW0  (
    .ADR0(tmp[58]),
    .ADR1(tmp[57]),
    .ADR2(tmp[56]),
    .ADR3(tmp[55]),
    .O(N2)
  );
  X_LUT6 #(
    .INIT ( 64'h80000000FFFFFFFF ))
  \r<0>1  (
    .ADR0(N2),
    .ADR1(tmp[61]),
    .ADR2(tmp[60]),
    .ADR3(tmp[59]),
    .ADR4(tmp[62]),
    .ADR5(r_31_OBUF_393),
    .O(N01)
  );
  X_BUF   a_31_IBUF (
    .I(a[31]),
    .O(a_31_IBUF_265)
  );
  X_BUF   a_30_IBUF (
    .I(a[30]),
    .O(a_30_IBUF_264)
  );
  X_BUF   a_29_IBUF (
    .I(a[29]),
    .O(a_29_IBUF_262)
  );
  X_BUF   a_28_IBUF (
    .I(a[28]),
    .O(a_28_IBUF_261)
  );
  X_BUF   a_27_IBUF (
    .I(a[27]),
    .O(a_27_IBUF_260)
  );
  X_BUF   a_26_IBUF (
    .I(a[26]),
    .O(a_26_IBUF_259)
  );
  X_BUF   a_25_IBUF (
    .I(a[25]),
    .O(a_25_IBUF_258)
  );
  X_BUF   a_24_IBUF (
    .I(a[24]),
    .O(a_24_IBUF_257)
  );
  X_BUF   a_23_IBUF (
    .I(a[23]),
    .O(a_23_IBUF_256)
  );
  X_BUF   a_22_IBUF (
    .I(a[22]),
    .O(a_22_IBUF_255)
  );
  X_BUF   a_21_IBUF (
    .I(a[21]),
    .O(a_21_IBUF_254)
  );
  X_BUF   a_20_IBUF (
    .I(a[20]),
    .O(a_20_IBUF_253)
  );
  X_BUF   a_19_IBUF (
    .I(a[19]),
    .O(a_19_IBUF_251)
  );
  X_BUF   a_18_IBUF (
    .I(a[18]),
    .O(a_18_IBUF_250)
  );
  X_BUF   a_17_IBUF (
    .I(a[17]),
    .O(a_17_IBUF_249)
  );
  X_BUF   a_16_IBUF (
    .I(a[16]),
    .O(a_16_IBUF_248)
  );
  X_BUF   a_15_IBUF (
    .I(a[15]),
    .O(a_15_IBUF_247)
  );
  X_BUF   a_14_IBUF (
    .I(a[14]),
    .O(a_14_IBUF_246)
  );
  X_BUF   a_13_IBUF (
    .I(a[13]),
    .O(a_13_IBUF_245)
  );
  X_BUF   a_12_IBUF (
    .I(a[12]),
    .O(a_12_IBUF_244)
  );
  X_BUF   a_11_IBUF (
    .I(a[11]),
    .O(a_11_IBUF_243)
  );
  X_BUF   a_10_IBUF (
    .I(a[10]),
    .O(a_10_IBUF_242)
  );
  X_BUF   a_9_IBUF (
    .I(a[9]),
    .O(a_9_IBUF_272)
  );
  X_BUF   a_8_IBUF (
    .I(a[8]),
    .O(a_8_IBUF_271)
  );
  X_BUF   a_7_IBUF (
    .I(a[7]),
    .O(a_7_IBUF_270)
  );
  X_BUF   a_6_IBUF (
    .I(a[6]),
    .O(a_6_IBUF_269)
  );
  X_BUF   a_5_IBUF (
    .I(a[5]),
    .O(a_5_IBUF_268)
  );
  X_BUF   a_4_IBUF (
    .I(a[4]),
    .O(a_4_IBUF_267)
  );
  X_BUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_266)
  );
  X_BUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_263)
  );
  X_BUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_252)
  );
  X_BUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_241)
  );
  X_BUF   b_31_IBUF (
    .I(b[31]),
    .O(b_31_IBUF_329)
  );
  X_BUF   b_30_IBUF (
    .I(b[30]),
    .O(b_30_IBUF_328)
  );
  X_BUF   b_29_IBUF (
    .I(b[29]),
    .O(b_29_IBUF_326)
  );
  X_BUF   b_28_IBUF (
    .I(b[28]),
    .O(b_28_IBUF_325)
  );
  X_BUF   b_27_IBUF (
    .I(b[27]),
    .O(b_27_IBUF_324)
  );
  X_BUF   b_26_IBUF (
    .I(b[26]),
    .O(b_26_IBUF_323)
  );
  X_BUF   b_25_IBUF (
    .I(b[25]),
    .O(b_25_IBUF_322)
  );
  X_BUF   b_24_IBUF (
    .I(b[24]),
    .O(b_24_IBUF_321)
  );
  X_BUF   b_23_IBUF (
    .I(b[23]),
    .O(b_23_IBUF_320)
  );
  X_BUF   b_22_IBUF (
    .I(b[22]),
    .O(b_22_IBUF_319)
  );
  X_BUF   b_21_IBUF (
    .I(b[21]),
    .O(b_21_IBUF_318)
  );
  X_BUF   b_20_IBUF (
    .I(b[20]),
    .O(b_20_IBUF_317)
  );
  X_BUF   b_19_IBUF (
    .I(b[19]),
    .O(b_19_IBUF_315)
  );
  X_BUF   b_18_IBUF (
    .I(b[18]),
    .O(b_18_IBUF_314)
  );
  X_BUF   b_17_IBUF (
    .I(b[17]),
    .O(b_17_IBUF_313)
  );
  X_BUF   b_16_IBUF (
    .I(b[16]),
    .O(b_16_IBUF_312)
  );
  X_BUF   b_15_IBUF (
    .I(b[15]),
    .O(b_15_IBUF_311)
  );
  X_BUF   b_14_IBUF (
    .I(b[14]),
    .O(b_14_IBUF_310)
  );
  X_BUF   b_13_IBUF (
    .I(b[13]),
    .O(b_13_IBUF_309)
  );
  X_BUF   b_12_IBUF (
    .I(b[12]),
    .O(b_12_IBUF_308)
  );
  X_BUF   b_11_IBUF (
    .I(b[11]),
    .O(b_11_IBUF_307)
  );
  X_BUF   b_10_IBUF (
    .I(b[10]),
    .O(b_10_IBUF_306)
  );
  X_BUF   b_9_IBUF (
    .I(b[9]),
    .O(b_9_IBUF_336)
  );
  X_BUF   b_8_IBUF (
    .I(b[8]),
    .O(b_8_IBUF_335)
  );
  X_BUF   b_7_IBUF (
    .I(b[7]),
    .O(b_7_IBUF_334)
  );
  X_BUF   b_6_IBUF (
    .I(b[6]),
    .O(b_6_IBUF_333)
  );
  X_BUF   b_5_IBUF (
    .I(b[5]),
    .O(b_5_IBUF_332)
  );
  X_BUF   b_4_IBUF (
    .I(b[4]),
    .O(b_4_IBUF_331)
  );
  X_BUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_330)
  );
  X_BUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_327)
  );
  X_BUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_316)
  );
  X_BUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_305)
  );
  X_IPAD   \a<0>  (
    .PAD(a[0])
  );
  X_IPAD   \a<10>  (
    .PAD(a[10])
  );
  X_IPAD   \a<11>  (
    .PAD(a[11])
  );
  X_IPAD   \a<12>  (
    .PAD(a[12])
  );
  X_IPAD   \a<13>  (
    .PAD(a[13])
  );
  X_IPAD   \a<14>  (
    .PAD(a[14])
  );
  X_IPAD   \a<15>  (
    .PAD(a[15])
  );
  X_IPAD   \a<16>  (
    .PAD(a[16])
  );
  X_IPAD   \a<17>  (
    .PAD(a[17])
  );
  X_IPAD   \a<18>  (
    .PAD(a[18])
  );
  X_IPAD   \a<19>  (
    .PAD(a[19])
  );
  X_IPAD   \a<1>  (
    .PAD(a[1])
  );
  X_IPAD   \a<20>  (
    .PAD(a[20])
  );
  X_IPAD   \a<21>  (
    .PAD(a[21])
  );
  X_IPAD   \a<22>  (
    .PAD(a[22])
  );
  X_IPAD   \a<23>  (
    .PAD(a[23])
  );
  X_IPAD   \a<24>  (
    .PAD(a[24])
  );
  X_IPAD   \a<25>  (
    .PAD(a[25])
  );
  X_IPAD   \a<26>  (
    .PAD(a[26])
  );
  X_IPAD   \a<27>  (
    .PAD(a[27])
  );
  X_IPAD   \a<28>  (
    .PAD(a[28])
  );
  X_IPAD   \a<29>  (
    .PAD(a[29])
  );
  X_IPAD   \a<2>  (
    .PAD(a[2])
  );
  X_IPAD   \a<30>  (
    .PAD(a[30])
  );
  X_IPAD   \a<31>  (
    .PAD(a[31])
  );
  X_IPAD   \a<3>  (
    .PAD(a[3])
  );
  X_IPAD   \a<4>  (
    .PAD(a[4])
  );
  X_IPAD   \a<5>  (
    .PAD(a[5])
  );
  X_IPAD   \a<6>  (
    .PAD(a[6])
  );
  X_IPAD   \a<7>  (
    .PAD(a[7])
  );
  X_IPAD   \a<8>  (
    .PAD(a[8])
  );
  X_IPAD   \a<9>  (
    .PAD(a[9])
  );
  X_IPAD   \b<0>  (
    .PAD(b[0])
  );
  X_IPAD   \b<10>  (
    .PAD(b[10])
  );
  X_IPAD   \b<11>  (
    .PAD(b[11])
  );
  X_IPAD   \b<12>  (
    .PAD(b[12])
  );
  X_IPAD   \b<13>  (
    .PAD(b[13])
  );
  X_IPAD   \b<14>  (
    .PAD(b[14])
  );
  X_IPAD   \b<15>  (
    .PAD(b[15])
  );
  X_IPAD   \b<16>  (
    .PAD(b[16])
  );
  X_IPAD   \b<17>  (
    .PAD(b[17])
  );
  X_IPAD   \b<18>  (
    .PAD(b[18])
  );
  X_IPAD   \b<19>  (
    .PAD(b[19])
  );
  X_IPAD   \b<1>  (
    .PAD(b[1])
  );
  X_IPAD   \b<20>  (
    .PAD(b[20])
  );
  X_IPAD   \b<21>  (
    .PAD(b[21])
  );
  X_IPAD   \b<22>  (
    .PAD(b[22])
  );
  X_IPAD   \b<23>  (
    .PAD(b[23])
  );
  X_IPAD   \b<24>  (
    .PAD(b[24])
  );
  X_IPAD   \b<25>  (
    .PAD(b[25])
  );
  X_IPAD   \b<26>  (
    .PAD(b[26])
  );
  X_IPAD   \b<27>  (
    .PAD(b[27])
  );
  X_IPAD   \b<28>  (
    .PAD(b[28])
  );
  X_IPAD   \b<29>  (
    .PAD(b[29])
  );
  X_IPAD   \b<2>  (
    .PAD(b[2])
  );
  X_IPAD   \b<30>  (
    .PAD(b[30])
  );
  X_IPAD   \b<31>  (
    .PAD(b[31])
  );
  X_IPAD   \b<3>  (
    .PAD(b[3])
  );
  X_IPAD   \b<4>  (
    .PAD(b[4])
  );
  X_IPAD   \b<5>  (
    .PAD(b[5])
  );
  X_IPAD   \b<6>  (
    .PAD(b[6])
  );
  X_IPAD   \b<7>  (
    .PAD(b[7])
  );
  X_IPAD   \b<8>  (
    .PAD(b[8])
  );
  X_IPAD   \b<9>  (
    .PAD(b[9])
  );
  X_OPAD   \r<0>  (
    .PAD(r[0])
  );
  X_OPAD   \r<10>  (
    .PAD(r[10])
  );
  X_OPAD   \r<11>  (
    .PAD(r[11])
  );
  X_OPAD   \r<12>  (
    .PAD(r[12])
  );
  X_OPAD   \r<13>  (
    .PAD(r[13])
  );
  X_OPAD   \r<14>  (
    .PAD(r[14])
  );
  X_OPAD   \r<15>  (
    .PAD(r[15])
  );
  X_OPAD   \r<16>  (
    .PAD(r[16])
  );
  X_OPAD   \r<17>  (
    .PAD(r[17])
  );
  X_OPAD   \r<18>  (
    .PAD(r[18])
  );
  X_OPAD   \r<19>  (
    .PAD(r[19])
  );
  X_OPAD   \r<1>  (
    .PAD(r[1])
  );
  X_OPAD   \r<20>  (
    .PAD(r[20])
  );
  X_OPAD   \r<21>  (
    .PAD(r[21])
  );
  X_OPAD   \r<22>  (
    .PAD(r[22])
  );
  X_OPAD   \r<23>  (
    .PAD(r[23])
  );
  X_OPAD   \r<24>  (
    .PAD(r[24])
  );
  X_OPAD   \r<25>  (
    .PAD(r[25])
  );
  X_OPAD   \r<26>  (
    .PAD(r[26])
  );
  X_OPAD   \r<27>  (
    .PAD(r[27])
  );
  X_OPAD   \r<28>  (
    .PAD(r[28])
  );
  X_OPAD   \r<29>  (
    .PAD(r[29])
  );
  X_OPAD   \r<2>  (
    .PAD(r[2])
  );
  X_OPAD   \r<30>  (
    .PAD(r[30])
  );
  X_OPAD   \r<31>  (
    .PAD(r[31])
  );
  X_OPAD   \r<3>  (
    .PAD(r[3])
  );
  X_OPAD   \r<4>  (
    .PAD(r[4])
  );
  X_OPAD   \r<5>  (
    .PAD(r[5])
  );
  X_OPAD   \r<6>  (
    .PAD(r[6])
  );
  X_OPAD   \r<7>  (
    .PAD(r[7])
  );
  X_OPAD   \r<8>  (
    .PAD(r[8])
  );
  X_OPAD   \r<9>  (
    .PAD(r[9])
  );
  X_OBUF   r_0_OBUF (
    .I(r_0_OBUF_369),
    .O(r[0])
  );
  X_OBUF   r_10_OBUF (
    .I(r_10_OBUF_370),
    .O(r[10])
  );
  X_OBUF   r_11_OBUF (
    .I(r_11_OBUF_371),
    .O(r[11])
  );
  X_OBUF   r_12_OBUF (
    .I(r_12_OBUF_372),
    .O(r[12])
  );
  X_OBUF   r_13_OBUF (
    .I(r_13_OBUF_373),
    .O(r[13])
  );
  X_OBUF   r_14_OBUF (
    .I(r_14_OBUF_374),
    .O(r[14])
  );
  X_OBUF   r_15_OBUF (
    .I(r_15_OBUF_375),
    .O(r[15])
  );
  X_OBUF   r_16_OBUF (
    .I(r_16_OBUF_376),
    .O(r[16])
  );
  X_OBUF   r_17_OBUF (
    .I(r_17_OBUF_377),
    .O(r[17])
  );
  X_OBUF   r_18_OBUF (
    .I(r_18_OBUF_378),
    .O(r[18])
  );
  X_OBUF   r_19_OBUF (
    .I(r_19_OBUF_379),
    .O(r[19])
  );
  X_OBUF   r_1_OBUF (
    .I(r_1_OBUF_380),
    .O(r[1])
  );
  X_OBUF   r_20_OBUF (
    .I(r_20_OBUF_381),
    .O(r[20])
  );
  X_OBUF   r_21_OBUF (
    .I(r_21_OBUF_382),
    .O(r[21])
  );
  X_OBUF   r_22_OBUF (
    .I(r_22_OBUF_383),
    .O(r[22])
  );
  X_OBUF   r_23_OBUF (
    .I(r_23_OBUF_384),
    .O(r[23])
  );
  X_OBUF   r_24_OBUF (
    .I(r_24_OBUF_385),
    .O(r[24])
  );
  X_OBUF   r_25_OBUF (
    .I(r_25_OBUF_386),
    .O(r[25])
  );
  X_OBUF   r_26_OBUF (
    .I(r_26_OBUF_387),
    .O(r[26])
  );
  X_OBUF   r_27_OBUF (
    .I(r_27_OBUF_388),
    .O(r[27])
  );
  X_OBUF   r_28_OBUF (
    .I(r_28_OBUF_389),
    .O(r[28])
  );
  X_OBUF   r_29_OBUF (
    .I(r_29_OBUF_390),
    .O(r[29])
  );
  X_OBUF   r_2_OBUF (
    .I(r_2_OBUF_391),
    .O(r[2])
  );
  X_OBUF   r_30_OBUF (
    .I(r_30_OBUF_392),
    .O(r[30])
  );
  X_OBUF   r_31_OBUF (
    .I(r_31_OBUF_393),
    .O(r[31])
  );
  X_OBUF   r_3_OBUF (
    .I(r_3_OBUF_394),
    .O(r[3])
  );
  X_OBUF   r_4_OBUF (
    .I(r_4_OBUF_395),
    .O(r[4])
  );
  X_OBUF   r_5_OBUF (
    .I(r_5_OBUF_396),
    .O(r[5])
  );
  X_OBUF   r_6_OBUF (
    .I(r_6_OBUF_397),
    .O(r[6])
  );
  X_OBUF   r_7_OBUF (
    .I(r_7_OBUF_398),
    .O(r[7])
  );
  X_OBUF   r_8_OBUF (
    .I(r_8_OBUF_399),
    .O(r[8])
  );
  X_OBUF   r_9_OBUF (
    .I(r_9_OBUF_400),
    .O(r[9])
  );
  X_ZERO   NlwBlock_fixed_mul_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

