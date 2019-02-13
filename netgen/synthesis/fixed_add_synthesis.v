////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fixed_add_synthesis.v
// /___/   /\     Timestamp: Sun Jan 13 19:46:48 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim fixed_add.ngc fixed_add_synthesis.v 
// Device	: xc5vfx130t-2-ff1738
// Input file	: fixed_add.ngc
// Output file	: /home/test/FPGA/raytracing/netgen/synthesis/fixed_add_synthesis.v
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
  wire a_0_IBUF_100;
  wire a_10_IBUF_101;
  wire a_11_IBUF_102;
  wire a_12_IBUF_103;
  wire a_13_IBUF_104;
  wire a_14_IBUF_105;
  wire a_15_IBUF_106;
  wire a_16_IBUF_107;
  wire a_17_IBUF_108;
  wire a_18_IBUF_109;
  wire a_19_IBUF_110;
  wire a_1_IBUF_111;
  wire a_20_IBUF_112;
  wire a_21_IBUF_113;
  wire a_22_IBUF_114;
  wire a_23_IBUF_115;
  wire a_24_IBUF_116;
  wire a_25_IBUF_117;
  wire a_26_IBUF_118;
  wire a_27_IBUF_119;
  wire a_28_IBUF_120;
  wire a_29_IBUF_121;
  wire a_2_IBUF_122;
  wire a_30_IBUF_123;
  wire a_31_IBUF_124;
  wire a_3_IBUF_125;
  wire a_4_IBUF_126;
  wire a_5_IBUF_127;
  wire a_6_IBUF_128;
  wire a_7_IBUF_129;
  wire a_8_IBUF_130;
  wire a_9_IBUF_131;
  wire b_0_IBUF_164;
  wire b_10_IBUF_165;
  wire b_11_IBUF_166;
  wire b_12_IBUF_167;
  wire b_13_IBUF_168;
  wire b_14_IBUF_169;
  wire b_15_IBUF_170;
  wire b_16_IBUF_171;
  wire b_17_IBUF_172;
  wire b_18_IBUF_173;
  wire b_19_IBUF_174;
  wire b_1_IBUF_175;
  wire b_20_IBUF_176;
  wire b_21_IBUF_177;
  wire b_22_IBUF_178;
  wire b_23_IBUF_179;
  wire b_24_IBUF_180;
  wire b_25_IBUF_181;
  wire b_26_IBUF_182;
  wire b_27_IBUF_183;
  wire b_28_IBUF_184;
  wire b_29_IBUF_185;
  wire b_2_IBUF_186;
  wire b_30_IBUF_187;
  wire b_31_IBUF_188;
  wire b_3_IBUF_189;
  wire b_4_IBUF_190;
  wire b_5_IBUF_191;
  wire b_6_IBUF_192;
  wire b_7_IBUF_193;
  wire b_8_IBUF_194;
  wire b_9_IBUF_195;
  wire r_10_OBUF_228;
  wire r_31_OBUF_229;
  wire [31 : 0] Madd__old_tmp_1_cy;
  wire [31 : 0] Madd__old_tmp_1_lut;
  wire [32 : 31] _old_tmp_1;
  GND   XST_GND (
    .G(N0)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<0>  (
    .I0(a_0_IBUF_100),
    .I1(b_0_IBUF_164),
    .O(Madd__old_tmp_1_lut[0])
  );
  MUXCY   \Madd__old_tmp_1_cy<0>  (
    .CI(N0),
    .DI(a_0_IBUF_100),
    .S(Madd__old_tmp_1_lut[0]),
    .O(Madd__old_tmp_1_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<1>  (
    .I0(a_1_IBUF_111),
    .I1(b_1_IBUF_175),
    .O(Madd__old_tmp_1_lut[1])
  );
  MUXCY   \Madd__old_tmp_1_cy<1>  (
    .CI(Madd__old_tmp_1_cy[0]),
    .DI(a_1_IBUF_111),
    .S(Madd__old_tmp_1_lut[1]),
    .O(Madd__old_tmp_1_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<2>  (
    .I0(a_2_IBUF_122),
    .I1(b_2_IBUF_186),
    .O(Madd__old_tmp_1_lut[2])
  );
  MUXCY   \Madd__old_tmp_1_cy<2>  (
    .CI(Madd__old_tmp_1_cy[1]),
    .DI(a_2_IBUF_122),
    .S(Madd__old_tmp_1_lut[2]),
    .O(Madd__old_tmp_1_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<3>  (
    .I0(a_3_IBUF_125),
    .I1(b_3_IBUF_189),
    .O(Madd__old_tmp_1_lut[3])
  );
  MUXCY   \Madd__old_tmp_1_cy<3>  (
    .CI(Madd__old_tmp_1_cy[2]),
    .DI(a_3_IBUF_125),
    .S(Madd__old_tmp_1_lut[3]),
    .O(Madd__old_tmp_1_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<4>  (
    .I0(a_4_IBUF_126),
    .I1(b_4_IBUF_190),
    .O(Madd__old_tmp_1_lut[4])
  );
  MUXCY   \Madd__old_tmp_1_cy<4>  (
    .CI(Madd__old_tmp_1_cy[3]),
    .DI(a_4_IBUF_126),
    .S(Madd__old_tmp_1_lut[4]),
    .O(Madd__old_tmp_1_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<5>  (
    .I0(a_5_IBUF_127),
    .I1(b_5_IBUF_191),
    .O(Madd__old_tmp_1_lut[5])
  );
  MUXCY   \Madd__old_tmp_1_cy<5>  (
    .CI(Madd__old_tmp_1_cy[4]),
    .DI(a_5_IBUF_127),
    .S(Madd__old_tmp_1_lut[5]),
    .O(Madd__old_tmp_1_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<6>  (
    .I0(a_6_IBUF_128),
    .I1(b_6_IBUF_192),
    .O(Madd__old_tmp_1_lut[6])
  );
  MUXCY   \Madd__old_tmp_1_cy<6>  (
    .CI(Madd__old_tmp_1_cy[5]),
    .DI(a_6_IBUF_128),
    .S(Madd__old_tmp_1_lut[6]),
    .O(Madd__old_tmp_1_cy[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<7>  (
    .I0(a_7_IBUF_129),
    .I1(b_7_IBUF_193),
    .O(Madd__old_tmp_1_lut[7])
  );
  MUXCY   \Madd__old_tmp_1_cy<7>  (
    .CI(Madd__old_tmp_1_cy[6]),
    .DI(a_7_IBUF_129),
    .S(Madd__old_tmp_1_lut[7]),
    .O(Madd__old_tmp_1_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<8>  (
    .I0(a_8_IBUF_130),
    .I1(b_8_IBUF_194),
    .O(Madd__old_tmp_1_lut[8])
  );
  MUXCY   \Madd__old_tmp_1_cy<8>  (
    .CI(Madd__old_tmp_1_cy[7]),
    .DI(a_8_IBUF_130),
    .S(Madd__old_tmp_1_lut[8]),
    .O(Madd__old_tmp_1_cy[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<9>  (
    .I0(a_9_IBUF_131),
    .I1(b_9_IBUF_195),
    .O(Madd__old_tmp_1_lut[9])
  );
  MUXCY   \Madd__old_tmp_1_cy<9>  (
    .CI(Madd__old_tmp_1_cy[8]),
    .DI(a_9_IBUF_131),
    .S(Madd__old_tmp_1_lut[9]),
    .O(Madd__old_tmp_1_cy[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<10>  (
    .I0(a_10_IBUF_101),
    .I1(b_10_IBUF_165),
    .O(Madd__old_tmp_1_lut[10])
  );
  MUXCY   \Madd__old_tmp_1_cy<10>  (
    .CI(Madd__old_tmp_1_cy[9]),
    .DI(a_10_IBUF_101),
    .S(Madd__old_tmp_1_lut[10]),
    .O(Madd__old_tmp_1_cy[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<11>  (
    .I0(a_11_IBUF_102),
    .I1(b_11_IBUF_166),
    .O(Madd__old_tmp_1_lut[11])
  );
  MUXCY   \Madd__old_tmp_1_cy<11>  (
    .CI(Madd__old_tmp_1_cy[10]),
    .DI(a_11_IBUF_102),
    .S(Madd__old_tmp_1_lut[11]),
    .O(Madd__old_tmp_1_cy[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<12>  (
    .I0(a_12_IBUF_103),
    .I1(b_12_IBUF_167),
    .O(Madd__old_tmp_1_lut[12])
  );
  MUXCY   \Madd__old_tmp_1_cy<12>  (
    .CI(Madd__old_tmp_1_cy[11]),
    .DI(a_12_IBUF_103),
    .S(Madd__old_tmp_1_lut[12]),
    .O(Madd__old_tmp_1_cy[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<13>  (
    .I0(a_13_IBUF_104),
    .I1(b_13_IBUF_168),
    .O(Madd__old_tmp_1_lut[13])
  );
  MUXCY   \Madd__old_tmp_1_cy<13>  (
    .CI(Madd__old_tmp_1_cy[12]),
    .DI(a_13_IBUF_104),
    .S(Madd__old_tmp_1_lut[13]),
    .O(Madd__old_tmp_1_cy[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<14>  (
    .I0(a_14_IBUF_105),
    .I1(b_14_IBUF_169),
    .O(Madd__old_tmp_1_lut[14])
  );
  MUXCY   \Madd__old_tmp_1_cy<14>  (
    .CI(Madd__old_tmp_1_cy[13]),
    .DI(a_14_IBUF_105),
    .S(Madd__old_tmp_1_lut[14]),
    .O(Madd__old_tmp_1_cy[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<15>  (
    .I0(a_15_IBUF_106),
    .I1(b_15_IBUF_170),
    .O(Madd__old_tmp_1_lut[15])
  );
  MUXCY   \Madd__old_tmp_1_cy<15>  (
    .CI(Madd__old_tmp_1_cy[14]),
    .DI(a_15_IBUF_106),
    .S(Madd__old_tmp_1_lut[15]),
    .O(Madd__old_tmp_1_cy[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<16>  (
    .I0(a_16_IBUF_107),
    .I1(b_16_IBUF_171),
    .O(Madd__old_tmp_1_lut[16])
  );
  MUXCY   \Madd__old_tmp_1_cy<16>  (
    .CI(Madd__old_tmp_1_cy[15]),
    .DI(a_16_IBUF_107),
    .S(Madd__old_tmp_1_lut[16]),
    .O(Madd__old_tmp_1_cy[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<17>  (
    .I0(a_17_IBUF_108),
    .I1(b_17_IBUF_172),
    .O(Madd__old_tmp_1_lut[17])
  );
  MUXCY   \Madd__old_tmp_1_cy<17>  (
    .CI(Madd__old_tmp_1_cy[16]),
    .DI(a_17_IBUF_108),
    .S(Madd__old_tmp_1_lut[17]),
    .O(Madd__old_tmp_1_cy[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<18>  (
    .I0(a_18_IBUF_109),
    .I1(b_18_IBUF_173),
    .O(Madd__old_tmp_1_lut[18])
  );
  MUXCY   \Madd__old_tmp_1_cy<18>  (
    .CI(Madd__old_tmp_1_cy[17]),
    .DI(a_18_IBUF_109),
    .S(Madd__old_tmp_1_lut[18]),
    .O(Madd__old_tmp_1_cy[18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<19>  (
    .I0(a_19_IBUF_110),
    .I1(b_19_IBUF_174),
    .O(Madd__old_tmp_1_lut[19])
  );
  MUXCY   \Madd__old_tmp_1_cy<19>  (
    .CI(Madd__old_tmp_1_cy[18]),
    .DI(a_19_IBUF_110),
    .S(Madd__old_tmp_1_lut[19]),
    .O(Madd__old_tmp_1_cy[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<20>  (
    .I0(a_20_IBUF_112),
    .I1(b_20_IBUF_176),
    .O(Madd__old_tmp_1_lut[20])
  );
  MUXCY   \Madd__old_tmp_1_cy<20>  (
    .CI(Madd__old_tmp_1_cy[19]),
    .DI(a_20_IBUF_112),
    .S(Madd__old_tmp_1_lut[20]),
    .O(Madd__old_tmp_1_cy[20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<21>  (
    .I0(a_21_IBUF_113),
    .I1(b_21_IBUF_177),
    .O(Madd__old_tmp_1_lut[21])
  );
  MUXCY   \Madd__old_tmp_1_cy<21>  (
    .CI(Madd__old_tmp_1_cy[20]),
    .DI(a_21_IBUF_113),
    .S(Madd__old_tmp_1_lut[21]),
    .O(Madd__old_tmp_1_cy[21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<22>  (
    .I0(a_22_IBUF_114),
    .I1(b_22_IBUF_178),
    .O(Madd__old_tmp_1_lut[22])
  );
  MUXCY   \Madd__old_tmp_1_cy<22>  (
    .CI(Madd__old_tmp_1_cy[21]),
    .DI(a_22_IBUF_114),
    .S(Madd__old_tmp_1_lut[22]),
    .O(Madd__old_tmp_1_cy[22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<23>  (
    .I0(a_23_IBUF_115),
    .I1(b_23_IBUF_179),
    .O(Madd__old_tmp_1_lut[23])
  );
  MUXCY   \Madd__old_tmp_1_cy<23>  (
    .CI(Madd__old_tmp_1_cy[22]),
    .DI(a_23_IBUF_115),
    .S(Madd__old_tmp_1_lut[23]),
    .O(Madd__old_tmp_1_cy[23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<24>  (
    .I0(a_24_IBUF_116),
    .I1(b_24_IBUF_180),
    .O(Madd__old_tmp_1_lut[24])
  );
  MUXCY   \Madd__old_tmp_1_cy<24>  (
    .CI(Madd__old_tmp_1_cy[23]),
    .DI(a_24_IBUF_116),
    .S(Madd__old_tmp_1_lut[24]),
    .O(Madd__old_tmp_1_cy[24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<25>  (
    .I0(a_25_IBUF_117),
    .I1(b_25_IBUF_181),
    .O(Madd__old_tmp_1_lut[25])
  );
  MUXCY   \Madd__old_tmp_1_cy<25>  (
    .CI(Madd__old_tmp_1_cy[24]),
    .DI(a_25_IBUF_117),
    .S(Madd__old_tmp_1_lut[25]),
    .O(Madd__old_tmp_1_cy[25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<26>  (
    .I0(a_26_IBUF_118),
    .I1(b_26_IBUF_182),
    .O(Madd__old_tmp_1_lut[26])
  );
  MUXCY   \Madd__old_tmp_1_cy<26>  (
    .CI(Madd__old_tmp_1_cy[25]),
    .DI(a_26_IBUF_118),
    .S(Madd__old_tmp_1_lut[26]),
    .O(Madd__old_tmp_1_cy[26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<27>  (
    .I0(a_27_IBUF_119),
    .I1(b_27_IBUF_183),
    .O(Madd__old_tmp_1_lut[27])
  );
  MUXCY   \Madd__old_tmp_1_cy<27>  (
    .CI(Madd__old_tmp_1_cy[26]),
    .DI(a_27_IBUF_119),
    .S(Madd__old_tmp_1_lut[27]),
    .O(Madd__old_tmp_1_cy[27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<28>  (
    .I0(a_28_IBUF_120),
    .I1(b_28_IBUF_184),
    .O(Madd__old_tmp_1_lut[28])
  );
  MUXCY   \Madd__old_tmp_1_cy<28>  (
    .CI(Madd__old_tmp_1_cy[27]),
    .DI(a_28_IBUF_120),
    .S(Madd__old_tmp_1_lut[28]),
    .O(Madd__old_tmp_1_cy[28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<29>  (
    .I0(a_29_IBUF_121),
    .I1(b_29_IBUF_185),
    .O(Madd__old_tmp_1_lut[29])
  );
  MUXCY   \Madd__old_tmp_1_cy<29>  (
    .CI(Madd__old_tmp_1_cy[28]),
    .DI(a_29_IBUF_121),
    .S(Madd__old_tmp_1_lut[29]),
    .O(Madd__old_tmp_1_cy[29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<30>  (
    .I0(a_30_IBUF_123),
    .I1(b_30_IBUF_187),
    .O(Madd__old_tmp_1_lut[30])
  );
  MUXCY   \Madd__old_tmp_1_cy<30>  (
    .CI(Madd__old_tmp_1_cy[29]),
    .DI(a_30_IBUF_123),
    .S(Madd__old_tmp_1_lut[30]),
    .O(Madd__old_tmp_1_cy[30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<31>  (
    .I0(a_31_IBUF_124),
    .I1(b_31_IBUF_188),
    .O(Madd__old_tmp_1_lut[31])
  );
  MUXCY   \Madd__old_tmp_1_cy<31>  (
    .CI(Madd__old_tmp_1_cy[30]),
    .DI(a_31_IBUF_124),
    .S(\Madd__old_tmp_1_lut<31>1_57 ),
    .O(Madd__old_tmp_1_cy[31])
  );
  XORCY   \Madd__old_tmp_1_xor<31>  (
    .CI(Madd__old_tmp_1_cy[30]),
    .LI(\Madd__old_tmp_1_lut<31>1_57 ),
    .O(_old_tmp_1[31])
  );
  XORCY   \Madd__old_tmp_1_xor<32>  (
    .CI(Madd__old_tmp_1_cy[31]),
    .LI(Madd__old_tmp_1_lut[31]),
    .O(_old_tmp_1[32])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \r<31>1  (
    .I0(_old_tmp_1[31]),
    .I1(_old_tmp_1[32]),
    .O(r_31_OBUF_229)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \r<10>1  (
    .I0(_old_tmp_1[31]),
    .I1(_old_tmp_1[32]),
    .O(r_10_OBUF_228)
  );
  IBUF   a_31_IBUF (
    .I(a[31]),
    .O(a_31_IBUF_124)
  );
  IBUF   a_30_IBUF (
    .I(a[30]),
    .O(a_30_IBUF_123)
  );
  IBUF   a_29_IBUF (
    .I(a[29]),
    .O(a_29_IBUF_121)
  );
  IBUF   a_28_IBUF (
    .I(a[28]),
    .O(a_28_IBUF_120)
  );
  IBUF   a_27_IBUF (
    .I(a[27]),
    .O(a_27_IBUF_119)
  );
  IBUF   a_26_IBUF (
    .I(a[26]),
    .O(a_26_IBUF_118)
  );
  IBUF   a_25_IBUF (
    .I(a[25]),
    .O(a_25_IBUF_117)
  );
  IBUF   a_24_IBUF (
    .I(a[24]),
    .O(a_24_IBUF_116)
  );
  IBUF   a_23_IBUF (
    .I(a[23]),
    .O(a_23_IBUF_115)
  );
  IBUF   a_22_IBUF (
    .I(a[22]),
    .O(a_22_IBUF_114)
  );
  IBUF   a_21_IBUF (
    .I(a[21]),
    .O(a_21_IBUF_113)
  );
  IBUF   a_20_IBUF (
    .I(a[20]),
    .O(a_20_IBUF_112)
  );
  IBUF   a_19_IBUF (
    .I(a[19]),
    .O(a_19_IBUF_110)
  );
  IBUF   a_18_IBUF (
    .I(a[18]),
    .O(a_18_IBUF_109)
  );
  IBUF   a_17_IBUF (
    .I(a[17]),
    .O(a_17_IBUF_108)
  );
  IBUF   a_16_IBUF (
    .I(a[16]),
    .O(a_16_IBUF_107)
  );
  IBUF   a_15_IBUF (
    .I(a[15]),
    .O(a_15_IBUF_106)
  );
  IBUF   a_14_IBUF (
    .I(a[14]),
    .O(a_14_IBUF_105)
  );
  IBUF   a_13_IBUF (
    .I(a[13]),
    .O(a_13_IBUF_104)
  );
  IBUF   a_12_IBUF (
    .I(a[12]),
    .O(a_12_IBUF_103)
  );
  IBUF   a_11_IBUF (
    .I(a[11]),
    .O(a_11_IBUF_102)
  );
  IBUF   a_10_IBUF (
    .I(a[10]),
    .O(a_10_IBUF_101)
  );
  IBUF   a_9_IBUF (
    .I(a[9]),
    .O(a_9_IBUF_131)
  );
  IBUF   a_8_IBUF (
    .I(a[8]),
    .O(a_8_IBUF_130)
  );
  IBUF   a_7_IBUF (
    .I(a[7]),
    .O(a_7_IBUF_129)
  );
  IBUF   a_6_IBUF (
    .I(a[6]),
    .O(a_6_IBUF_128)
  );
  IBUF   a_5_IBUF (
    .I(a[5]),
    .O(a_5_IBUF_127)
  );
  IBUF   a_4_IBUF (
    .I(a[4]),
    .O(a_4_IBUF_126)
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_125)
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_122)
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_111)
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_100)
  );
  IBUF   b_31_IBUF (
    .I(b[31]),
    .O(b_31_IBUF_188)
  );
  IBUF   b_30_IBUF (
    .I(b[30]),
    .O(b_30_IBUF_187)
  );
  IBUF   b_29_IBUF (
    .I(b[29]),
    .O(b_29_IBUF_185)
  );
  IBUF   b_28_IBUF (
    .I(b[28]),
    .O(b_28_IBUF_184)
  );
  IBUF   b_27_IBUF (
    .I(b[27]),
    .O(b_27_IBUF_183)
  );
  IBUF   b_26_IBUF (
    .I(b[26]),
    .O(b_26_IBUF_182)
  );
  IBUF   b_25_IBUF (
    .I(b[25]),
    .O(b_25_IBUF_181)
  );
  IBUF   b_24_IBUF (
    .I(b[24]),
    .O(b_24_IBUF_180)
  );
  IBUF   b_23_IBUF (
    .I(b[23]),
    .O(b_23_IBUF_179)
  );
  IBUF   b_22_IBUF (
    .I(b[22]),
    .O(b_22_IBUF_178)
  );
  IBUF   b_21_IBUF (
    .I(b[21]),
    .O(b_21_IBUF_177)
  );
  IBUF   b_20_IBUF (
    .I(b[20]),
    .O(b_20_IBUF_176)
  );
  IBUF   b_19_IBUF (
    .I(b[19]),
    .O(b_19_IBUF_174)
  );
  IBUF   b_18_IBUF (
    .I(b[18]),
    .O(b_18_IBUF_173)
  );
  IBUF   b_17_IBUF (
    .I(b[17]),
    .O(b_17_IBUF_172)
  );
  IBUF   b_16_IBUF (
    .I(b[16]),
    .O(b_16_IBUF_171)
  );
  IBUF   b_15_IBUF (
    .I(b[15]),
    .O(b_15_IBUF_170)
  );
  IBUF   b_14_IBUF (
    .I(b[14]),
    .O(b_14_IBUF_169)
  );
  IBUF   b_13_IBUF (
    .I(b[13]),
    .O(b_13_IBUF_168)
  );
  IBUF   b_12_IBUF (
    .I(b[12]),
    .O(b_12_IBUF_167)
  );
  IBUF   b_11_IBUF (
    .I(b[11]),
    .O(b_11_IBUF_166)
  );
  IBUF   b_10_IBUF (
    .I(b[10]),
    .O(b_10_IBUF_165)
  );
  IBUF   b_9_IBUF (
    .I(b[9]),
    .O(b_9_IBUF_195)
  );
  IBUF   b_8_IBUF (
    .I(b[8]),
    .O(b_8_IBUF_194)
  );
  IBUF   b_7_IBUF (
    .I(b[7]),
    .O(b_7_IBUF_193)
  );
  IBUF   b_6_IBUF (
    .I(b[6]),
    .O(b_6_IBUF_192)
  );
  IBUF   b_5_IBUF (
    .I(b[5]),
    .O(b_5_IBUF_191)
  );
  IBUF   b_4_IBUF (
    .I(b[4]),
    .O(b_4_IBUF_190)
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_189)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_186)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_175)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_164)
  );
  OBUF   r_31_OBUF (
    .I(r_31_OBUF_229),
    .O(r[31])
  );
  OBUF   r_30_OBUF (
    .I(r_10_OBUF_228),
    .O(r[30])
  );
  OBUF   r_29_OBUF (
    .I(r_10_OBUF_228),
    .O(r[29])
  );
  OBUF   r_28_OBUF (
    .I(r_10_OBUF_228),
    .O(r[28])
  );
  OBUF   r_27_OBUF (
    .I(r_10_OBUF_228),
    .O(r[27])
  );
  OBUF   r_26_OBUF (
    .I(r_10_OBUF_228),
    .O(r[26])
  );
  OBUF   r_25_OBUF (
    .I(r_10_OBUF_228),
    .O(r[25])
  );
  OBUF   r_24_OBUF (
    .I(r_10_OBUF_228),
    .O(r[24])
  );
  OBUF   r_23_OBUF (
    .I(r_10_OBUF_228),
    .O(r[23])
  );
  OBUF   r_22_OBUF (
    .I(r_10_OBUF_228),
    .O(r[22])
  );
  OBUF   r_21_OBUF (
    .I(r_10_OBUF_228),
    .O(r[21])
  );
  OBUF   r_20_OBUF (
    .I(r_10_OBUF_228),
    .O(r[20])
  );
  OBUF   r_19_OBUF (
    .I(r_10_OBUF_228),
    .O(r[19])
  );
  OBUF   r_18_OBUF (
    .I(r_10_OBUF_228),
    .O(r[18])
  );
  OBUF   r_17_OBUF (
    .I(r_10_OBUF_228),
    .O(r[17])
  );
  OBUF   r_16_OBUF (
    .I(r_10_OBUF_228),
    .O(r[16])
  );
  OBUF   r_15_OBUF (
    .I(r_10_OBUF_228),
    .O(r[15])
  );
  OBUF   r_14_OBUF (
    .I(r_10_OBUF_228),
    .O(r[14])
  );
  OBUF   r_13_OBUF (
    .I(r_10_OBUF_228),
    .O(r[13])
  );
  OBUF   r_12_OBUF (
    .I(r_10_OBUF_228),
    .O(r[12])
  );
  OBUF   r_11_OBUF (
    .I(r_10_OBUF_228),
    .O(r[11])
  );
  OBUF   r_10_OBUF (
    .I(r_10_OBUF_228),
    .O(r[10])
  );
  OBUF   r_9_OBUF (
    .I(r_10_OBUF_228),
    .O(r[9])
  );
  OBUF   r_8_OBUF (
    .I(r_10_OBUF_228),
    .O(r[8])
  );
  OBUF   r_7_OBUF (
    .I(r_10_OBUF_228),
    .O(r[7])
  );
  OBUF   r_6_OBUF (
    .I(r_10_OBUF_228),
    .O(r[6])
  );
  OBUF   r_5_OBUF (
    .I(r_10_OBUF_228),
    .O(r[5])
  );
  OBUF   r_4_OBUF (
    .I(r_10_OBUF_228),
    .O(r[4])
  );
  OBUF   r_3_OBUF (
    .I(r_10_OBUF_228),
    .O(r[3])
  );
  OBUF   r_2_OBUF (
    .I(r_10_OBUF_228),
    .O(r[2])
  );
  OBUF   r_1_OBUF (
    .I(r_10_OBUF_228),
    .O(r[1])
  );
  OBUF   r_0_OBUF (
    .I(r_10_OBUF_228),
    .O(r[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_tmp_1_lut<31>1  (
    .I0(a_31_IBUF_124),
    .I1(b_31_IBUF_188),
    .O(\Madd__old_tmp_1_lut<31>1_57 )
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

