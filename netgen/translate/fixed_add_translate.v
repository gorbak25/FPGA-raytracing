////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fixed_add_translate.v
// /___/   /\     Timestamp: Sun Jan 13 20:17:25 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim fixed_add.ngd fixed_add_translate.v 
// Device	: 5vfx130tff1738-2
// Input file	: fixed_add.ngd
// Output file	: /home/test/FPGA/raytracing/netgen/translate/fixed_add_translate.v
// # of Modules	: 1
// Design Name	: fixed_add
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

module fixed_add (
r, a, b
);
  output [31 : 0] r;
  input [31 : 0] a;
  input [31 : 0] b;
  wire \Madd__old_tmp_1_lut<31>1_57 ;
  wire N0;
  wire a_0_IBUF_130;
  wire a_10_IBUF_131;
  wire a_11_IBUF_132;
  wire a_12_IBUF_133;
  wire a_13_IBUF_134;
  wire a_14_IBUF_135;
  wire a_15_IBUF_136;
  wire a_16_IBUF_137;
  wire a_17_IBUF_138;
  wire a_18_IBUF_139;
  wire a_19_IBUF_140;
  wire a_1_IBUF_141;
  wire a_20_IBUF_142;
  wire a_21_IBUF_143;
  wire a_22_IBUF_144;
  wire a_23_IBUF_145;
  wire a_24_IBUF_146;
  wire a_25_IBUF_147;
  wire a_26_IBUF_148;
  wire a_27_IBUF_149;
  wire a_28_IBUF_150;
  wire a_29_IBUF_151;
  wire a_2_IBUF_152;
  wire a_30_IBUF_153;
  wire a_31_IBUF_154;
  wire a_3_IBUF_155;
  wire a_4_IBUF_156;
  wire a_5_IBUF_157;
  wire a_6_IBUF_158;
  wire a_7_IBUF_159;
  wire a_8_IBUF_160;
  wire a_9_IBUF_161;
  wire b_0_IBUF_194;
  wire b_10_IBUF_195;
  wire b_11_IBUF_196;
  wire b_12_IBUF_197;
  wire b_13_IBUF_198;
  wire b_14_IBUF_199;
  wire b_15_IBUF_200;
  wire b_16_IBUF_201;
  wire b_17_IBUF_202;
  wire b_18_IBUF_203;
  wire b_19_IBUF_204;
  wire b_1_IBUF_205;
  wire b_20_IBUF_206;
  wire b_21_IBUF_207;
  wire b_22_IBUF_208;
  wire b_23_IBUF_209;
  wire b_24_IBUF_210;
  wire b_25_IBUF_211;
  wire b_26_IBUF_212;
  wire b_27_IBUF_213;
  wire b_28_IBUF_214;
  wire b_29_IBUF_215;
  wire b_2_IBUF_216;
  wire b_30_IBUF_217;
  wire b_31_IBUF_218;
  wire b_3_IBUF_219;
  wire b_4_IBUF_220;
  wire b_5_IBUF_221;
  wire b_6_IBUF_222;
  wire b_7_IBUF_223;
  wire b_8_IBUF_224;
  wire b_9_IBUF_225;
  wire r_0_OBUF_258;
  wire r_10_OBUF_259;
  wire r_11_OBUF_260;
  wire r_12_OBUF_261;
  wire r_13_OBUF_262;
  wire r_14_OBUF_263;
  wire r_15_OBUF_264;
  wire r_16_OBUF_265;
  wire r_17_OBUF_266;
  wire r_18_OBUF_267;
  wire r_19_OBUF_268;
  wire r_1_OBUF_269;
  wire r_20_OBUF_270;
  wire r_21_OBUF_271;
  wire r_22_OBUF_272;
  wire r_23_OBUF_273;
  wire r_24_OBUF_274;
  wire r_25_OBUF_275;
  wire r_26_OBUF_276;
  wire r_27_OBUF_277;
  wire r_28_OBUF_278;
  wire r_29_OBUF_279;
  wire r_2_OBUF_280;
  wire r_30_OBUF_281;
  wire r_31_OBUF_282;
  wire r_3_OBUF_283;
  wire r_4_OBUF_284;
  wire r_5_OBUF_285;
  wire r_6_OBUF_286;
  wire r_7_OBUF_287;
  wire r_8_OBUF_288;
  wire r_9_OBUF_289;
  wire [31 : 0] Madd__old_tmp_1_cy;
  wire [31 : 0] Madd__old_tmp_1_lut;
  wire [31 : 0] _old_tmp_1;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<0>  (
    .ADR0(a_0_IBUF_130),
    .ADR1(b_0_IBUF_194),
    .O(Madd__old_tmp_1_lut[0])
  );
  X_MUX2   \Madd__old_tmp_1_cy<0>  (
    .IB(N0),
    .IA(a_0_IBUF_130),
    .SEL(Madd__old_tmp_1_lut[0]),
    .O(Madd__old_tmp_1_cy[0])
  );
  X_XOR2   \Madd__old_tmp_1_xor<0>  (
    .I0(N0),
    .I1(Madd__old_tmp_1_lut[0]),
    .O(_old_tmp_1[0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<1>  (
    .ADR0(a_1_IBUF_141),
    .ADR1(b_1_IBUF_205),
    .O(Madd__old_tmp_1_lut[1])
  );
  X_MUX2   \Madd__old_tmp_1_cy<1>  (
    .IB(Madd__old_tmp_1_cy[0]),
    .IA(a_1_IBUF_141),
    .SEL(Madd__old_tmp_1_lut[1]),
    .O(Madd__old_tmp_1_cy[1])
  );
  X_XOR2   \Madd__old_tmp_1_xor<1>  (
    .I0(Madd__old_tmp_1_cy[0]),
    .I1(Madd__old_tmp_1_lut[1]),
    .O(_old_tmp_1[1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<2>  (
    .ADR0(a_2_IBUF_152),
    .ADR1(b_2_IBUF_216),
    .O(Madd__old_tmp_1_lut[2])
  );
  X_MUX2   \Madd__old_tmp_1_cy<2>  (
    .IB(Madd__old_tmp_1_cy[1]),
    .IA(a_2_IBUF_152),
    .SEL(Madd__old_tmp_1_lut[2]),
    .O(Madd__old_tmp_1_cy[2])
  );
  X_XOR2   \Madd__old_tmp_1_xor<2>  (
    .I0(Madd__old_tmp_1_cy[1]),
    .I1(Madd__old_tmp_1_lut[2]),
    .O(_old_tmp_1[2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<3>  (
    .ADR0(a_3_IBUF_155),
    .ADR1(b_3_IBUF_219),
    .O(Madd__old_tmp_1_lut[3])
  );
  X_MUX2   \Madd__old_tmp_1_cy<3>  (
    .IB(Madd__old_tmp_1_cy[2]),
    .IA(a_3_IBUF_155),
    .SEL(Madd__old_tmp_1_lut[3]),
    .O(Madd__old_tmp_1_cy[3])
  );
  X_XOR2   \Madd__old_tmp_1_xor<3>  (
    .I0(Madd__old_tmp_1_cy[2]),
    .I1(Madd__old_tmp_1_lut[3]),
    .O(_old_tmp_1[3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<4>  (
    .ADR0(a_4_IBUF_156),
    .ADR1(b_4_IBUF_220),
    .O(Madd__old_tmp_1_lut[4])
  );
  X_MUX2   \Madd__old_tmp_1_cy<4>  (
    .IB(Madd__old_tmp_1_cy[3]),
    .IA(a_4_IBUF_156),
    .SEL(Madd__old_tmp_1_lut[4]),
    .O(Madd__old_tmp_1_cy[4])
  );
  X_XOR2   \Madd__old_tmp_1_xor<4>  (
    .I0(Madd__old_tmp_1_cy[3]),
    .I1(Madd__old_tmp_1_lut[4]),
    .O(_old_tmp_1[4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<5>  (
    .ADR0(a_5_IBUF_157),
    .ADR1(b_5_IBUF_221),
    .O(Madd__old_tmp_1_lut[5])
  );
  X_MUX2   \Madd__old_tmp_1_cy<5>  (
    .IB(Madd__old_tmp_1_cy[4]),
    .IA(a_5_IBUF_157),
    .SEL(Madd__old_tmp_1_lut[5]),
    .O(Madd__old_tmp_1_cy[5])
  );
  X_XOR2   \Madd__old_tmp_1_xor<5>  (
    .I0(Madd__old_tmp_1_cy[4]),
    .I1(Madd__old_tmp_1_lut[5]),
    .O(_old_tmp_1[5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<6>  (
    .ADR0(a_6_IBUF_158),
    .ADR1(b_6_IBUF_222),
    .O(Madd__old_tmp_1_lut[6])
  );
  X_MUX2   \Madd__old_tmp_1_cy<6>  (
    .IB(Madd__old_tmp_1_cy[5]),
    .IA(a_6_IBUF_158),
    .SEL(Madd__old_tmp_1_lut[6]),
    .O(Madd__old_tmp_1_cy[6])
  );
  X_XOR2   \Madd__old_tmp_1_xor<6>  (
    .I0(Madd__old_tmp_1_cy[5]),
    .I1(Madd__old_tmp_1_lut[6]),
    .O(_old_tmp_1[6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<7>  (
    .ADR0(a_7_IBUF_159),
    .ADR1(b_7_IBUF_223),
    .O(Madd__old_tmp_1_lut[7])
  );
  X_MUX2   \Madd__old_tmp_1_cy<7>  (
    .IB(Madd__old_tmp_1_cy[6]),
    .IA(a_7_IBUF_159),
    .SEL(Madd__old_tmp_1_lut[7]),
    .O(Madd__old_tmp_1_cy[7])
  );
  X_XOR2   \Madd__old_tmp_1_xor<7>  (
    .I0(Madd__old_tmp_1_cy[6]),
    .I1(Madd__old_tmp_1_lut[7]),
    .O(_old_tmp_1[7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<8>  (
    .ADR0(a_8_IBUF_160),
    .ADR1(b_8_IBUF_224),
    .O(Madd__old_tmp_1_lut[8])
  );
  X_MUX2   \Madd__old_tmp_1_cy<8>  (
    .IB(Madd__old_tmp_1_cy[7]),
    .IA(a_8_IBUF_160),
    .SEL(Madd__old_tmp_1_lut[8]),
    .O(Madd__old_tmp_1_cy[8])
  );
  X_XOR2   \Madd__old_tmp_1_xor<8>  (
    .I0(Madd__old_tmp_1_cy[7]),
    .I1(Madd__old_tmp_1_lut[8]),
    .O(_old_tmp_1[8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<9>  (
    .ADR0(a_9_IBUF_161),
    .ADR1(b_9_IBUF_225),
    .O(Madd__old_tmp_1_lut[9])
  );
  X_MUX2   \Madd__old_tmp_1_cy<9>  (
    .IB(Madd__old_tmp_1_cy[8]),
    .IA(a_9_IBUF_161),
    .SEL(Madd__old_tmp_1_lut[9]),
    .O(Madd__old_tmp_1_cy[9])
  );
  X_XOR2   \Madd__old_tmp_1_xor<9>  (
    .I0(Madd__old_tmp_1_cy[8]),
    .I1(Madd__old_tmp_1_lut[9]),
    .O(_old_tmp_1[9])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<10>  (
    .ADR0(a_10_IBUF_131),
    .ADR1(b_10_IBUF_195),
    .O(Madd__old_tmp_1_lut[10])
  );
  X_MUX2   \Madd__old_tmp_1_cy<10>  (
    .IB(Madd__old_tmp_1_cy[9]),
    .IA(a_10_IBUF_131),
    .SEL(Madd__old_tmp_1_lut[10]),
    .O(Madd__old_tmp_1_cy[10])
  );
  X_XOR2   \Madd__old_tmp_1_xor<10>  (
    .I0(Madd__old_tmp_1_cy[9]),
    .I1(Madd__old_tmp_1_lut[10]),
    .O(_old_tmp_1[10])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<11>  (
    .ADR0(a_11_IBUF_132),
    .ADR1(b_11_IBUF_196),
    .O(Madd__old_tmp_1_lut[11])
  );
  X_MUX2   \Madd__old_tmp_1_cy<11>  (
    .IB(Madd__old_tmp_1_cy[10]),
    .IA(a_11_IBUF_132),
    .SEL(Madd__old_tmp_1_lut[11]),
    .O(Madd__old_tmp_1_cy[11])
  );
  X_XOR2   \Madd__old_tmp_1_xor<11>  (
    .I0(Madd__old_tmp_1_cy[10]),
    .I1(Madd__old_tmp_1_lut[11]),
    .O(_old_tmp_1[11])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<12>  (
    .ADR0(a_12_IBUF_133),
    .ADR1(b_12_IBUF_197),
    .O(Madd__old_tmp_1_lut[12])
  );
  X_MUX2   \Madd__old_tmp_1_cy<12>  (
    .IB(Madd__old_tmp_1_cy[11]),
    .IA(a_12_IBUF_133),
    .SEL(Madd__old_tmp_1_lut[12]),
    .O(Madd__old_tmp_1_cy[12])
  );
  X_XOR2   \Madd__old_tmp_1_xor<12>  (
    .I0(Madd__old_tmp_1_cy[11]),
    .I1(Madd__old_tmp_1_lut[12]),
    .O(_old_tmp_1[12])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<13>  (
    .ADR0(a_13_IBUF_134),
    .ADR1(b_13_IBUF_198),
    .O(Madd__old_tmp_1_lut[13])
  );
  X_MUX2   \Madd__old_tmp_1_cy<13>  (
    .IB(Madd__old_tmp_1_cy[12]),
    .IA(a_13_IBUF_134),
    .SEL(Madd__old_tmp_1_lut[13]),
    .O(Madd__old_tmp_1_cy[13])
  );
  X_XOR2   \Madd__old_tmp_1_xor<13>  (
    .I0(Madd__old_tmp_1_cy[12]),
    .I1(Madd__old_tmp_1_lut[13]),
    .O(_old_tmp_1[13])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<14>  (
    .ADR0(a_14_IBUF_135),
    .ADR1(b_14_IBUF_199),
    .O(Madd__old_tmp_1_lut[14])
  );
  X_MUX2   \Madd__old_tmp_1_cy<14>  (
    .IB(Madd__old_tmp_1_cy[13]),
    .IA(a_14_IBUF_135),
    .SEL(Madd__old_tmp_1_lut[14]),
    .O(Madd__old_tmp_1_cy[14])
  );
  X_XOR2   \Madd__old_tmp_1_xor<14>  (
    .I0(Madd__old_tmp_1_cy[13]),
    .I1(Madd__old_tmp_1_lut[14]),
    .O(_old_tmp_1[14])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<15>  (
    .ADR0(a_15_IBUF_136),
    .ADR1(b_15_IBUF_200),
    .O(Madd__old_tmp_1_lut[15])
  );
  X_MUX2   \Madd__old_tmp_1_cy<15>  (
    .IB(Madd__old_tmp_1_cy[14]),
    .IA(a_15_IBUF_136),
    .SEL(Madd__old_tmp_1_lut[15]),
    .O(Madd__old_tmp_1_cy[15])
  );
  X_XOR2   \Madd__old_tmp_1_xor<15>  (
    .I0(Madd__old_tmp_1_cy[14]),
    .I1(Madd__old_tmp_1_lut[15]),
    .O(_old_tmp_1[15])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<16>  (
    .ADR0(a_16_IBUF_137),
    .ADR1(b_16_IBUF_201),
    .O(Madd__old_tmp_1_lut[16])
  );
  X_MUX2   \Madd__old_tmp_1_cy<16>  (
    .IB(Madd__old_tmp_1_cy[15]),
    .IA(a_16_IBUF_137),
    .SEL(Madd__old_tmp_1_lut[16]),
    .O(Madd__old_tmp_1_cy[16])
  );
  X_XOR2   \Madd__old_tmp_1_xor<16>  (
    .I0(Madd__old_tmp_1_cy[15]),
    .I1(Madd__old_tmp_1_lut[16]),
    .O(_old_tmp_1[16])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<17>  (
    .ADR0(a_17_IBUF_138),
    .ADR1(b_17_IBUF_202),
    .O(Madd__old_tmp_1_lut[17])
  );
  X_MUX2   \Madd__old_tmp_1_cy<17>  (
    .IB(Madd__old_tmp_1_cy[16]),
    .IA(a_17_IBUF_138),
    .SEL(Madd__old_tmp_1_lut[17]),
    .O(Madd__old_tmp_1_cy[17])
  );
  X_XOR2   \Madd__old_tmp_1_xor<17>  (
    .I0(Madd__old_tmp_1_cy[16]),
    .I1(Madd__old_tmp_1_lut[17]),
    .O(_old_tmp_1[17])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<18>  (
    .ADR0(a_18_IBUF_139),
    .ADR1(b_18_IBUF_203),
    .O(Madd__old_tmp_1_lut[18])
  );
  X_MUX2   \Madd__old_tmp_1_cy<18>  (
    .IB(Madd__old_tmp_1_cy[17]),
    .IA(a_18_IBUF_139),
    .SEL(Madd__old_tmp_1_lut[18]),
    .O(Madd__old_tmp_1_cy[18])
  );
  X_XOR2   \Madd__old_tmp_1_xor<18>  (
    .I0(Madd__old_tmp_1_cy[17]),
    .I1(Madd__old_tmp_1_lut[18]),
    .O(_old_tmp_1[18])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<19>  (
    .ADR0(a_19_IBUF_140),
    .ADR1(b_19_IBUF_204),
    .O(Madd__old_tmp_1_lut[19])
  );
  X_MUX2   \Madd__old_tmp_1_cy<19>  (
    .IB(Madd__old_tmp_1_cy[18]),
    .IA(a_19_IBUF_140),
    .SEL(Madd__old_tmp_1_lut[19]),
    .O(Madd__old_tmp_1_cy[19])
  );
  X_XOR2   \Madd__old_tmp_1_xor<19>  (
    .I0(Madd__old_tmp_1_cy[18]),
    .I1(Madd__old_tmp_1_lut[19]),
    .O(_old_tmp_1[19])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<20>  (
    .ADR0(a_20_IBUF_142),
    .ADR1(b_20_IBUF_206),
    .O(Madd__old_tmp_1_lut[20])
  );
  X_MUX2   \Madd__old_tmp_1_cy<20>  (
    .IB(Madd__old_tmp_1_cy[19]),
    .IA(a_20_IBUF_142),
    .SEL(Madd__old_tmp_1_lut[20]),
    .O(Madd__old_tmp_1_cy[20])
  );
  X_XOR2   \Madd__old_tmp_1_xor<20>  (
    .I0(Madd__old_tmp_1_cy[19]),
    .I1(Madd__old_tmp_1_lut[20]),
    .O(_old_tmp_1[20])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<21>  (
    .ADR0(a_21_IBUF_143),
    .ADR1(b_21_IBUF_207),
    .O(Madd__old_tmp_1_lut[21])
  );
  X_MUX2   \Madd__old_tmp_1_cy<21>  (
    .IB(Madd__old_tmp_1_cy[20]),
    .IA(a_21_IBUF_143),
    .SEL(Madd__old_tmp_1_lut[21]),
    .O(Madd__old_tmp_1_cy[21])
  );
  X_XOR2   \Madd__old_tmp_1_xor<21>  (
    .I0(Madd__old_tmp_1_cy[20]),
    .I1(Madd__old_tmp_1_lut[21]),
    .O(_old_tmp_1[21])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<22>  (
    .ADR0(a_22_IBUF_144),
    .ADR1(b_22_IBUF_208),
    .O(Madd__old_tmp_1_lut[22])
  );
  X_MUX2   \Madd__old_tmp_1_cy<22>  (
    .IB(Madd__old_tmp_1_cy[21]),
    .IA(a_22_IBUF_144),
    .SEL(Madd__old_tmp_1_lut[22]),
    .O(Madd__old_tmp_1_cy[22])
  );
  X_XOR2   \Madd__old_tmp_1_xor<22>  (
    .I0(Madd__old_tmp_1_cy[21]),
    .I1(Madd__old_tmp_1_lut[22]),
    .O(_old_tmp_1[22])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<23>  (
    .ADR0(a_23_IBUF_145),
    .ADR1(b_23_IBUF_209),
    .O(Madd__old_tmp_1_lut[23])
  );
  X_MUX2   \Madd__old_tmp_1_cy<23>  (
    .IB(Madd__old_tmp_1_cy[22]),
    .IA(a_23_IBUF_145),
    .SEL(Madd__old_tmp_1_lut[23]),
    .O(Madd__old_tmp_1_cy[23])
  );
  X_XOR2   \Madd__old_tmp_1_xor<23>  (
    .I0(Madd__old_tmp_1_cy[22]),
    .I1(Madd__old_tmp_1_lut[23]),
    .O(_old_tmp_1[23])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<24>  (
    .ADR0(a_24_IBUF_146),
    .ADR1(b_24_IBUF_210),
    .O(Madd__old_tmp_1_lut[24])
  );
  X_MUX2   \Madd__old_tmp_1_cy<24>  (
    .IB(Madd__old_tmp_1_cy[23]),
    .IA(a_24_IBUF_146),
    .SEL(Madd__old_tmp_1_lut[24]),
    .O(Madd__old_tmp_1_cy[24])
  );
  X_XOR2   \Madd__old_tmp_1_xor<24>  (
    .I0(Madd__old_tmp_1_cy[23]),
    .I1(Madd__old_tmp_1_lut[24]),
    .O(_old_tmp_1[24])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<25>  (
    .ADR0(a_25_IBUF_147),
    .ADR1(b_25_IBUF_211),
    .O(Madd__old_tmp_1_lut[25])
  );
  X_MUX2   \Madd__old_tmp_1_cy<25>  (
    .IB(Madd__old_tmp_1_cy[24]),
    .IA(a_25_IBUF_147),
    .SEL(Madd__old_tmp_1_lut[25]),
    .O(Madd__old_tmp_1_cy[25])
  );
  X_XOR2   \Madd__old_tmp_1_xor<25>  (
    .I0(Madd__old_tmp_1_cy[24]),
    .I1(Madd__old_tmp_1_lut[25]),
    .O(_old_tmp_1[25])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<26>  (
    .ADR0(a_26_IBUF_148),
    .ADR1(b_26_IBUF_212),
    .O(Madd__old_tmp_1_lut[26])
  );
  X_MUX2   \Madd__old_tmp_1_cy<26>  (
    .IB(Madd__old_tmp_1_cy[25]),
    .IA(a_26_IBUF_148),
    .SEL(Madd__old_tmp_1_lut[26]),
    .O(Madd__old_tmp_1_cy[26])
  );
  X_XOR2   \Madd__old_tmp_1_xor<26>  (
    .I0(Madd__old_tmp_1_cy[25]),
    .I1(Madd__old_tmp_1_lut[26]),
    .O(_old_tmp_1[26])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<27>  (
    .ADR0(a_27_IBUF_149),
    .ADR1(b_27_IBUF_213),
    .O(Madd__old_tmp_1_lut[27])
  );
  X_MUX2   \Madd__old_tmp_1_cy<27>  (
    .IB(Madd__old_tmp_1_cy[26]),
    .IA(a_27_IBUF_149),
    .SEL(Madd__old_tmp_1_lut[27]),
    .O(Madd__old_tmp_1_cy[27])
  );
  X_XOR2   \Madd__old_tmp_1_xor<27>  (
    .I0(Madd__old_tmp_1_cy[26]),
    .I1(Madd__old_tmp_1_lut[27]),
    .O(_old_tmp_1[27])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<28>  (
    .ADR0(a_28_IBUF_150),
    .ADR1(b_28_IBUF_214),
    .O(Madd__old_tmp_1_lut[28])
  );
  X_MUX2   \Madd__old_tmp_1_cy<28>  (
    .IB(Madd__old_tmp_1_cy[27]),
    .IA(a_28_IBUF_150),
    .SEL(Madd__old_tmp_1_lut[28]),
    .O(Madd__old_tmp_1_cy[28])
  );
  X_XOR2   \Madd__old_tmp_1_xor<28>  (
    .I0(Madd__old_tmp_1_cy[27]),
    .I1(Madd__old_tmp_1_lut[28]),
    .O(_old_tmp_1[28])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<29>  (
    .ADR0(a_29_IBUF_151),
    .ADR1(b_29_IBUF_215),
    .O(Madd__old_tmp_1_lut[29])
  );
  X_MUX2   \Madd__old_tmp_1_cy<29>  (
    .IB(Madd__old_tmp_1_cy[28]),
    .IA(a_29_IBUF_151),
    .SEL(Madd__old_tmp_1_lut[29]),
    .O(Madd__old_tmp_1_cy[29])
  );
  X_XOR2   \Madd__old_tmp_1_xor<29>  (
    .I0(Madd__old_tmp_1_cy[28]),
    .I1(Madd__old_tmp_1_lut[29]),
    .O(_old_tmp_1[29])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<30>  (
    .ADR0(a_30_IBUF_153),
    .ADR1(b_30_IBUF_217),
    .O(Madd__old_tmp_1_lut[30])
  );
  X_MUX2   \Madd__old_tmp_1_cy<30>  (
    .IB(Madd__old_tmp_1_cy[29]),
    .IA(a_30_IBUF_153),
    .SEL(Madd__old_tmp_1_lut[30]),
    .O(Madd__old_tmp_1_cy[30])
  );
  X_XOR2   \Madd__old_tmp_1_xor<30>  (
    .I0(Madd__old_tmp_1_cy[29]),
    .I1(Madd__old_tmp_1_lut[30]),
    .O(_old_tmp_1[30])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<31>  (
    .ADR0(a_31_IBUF_154),
    .ADR1(b_31_IBUF_218),
    .O(Madd__old_tmp_1_lut[31])
  );
  X_MUX2   \Madd__old_tmp_1_cy<31>  (
    .IB(Madd__old_tmp_1_cy[30]),
    .IA(a_31_IBUF_154),
    .SEL(\Madd__old_tmp_1_lut<31>1_57 ),
    .O(Madd__old_tmp_1_cy[31])
  );
  X_XOR2   \Madd__old_tmp_1_xor<31>  (
    .I0(Madd__old_tmp_1_cy[30]),
    .I1(\Madd__old_tmp_1_lut<31>1_57 ),
    .O(_old_tmp_1[31])
  );
  X_XOR2   \Madd__old_tmp_1_xor<32>  (
    .I0(Madd__old_tmp_1_cy[31]),
    .I1(Madd__old_tmp_1_lut[31]),
    .O(r_31_OBUF_282)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<9>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[9]),
    .ADR2(r_31_OBUF_282),
    .O(r_9_OBUF_289)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<8>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[8]),
    .ADR2(r_31_OBUF_282),
    .O(r_8_OBUF_288)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<7>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[7]),
    .ADR2(r_31_OBUF_282),
    .O(r_7_OBUF_287)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<6>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[6]),
    .ADR2(r_31_OBUF_282),
    .O(r_6_OBUF_286)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<5>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[5]),
    .ADR2(r_31_OBUF_282),
    .O(r_5_OBUF_285)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<4>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[4]),
    .ADR2(r_31_OBUF_282),
    .O(r_4_OBUF_284)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<3>1  (
    .ADR0(_old_tmp_1[31]),
    .ADR1(_old_tmp_1[3]),
    .ADR2(r_31_OBUF_282),
    .O(r_3_OBUF_283)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<30>1  (
    .ADR0(_old_tmp_1[30]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_30_OBUF_281)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<2>1  (
    .ADR0(_old_tmp_1[2]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_2_OBUF_280)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<29>1  (
    .ADR0(_old_tmp_1[29]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_29_OBUF_279)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<28>1  (
    .ADR0(_old_tmp_1[28]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_28_OBUF_278)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<27>1  (
    .ADR0(_old_tmp_1[27]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_27_OBUF_277)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<26>1  (
    .ADR0(_old_tmp_1[26]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_26_OBUF_276)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<25>1  (
    .ADR0(_old_tmp_1[25]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_25_OBUF_275)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<24>1  (
    .ADR0(_old_tmp_1[24]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_24_OBUF_274)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<23>1  (
    .ADR0(_old_tmp_1[23]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_23_OBUF_273)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<22>1  (
    .ADR0(_old_tmp_1[22]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_22_OBUF_272)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<21>1  (
    .ADR0(_old_tmp_1[21]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_21_OBUF_271)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<20>1  (
    .ADR0(_old_tmp_1[20]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_20_OBUF_270)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<1>1  (
    .ADR0(_old_tmp_1[1]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_1_OBUF_269)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<19>1  (
    .ADR0(_old_tmp_1[19]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_19_OBUF_268)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<18>1  (
    .ADR0(_old_tmp_1[18]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_18_OBUF_267)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<17>1  (
    .ADR0(_old_tmp_1[17]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_17_OBUF_266)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<16>1  (
    .ADR0(_old_tmp_1[16]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_16_OBUF_265)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<15>1  (
    .ADR0(_old_tmp_1[15]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_15_OBUF_264)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<14>1  (
    .ADR0(_old_tmp_1[14]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_14_OBUF_263)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<13>1  (
    .ADR0(_old_tmp_1[13]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_13_OBUF_262)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<12>1  (
    .ADR0(_old_tmp_1[12]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_12_OBUF_261)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<11>1  (
    .ADR0(_old_tmp_1[11]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_11_OBUF_260)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<10>1  (
    .ADR0(_old_tmp_1[10]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_10_OBUF_259)
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \r<0>1  (
    .ADR0(_old_tmp_1[0]),
    .ADR1(_old_tmp_1[31]),
    .ADR2(r_31_OBUF_282),
    .O(r_0_OBUF_258)
  );
  X_BUF   a_31_IBUF (
    .I(a[31]),
    .O(a_31_IBUF_154)
  );
  X_BUF   a_30_IBUF (
    .I(a[30]),
    .O(a_30_IBUF_153)
  );
  X_BUF   a_29_IBUF (
    .I(a[29]),
    .O(a_29_IBUF_151)
  );
  X_BUF   a_28_IBUF (
    .I(a[28]),
    .O(a_28_IBUF_150)
  );
  X_BUF   a_27_IBUF (
    .I(a[27]),
    .O(a_27_IBUF_149)
  );
  X_BUF   a_26_IBUF (
    .I(a[26]),
    .O(a_26_IBUF_148)
  );
  X_BUF   a_25_IBUF (
    .I(a[25]),
    .O(a_25_IBUF_147)
  );
  X_BUF   a_24_IBUF (
    .I(a[24]),
    .O(a_24_IBUF_146)
  );
  X_BUF   a_23_IBUF (
    .I(a[23]),
    .O(a_23_IBUF_145)
  );
  X_BUF   a_22_IBUF (
    .I(a[22]),
    .O(a_22_IBUF_144)
  );
  X_BUF   a_21_IBUF (
    .I(a[21]),
    .O(a_21_IBUF_143)
  );
  X_BUF   a_20_IBUF (
    .I(a[20]),
    .O(a_20_IBUF_142)
  );
  X_BUF   a_19_IBUF (
    .I(a[19]),
    .O(a_19_IBUF_140)
  );
  X_BUF   a_18_IBUF (
    .I(a[18]),
    .O(a_18_IBUF_139)
  );
  X_BUF   a_17_IBUF (
    .I(a[17]),
    .O(a_17_IBUF_138)
  );
  X_BUF   a_16_IBUF (
    .I(a[16]),
    .O(a_16_IBUF_137)
  );
  X_BUF   a_15_IBUF (
    .I(a[15]),
    .O(a_15_IBUF_136)
  );
  X_BUF   a_14_IBUF (
    .I(a[14]),
    .O(a_14_IBUF_135)
  );
  X_BUF   a_13_IBUF (
    .I(a[13]),
    .O(a_13_IBUF_134)
  );
  X_BUF   a_12_IBUF (
    .I(a[12]),
    .O(a_12_IBUF_133)
  );
  X_BUF   a_11_IBUF (
    .I(a[11]),
    .O(a_11_IBUF_132)
  );
  X_BUF   a_10_IBUF (
    .I(a[10]),
    .O(a_10_IBUF_131)
  );
  X_BUF   a_9_IBUF (
    .I(a[9]),
    .O(a_9_IBUF_161)
  );
  X_BUF   a_8_IBUF (
    .I(a[8]),
    .O(a_8_IBUF_160)
  );
  X_BUF   a_7_IBUF (
    .I(a[7]),
    .O(a_7_IBUF_159)
  );
  X_BUF   a_6_IBUF (
    .I(a[6]),
    .O(a_6_IBUF_158)
  );
  X_BUF   a_5_IBUF (
    .I(a[5]),
    .O(a_5_IBUF_157)
  );
  X_BUF   a_4_IBUF (
    .I(a[4]),
    .O(a_4_IBUF_156)
  );
  X_BUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_155)
  );
  X_BUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_152)
  );
  X_BUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_141)
  );
  X_BUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_130)
  );
  X_BUF   b_31_IBUF (
    .I(b[31]),
    .O(b_31_IBUF_218)
  );
  X_BUF   b_30_IBUF (
    .I(b[30]),
    .O(b_30_IBUF_217)
  );
  X_BUF   b_29_IBUF (
    .I(b[29]),
    .O(b_29_IBUF_215)
  );
  X_BUF   b_28_IBUF (
    .I(b[28]),
    .O(b_28_IBUF_214)
  );
  X_BUF   b_27_IBUF (
    .I(b[27]),
    .O(b_27_IBUF_213)
  );
  X_BUF   b_26_IBUF (
    .I(b[26]),
    .O(b_26_IBUF_212)
  );
  X_BUF   b_25_IBUF (
    .I(b[25]),
    .O(b_25_IBUF_211)
  );
  X_BUF   b_24_IBUF (
    .I(b[24]),
    .O(b_24_IBUF_210)
  );
  X_BUF   b_23_IBUF (
    .I(b[23]),
    .O(b_23_IBUF_209)
  );
  X_BUF   b_22_IBUF (
    .I(b[22]),
    .O(b_22_IBUF_208)
  );
  X_BUF   b_21_IBUF (
    .I(b[21]),
    .O(b_21_IBUF_207)
  );
  X_BUF   b_20_IBUF (
    .I(b[20]),
    .O(b_20_IBUF_206)
  );
  X_BUF   b_19_IBUF (
    .I(b[19]),
    .O(b_19_IBUF_204)
  );
  X_BUF   b_18_IBUF (
    .I(b[18]),
    .O(b_18_IBUF_203)
  );
  X_BUF   b_17_IBUF (
    .I(b[17]),
    .O(b_17_IBUF_202)
  );
  X_BUF   b_16_IBUF (
    .I(b[16]),
    .O(b_16_IBUF_201)
  );
  X_BUF   b_15_IBUF (
    .I(b[15]),
    .O(b_15_IBUF_200)
  );
  X_BUF   b_14_IBUF (
    .I(b[14]),
    .O(b_14_IBUF_199)
  );
  X_BUF   b_13_IBUF (
    .I(b[13]),
    .O(b_13_IBUF_198)
  );
  X_BUF   b_12_IBUF (
    .I(b[12]),
    .O(b_12_IBUF_197)
  );
  X_BUF   b_11_IBUF (
    .I(b[11]),
    .O(b_11_IBUF_196)
  );
  X_BUF   b_10_IBUF (
    .I(b[10]),
    .O(b_10_IBUF_195)
  );
  X_BUF   b_9_IBUF (
    .I(b[9]),
    .O(b_9_IBUF_225)
  );
  X_BUF   b_8_IBUF (
    .I(b[8]),
    .O(b_8_IBUF_224)
  );
  X_BUF   b_7_IBUF (
    .I(b[7]),
    .O(b_7_IBUF_223)
  );
  X_BUF   b_6_IBUF (
    .I(b[6]),
    .O(b_6_IBUF_222)
  );
  X_BUF   b_5_IBUF (
    .I(b[5]),
    .O(b_5_IBUF_221)
  );
  X_BUF   b_4_IBUF (
    .I(b[4]),
    .O(b_4_IBUF_220)
  );
  X_BUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_219)
  );
  X_BUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_216)
  );
  X_BUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_205)
  );
  X_BUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_194)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<31>1  (
    .ADR0(a_31_IBUF_154),
    .ADR1(b_31_IBUF_218),
    .O(\Madd__old_tmp_1_lut<31>1_57 )
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
    .I(r_0_OBUF_258),
    .O(r[0])
  );
  X_OBUF   r_10_OBUF (
    .I(r_10_OBUF_259),
    .O(r[10])
  );
  X_OBUF   r_11_OBUF (
    .I(r_11_OBUF_260),
    .O(r[11])
  );
  X_OBUF   r_12_OBUF (
    .I(r_12_OBUF_261),
    .O(r[12])
  );
  X_OBUF   r_13_OBUF (
    .I(r_13_OBUF_262),
    .O(r[13])
  );
  X_OBUF   r_14_OBUF (
    .I(r_14_OBUF_263),
    .O(r[14])
  );
  X_OBUF   r_15_OBUF (
    .I(r_15_OBUF_264),
    .O(r[15])
  );
  X_OBUF   r_16_OBUF (
    .I(r_16_OBUF_265),
    .O(r[16])
  );
  X_OBUF   r_17_OBUF (
    .I(r_17_OBUF_266),
    .O(r[17])
  );
  X_OBUF   r_18_OBUF (
    .I(r_18_OBUF_267),
    .O(r[18])
  );
  X_OBUF   r_19_OBUF (
    .I(r_19_OBUF_268),
    .O(r[19])
  );
  X_OBUF   r_1_OBUF (
    .I(r_1_OBUF_269),
    .O(r[1])
  );
  X_OBUF   r_20_OBUF (
    .I(r_20_OBUF_270),
    .O(r[20])
  );
  X_OBUF   r_21_OBUF (
    .I(r_21_OBUF_271),
    .O(r[21])
  );
  X_OBUF   r_22_OBUF (
    .I(r_22_OBUF_272),
    .O(r[22])
  );
  X_OBUF   r_23_OBUF (
    .I(r_23_OBUF_273),
    .O(r[23])
  );
  X_OBUF   r_24_OBUF (
    .I(r_24_OBUF_274),
    .O(r[24])
  );
  X_OBUF   r_25_OBUF (
    .I(r_25_OBUF_275),
    .O(r[25])
  );
  X_OBUF   r_26_OBUF (
    .I(r_26_OBUF_276),
    .O(r[26])
  );
  X_OBUF   r_27_OBUF (
    .I(r_27_OBUF_277),
    .O(r[27])
  );
  X_OBUF   r_28_OBUF (
    .I(r_28_OBUF_278),
    .O(r[28])
  );
  X_OBUF   r_29_OBUF (
    .I(r_29_OBUF_279),
    .O(r[29])
  );
  X_OBUF   r_2_OBUF (
    .I(r_2_OBUF_280),
    .O(r[2])
  );
  X_OBUF   r_30_OBUF (
    .I(r_30_OBUF_281),
    .O(r[30])
  );
  X_OBUF   r_31_OBUF (
    .I(r_31_OBUF_282),
    .O(r[31])
  );
  X_OBUF   r_3_OBUF (
    .I(r_3_OBUF_283),
    .O(r[3])
  );
  X_OBUF   r_4_OBUF (
    .I(r_4_OBUF_284),
    .O(r[4])
  );
  X_OBUF   r_5_OBUF (
    .I(r_5_OBUF_285),
    .O(r[5])
  );
  X_OBUF   r_6_OBUF (
    .I(r_6_OBUF_286),
    .O(r[6])
  );
  X_OBUF   r_7_OBUF (
    .I(r_7_OBUF_287),
    .O(r[7])
  );
  X_OBUF   r_8_OBUF (
    .I(r_8_OBUF_288),
    .O(r[8])
  );
  X_OBUF   r_9_OBUF (
    .I(r_9_OBUF_289),
    .O(r[9])
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

