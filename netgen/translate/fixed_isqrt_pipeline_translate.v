////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fixed_isqrt_pipeline_translate.v
// /___/   /\     Timestamp: Sun Jan 13 20:38:49 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim fixed_isqrt_pipeline.ngd fixed_isqrt_pipeline_translate.v 
// Device	: 5vfx130tff1738-2
// Input file	: fixed_isqrt_pipeline.ngd
// Output file	: /home/test/FPGA/raytracing/netgen/translate/fixed_isqrt_pipeline_translate.v
// # of Modules	: 1
// Design Name	: fixed_isqrt_pipeline
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

module fixed_isqrt_pipeline (
  clk, new_data, output_valid, rom_addr, r, rom_dout, a
);
  input clk;
  input new_data;
  output output_valid;
  output [11 : 0] rom_addr;
  output [31 : 0] r;
  input [31 : 0] rom_dout;
  input [31 : 0] a;
  wire \Maddsub_rom_addr_addsub0000_lut[0] ;
  wire \Maddsub_rom_addr_addsub0000_lut[11] ;
  wire \Maddsub_rom_addr_addsub0000_lut[1] ;
  wire \Maddsub_rom_addr_addsub0000_lut[2] ;
  wire \Maddsub_rom_addr_addsub0000_lut[3] ;
  wire \Maddsub_rom_addr_addsub0000_lut[4] ;
  wire \Maddsub_rom_addr_addsub0000_lut[5] ;
  wire \Maddsub_rom_addr_addsub0000_lut[6] ;
  wire \Maddsub_rom_addr_addsub0000_lut[7] ;
  wire \Maddsub_rom_addr_addsub0000_lut[8] ;
  wire \Maddsub_rom_addr_addsub0000_lut[9] ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[0] ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<0>1 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[1] ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<1>1 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[2] ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<2>1 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<3>1 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[5] ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<0>1_37 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<1>1_39 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<2>1_41 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<3>1_43 ;
  wire \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<4>1_44 ;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi_45;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi1_46;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi2_47;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi3_48;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi5_49;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi6_50;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi7_51;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi8_52;
  wire Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi9_53;
  wire \Mmux_msb_sel<0>_10 ;
  wire \Mmux_msb_sel<0>_3_55 ;
  wire \Mmux_msb_sel<0>_4_56 ;
  wire \Mmux_msb_sel<0>_7 ;
  wire \Mmux_msb_sel<0>_8 ;
  wire \Mmux_msb_sel<0>_81 ;
  wire \Mmux_msb_sel<0>_82 ;
  wire \Mmux_msb_sel<0>_9 ;
  wire \Mmux_msb_sel<0>_91 ;
  wire \Mmux_msb_sel<0>_92 ;
  wire \Mmux_msb_sel<1>_10 ;
  wire \Mmux_msb_sel<1>_3_65 ;
  wire \Mmux_msb_sel<1>_4_66 ;
  wire \Mmux_msb_sel<1>_7 ;
  wire \Mmux_msb_sel<1>_8 ;
  wire \Mmux_msb_sel<1>_81 ;
  wire \Mmux_msb_sel<1>_82 ;
  wire \Mmux_msb_sel<1>_9 ;
  wire \Mmux_msb_sel<1>_91 ;
  wire \Mmux_msb_sel<1>_92 ;
  wire \Mmux_msb_sel<2>_10 ;
  wire \Mmux_msb_sel<2>_3_75 ;
  wire \Mmux_msb_sel<2>_4_76 ;
  wire \Mmux_msb_sel<2>_7 ;
  wire \Mmux_msb_sel<2>_8 ;
  wire \Mmux_msb_sel<2>_81 ;
  wire \Mmux_msb_sel<2>_82 ;
  wire \Mmux_msb_sel<2>_9 ;
  wire \Mmux_msb_sel<2>_91 ;
  wire \Mmux_msb_sel<2>_92 ;
  wire \Mmux_msb_sel<3>_10_84 ;
  wire \Mmux_msb_sel<3>_7_85 ;
  wire \Mmux_msb_sel<3>_8_86 ;
  wire \Mmux_msb_sel<3>_81_87 ;
  wire \Mmux_msb_sel<3>_82_88 ;
  wire \Mmux_msb_sel<3>_9_89 ;
  wire \Mmux_msb_sel<3>_91_90 ;
  wire \Mmux_msb_sel<3>_92_91 ;
  wire \Mmux_msb_sel<4>_3_92 ;
  wire \Mmux_msb_sel<4>_4_93 ;
  wire \Mmux_msb_sel<5>_3_94 ;
  wire \Mmux_msb_sel<5>_4_95 ;
  wire \Mmux_msb_sel<6>_3_96 ;
  wire \Mmux_msb_sel<6>_4_97 ;
  wire Mshreg_r_0_BRB3_98;
  wire Mshreg_r_10_BRB3_99;
  wire Mshreg_r_11_BRB3_100;
  wire Mshreg_r_12_BRB3_101;
  wire Mshreg_r_13_BRB3_102;
  wire Mshreg_r_14_BRB3_103;
  wire Mshreg_r_15_BRB3_104;
  wire Mshreg_r_16_BRB3_105;
  wire Mshreg_r_17_BRB3_106;
  wire Mshreg_r_18_BRB3_107;
  wire Mshreg_r_19_BRB3_108;
  wire Mshreg_r_1_BRB3_109;
  wire Mshreg_r_20_BRB3_110;
  wire Mshreg_r_21_BRB3_111;
  wire Mshreg_r_22_BRB3_112;
  wire Mshreg_r_23_BRB3_113;
  wire Mshreg_r_24_BRB3_114;
  wire Mshreg_r_25_BRB3_115;
  wire Mshreg_r_26_BRB3_116;
  wire Mshreg_r_27_BRB3_117;
  wire Mshreg_r_28_BRB3_118;
  wire Mshreg_r_29_BRB3_119;
  wire Mshreg_r_2_BRB3_120;
  wire Mshreg_r_30_BRB3_121;
  wire Mshreg_r_3_BRB3_122;
  wire Mshreg_r_4_BRB3_123;
  wire Mshreg_r_5_BRB3_124;
  wire Mshreg_r_6_BRB3_125;
  wire Mshreg_r_7_BRB3_126;
  wire Mshreg_r_8_BRB3_127;
  wire Mshreg_r_9_BRB3_128;
  wire Mshreg_stage4_in_lookup_exact_129;
  wire Mshreg_stage4_in_y_31_130;
  wire N0;
  wire N01;
  wire N1;
  wire N10;
  wire N12;
  wire N13;
  wire N185;
  wire N187;
  wire N189;
  wire N191;
  wire N192;
  wire N21;
  wire N23;
  wire N27;
  wire N31;
  wire N39;
  wire N53;
  wire N55;
  wire N56;
  wire N58;
  wire N59;
  wire N8;
  wire a_0_IBUF_189;
  wire a_10_IBUF_190;
  wire a_11_IBUF_191;
  wire a_12_IBUF_192;
  wire a_13_IBUF_193;
  wire a_14_IBUF_194;
  wire a_15_IBUF_195;
  wire a_16_IBUF_196;
  wire a_17_IBUF_197;
  wire a_18_IBUF_198;
  wire a_19_IBUF_199;
  wire a_1_IBUF_200;
  wire a_20_IBUF_201;
  wire a_21_IBUF_202;
  wire a_22_IBUF_203;
  wire a_23_IBUF_204;
  wire a_24_IBUF_205;
  wire a_25_IBUF_206;
  wire a_26_IBUF_207;
  wire a_27_IBUF_208;
  wire a_28_IBUF_209;
  wire a_29_IBUF_210;
  wire a_2_IBUF_211;
  wire a_30_IBUF_212;
  wire a_31_IBUF_213;
  wire a_3_IBUF_214;
  wire a_4_IBUF_215;
  wire a_5_IBUF_216;
  wire a_6_IBUF_217;
  wire a_7_IBUF_218;
  wire a_8_IBUF_219;
  wire a_9_IBUF_220;
  wire clk_BUFGP;
  wire \clz32_instance/clz16_high/clz8_high/z<1>1 ;
  wire \clz32_instance/clz16_high/clz8_high/z<1>_bdd4 ;
  wire \clz32_instance/clz16_high/clz8_low/z<1>_bdd4 ;
  wire \clz32_instance/clz16_high/z_cmp_eq0000 ;
  wire \clz32_instance/clz16_low/clz8_high/z<1>1 ;
  wire \clz32_instance/clz16_low/clz8_high/z<1>_bdd4 ;
  wire \clz32_instance/clz16_low/clz8_low/z<1>_bdd4 ;
  wire \clz32_instance/clz16_low/z_cmp_eq0000 ;
  wire \clz32_instance/z<0>130_241 ;
  wire \clz32_instance/z<0>77_242 ;
  wire \clz32_instance/z<1>31_243 ;
  wire \clz32_instance/z<1>70_244 ;
  wire \clz32_instance/z<2>71_245 ;
  wire \clz32_instance/z<2>96_246 ;
  wire \clz32_instance/z_cmp_eq0000 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_0 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_1 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_10 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_11 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_12 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_13 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_14 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_15 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_16 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_17 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_18 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_19 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_2 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_20 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_21 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_22 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_23 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_24 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_25 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_26 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_27 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_28 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_29 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_3 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_30 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_31 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_32 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_33 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_34 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_35 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_36 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_37 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_38 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_39 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_4 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_40 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_41 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_42 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_43 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_44 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_45 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_46 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_47 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_5 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_6 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_7 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_8 ;
  wire \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_9 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_0 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_1 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_10 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_11 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_12 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_13 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_14 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_15 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_16 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_17 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_18 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_19 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_2 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_20 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_21 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_22 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_23 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_24 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_25 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_26 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_27 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_28 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_29 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_3 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_4 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_5 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_6 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_7 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_8 ;
  wire \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_9 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_0 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_1 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_10 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_11 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_12 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_13 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_14 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_15 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_16 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_17 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_18 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_19 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_2 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_20 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_21 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_22 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_23 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_24 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_25 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_26 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_27 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_28 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_29 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_3 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_30 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_31 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_32 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_33 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_34 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_35 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_36 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_37 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_38 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_39 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_4 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_40 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_41 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_42 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_43 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_44 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_45 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_46 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_47 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_5 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_6 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_7 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_8 ;
  wire \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_9 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_0 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_1 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_10 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_11 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_12 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_13 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_14 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_15 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_16 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_17 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_18 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_19 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_2 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_20 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_21 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_22 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_23 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_24 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_25 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_26 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_27 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_28 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_29 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_3 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_4 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_5 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_6 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_7 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_8 ;
  wire \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_9 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_0 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_1 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_10 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_11 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_12 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_13 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_14 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_15 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_16 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_17 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_18 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_19 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_2 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_20 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_21 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_22 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_23 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_24 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_25 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_26 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_27 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_28 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_29 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_3 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_30 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_31 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_32 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_33 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_34 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_35 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_36 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_37 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_38 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_39 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_4 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_40 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_41 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_42 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_43 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_44 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_45 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_46 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_47 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_5 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_6 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_7 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_8 ;
  wire \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_9 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_0 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_1 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_10 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_11 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_12 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_13 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_14 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_15 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_16 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_17 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_18 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_19 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_2 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_20 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_21 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_22 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_23 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_24 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_25 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_26 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_27 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_28 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_29 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_3 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_30 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_31 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_32 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_33 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_34 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_35 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_36 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_37 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_38 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_39 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_4 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_40 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_41 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_42 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_43 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_44 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_45 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_46 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_47 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_5 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_6 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_7 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_8 ;
  wire \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_9 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_0 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_1 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_10 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_11 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_12 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_13 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_14 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_15 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_16 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_17 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_18 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_19 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_2 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_20 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_21 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_22 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_23 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_24 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_25 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_26 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_27 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_28 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_29 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_3 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_4 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_5 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_6 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_7 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_8 ;
  wire \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_9 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_0 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_1 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_10 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_11 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_12 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_13 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_14 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_15 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_16 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_17 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_18 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_19 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_2 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_20 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_21 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_22 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_23 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_24 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_25 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_26 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_27 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_28 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_29 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_3 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_30 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_31 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_32 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_33 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_34 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_35 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_36 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_37 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_38 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_39 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_4 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_40 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_41 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_42 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_43 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_44 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_45 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_46 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_47 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_5 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_6 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_7 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_8 ;
  wire \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_9 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_0 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_1 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_10 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_11 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_12 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_13 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_14 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_15 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_16 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_17 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_18 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_19 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_2 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_20 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_21 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_22 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_23 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_24 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_25 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_26 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_27 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_28 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_29 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_3 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_4 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_5 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_6 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_7 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_8 ;
  wire \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_9 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_0 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_1 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_10 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_11 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_12 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_13 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_14 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_15 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_16 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_17 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_18 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_19 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_2 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_20 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_21 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_22 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_23 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_24 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_25 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_26 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_27 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_28 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_29 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_3 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_30 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_31 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_32 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_33 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_34 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_35 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_36 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_37 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_38 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_39 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_4 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_40 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_41 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_42 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_43 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_44 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_45 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_46 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_47 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_5 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_6 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_7 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_8 ;
  wire \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_9 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_0 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_1 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_10 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_11 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_12 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_13 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_14 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_15 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_16 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_17 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_18 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_19 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_2 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_20 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_21 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_22 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_23 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_24 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_25 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_26 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_27 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_28 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_29 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_3 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_30 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_31 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_32 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_33 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_34 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_35 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_36 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_37 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_38 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_39 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_4 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_40 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_41 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_42 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_43 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_44 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_45 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_46 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_47 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_5 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_6 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_7 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_8 ;
  wire \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_9 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_0 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_1 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_10 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_11 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_12 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_13 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_14 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_15 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_16 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_17 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_18 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_19 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_2 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_20 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_21 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_22 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_23 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_24 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_25 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_26 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_27 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_28 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_29 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_3 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_4 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_5 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_6 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_7 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_8 ;
  wire \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_9 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_0 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_1 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_10 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_11 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_12 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_13 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_14 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_15 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_16 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_17 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_18 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_19 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_2 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_20 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_21 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_22 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_23 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_24 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_25 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_26 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_27 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_28 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_29 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_3 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_30 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_31 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_32 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_33 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_34 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_35 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_36 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_37 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_38 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_39 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_4 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_40 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_41 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_42 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_43 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_44 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_45 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_46 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_47 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_5 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_6 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_7 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_8 ;
  wire \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_9 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_0 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_1 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_10 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_11 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_12 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_13 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_14 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_15 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_16 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_17 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_18 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_19 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_2 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_20 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_21 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_22 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_23 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_24 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_25 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_26 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_27 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_28 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_29 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_3 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_4 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_5 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_6 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_7 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_8 ;
  wire \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_9 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_0 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_1 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_10 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_11 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_12 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_13 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_14 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_15 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_16 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_17 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_18 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_19 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_2 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_20 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_21 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_22 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_23 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_24 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_25 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_26 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_27 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_28 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_29 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_3 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_30 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_31 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_32 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_33 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_34 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_35 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_36 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_37 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_38 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_39 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_4 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_40 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_41 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_42 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_43 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_44 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_45 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_46 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_47 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_5 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_6 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_7 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_8 ;
  wire \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_9 ;
  wire \fixed_mul_stage4/r_cmp_gt0000 ;
  wire \fixed_mul_stage4/r_cmp_lt0000 ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[10] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[11] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[12] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[13] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[14] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[15] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[16] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[17] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[18] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[19] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[1] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[20] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[21] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[22] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[23] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[24] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[25] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[26] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[27] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[28] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[29] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[2] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000<30>1 ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[31] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[3] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[4] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[5] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[6] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[7] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[8] ;
  wire \fixed_sub_stage3/Madd_sign_inv_not0000[9] ;
  wire \isqrt_ready_pipe/Mshreg_out_0_1020 ;
  wire new_data_IBUF_1047;
  wire r_0;
  wire r_0_BRB0_1082;
  wire r_0_BRB1_1083;
  wire r_0_BRB2_1084;
  wire r_0_BRB3_1085;
  wire r_1;
  wire r_10;
  wire r_10_BRB0_1088;
  wire r_10_BRB3_1089;
  wire r_11;
  wire r_11_BRB0_1091;
  wire r_11_BRB3_1092;
  wire r_12;
  wire r_12_BRB0_1094;
  wire r_12_BRB3_1095;
  wire r_13;
  wire r_13_BRB0_1097;
  wire r_13_BRB3_1098;
  wire r_14;
  wire r_14_BRB0_1100;
  wire r_14_BRB3_1101;
  wire r_15;
  wire r_15_BRB0_1103;
  wire r_15_BRB3_1104;
  wire r_16;
  wire r_16_BRB0_1106;
  wire r_16_BRB3_1107;
  wire r_17;
  wire r_17_BRB0_1109;
  wire r_17_BRB3_1110;
  wire r_18;
  wire r_18_BRB0_1112;
  wire r_18_BRB3_1113;
  wire r_19;
  wire r_19_BRB0_1115;
  wire r_19_BRB3_1116;
  wire r_1_BRB0_1117;
  wire r_1_BRB3_1118;
  wire r_2;
  wire r_20;
  wire r_20_BRB0_1121;
  wire r_20_BRB3_1122;
  wire r_21;
  wire r_21_BRB0_1124;
  wire r_21_BRB3_1125;
  wire r_22;
  wire r_22_BRB0_1127;
  wire r_22_BRB3_1128;
  wire r_23;
  wire r_23_BRB0_1130;
  wire r_23_BRB3_1131;
  wire r_24;
  wire r_24_BRB0_1133;
  wire r_24_BRB3_1134;
  wire r_25;
  wire r_25_BRB0_1136;
  wire r_25_BRB3_1137;
  wire r_26;
  wire r_26_BRB0_1139;
  wire r_26_BRB3_1140;
  wire r_27;
  wire r_27_BRB0_1142;
  wire r_27_BRB3_1143;
  wire r_28;
  wire r_28_BRB0_1145;
  wire r_28_BRB3_1146;
  wire r_29;
  wire r_29_BRB0_1148;
  wire r_29_BRB3_1149;
  wire r_2_BRB0_1150;
  wire r_2_BRB3_1151;
  wire r_3;
  wire r_30;
  wire r_30_BRB0_1154;
  wire r_30_BRB3_1155;
  wire r_31_1156;
  wire r_3_BRB0_1157;
  wire r_3_BRB3_1158;
  wire r_4;
  wire r_4_BRB0_1160;
  wire r_4_BRB3_1161;
  wire r_5;
  wire r_5_BRB0_1163;
  wire r_5_BRB3_1164;
  wire r_6;
  wire r_6_BRB0_1166;
  wire r_6_BRB3_1167;
  wire r_7;
  wire r_7_BRB0_1169;
  wire r_7_BRB3_1170;
  wire r_8;
  wire r_8_BRB0_1172;
  wire r_8_BRB3_1173;
  wire r_9;
  wire r_9_BRB0_1175;
  wire r_9_BRB3_1176;
  wire rom_addr_0_OBUF_1189;
  wire rom_addr_10_OBUF_1190;
  wire rom_addr_11_OBUF_1191;
  wire rom_addr_1_OBUF_1192;
  wire rom_addr_2_OBUF_1193;
  wire rom_addr_3_OBUF_1194;
  wire rom_addr_4_OBUF_1195;
  wire rom_addr_5_OBUF_1196;
  wire rom_addr_6_OBUF_1197;
  wire rom_addr_7_OBUF_1198;
  wire rom_addr_8_OBUF_1199;
  wire rom_addr_9_OBUF_1200;
  wire \rom_addr_mux0000<10>11_1215 ;
  wire rom_dout_0_IBUF_1257;
  wire rom_dout_10_IBUF_1258;
  wire rom_dout_11_IBUF_1259;
  wire rom_dout_12_IBUF_1260;
  wire rom_dout_13_IBUF_1261;
  wire rom_dout_14_IBUF_1262;
  wire rom_dout_15_IBUF_1263;
  wire rom_dout_16_IBUF_1264;
  wire rom_dout_17_IBUF_1265;
  wire rom_dout_18_IBUF_1266;
  wire rom_dout_19_IBUF_1267;
  wire rom_dout_1_IBUF_1268;
  wire rom_dout_20_IBUF_1269;
  wire rom_dout_21_IBUF_1270;
  wire rom_dout_22_IBUF_1271;
  wire rom_dout_23_IBUF_1272;
  wire rom_dout_24_IBUF_1273;
  wire rom_dout_25_IBUF_1274;
  wire rom_dout_26_IBUF_1275;
  wire rom_dout_27_IBUF_1276;
  wire rom_dout_28_IBUF_1277;
  wire rom_dout_29_IBUF_1278;
  wire rom_dout_2_IBUF_1279;
  wire rom_dout_30_IBUF_1280;
  wire rom_dout_31_IBUF_1281;
  wire rom_dout_3_IBUF_1282;
  wire rom_dout_4_IBUF_1283;
  wire rom_dout_5_IBUF_1284;
  wire rom_dout_6_IBUF_1285;
  wire rom_dout_7_IBUF_1286;
  wire rom_dout_8_IBUF_1287;
  wire rom_dout_9_IBUF_1288;
  wire stage1_out_a_div_2_cmp_eq0000_inv1;
  wire stage1_out_a_div_2_cmp_lt0001;
  wire \stage2_r[0] ;
  wire \stage2_r[31] ;
  wire stage4_in_lookup_exact_1358;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_P[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_OVERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_UNDERFLOW_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[47]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[46]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[45]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[44]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[43]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[42]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[41]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[40]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[39]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[38]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[37]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[36]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[35]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[34]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[33]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[32]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[31]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_P[30]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[29]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[28]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[27]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[26]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[25]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[24]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[23]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[22]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[21]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[20]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[19]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[18]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[17]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[16]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[15]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[14]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[13]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[12]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[11]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[10]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[9]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[8]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[7]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[6]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[5]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[4]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[0]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[3]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[2]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[1]_UNCONNECTED ;
  wire \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[0]_UNCONNECTED ;
  wire \NLW_isqrt_ready_pipe/Mshreg_out_0_Q15_UNCONNECTED ;
  wire NLW_Mshreg_stage4_in_y_31_Q15_UNCONNECTED;
  wire NLW_Mshreg_stage4_in_lookup_exact_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_0_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_1_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_2_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_3_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_4_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_5_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_6_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_7_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_8_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_9_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_10_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_11_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_12_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_13_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_16_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_14_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_15_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_17_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_18_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_19_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_20_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_21_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_22_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_23_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_24_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_25_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_26_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_27_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_28_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_29_BRB3_Q15_UNCONNECTED;
  wire NLW_Mshreg_r_30_BRB3_Q15_UNCONNECTED;
  wire [1 : 1] Madd_z_pos_not0000;
  wire [10 : 0] Maddsub_rom_addr_addsub0000_cy;
  wire [3 : 0] Mcompar_stage1_out_a_div_2_cmp_lt0000_lut;
  wire [4 : 3] Msub_msb_sel_0_sub0000_Madd_lut;
  wire [1 : 1] Msub_msb_sel_2_sub0000_Madd_lut;
  wire [2 : 2] Msub_msb_sel_4_sub0000_Madd_lut;
  wire [3 : 3] \clz32_instance/clz16_high/Madd_z_addsub0000_cy ;
  wire [3 : 0] \clz32_instance/clz16_high/zh ;
  wire [3 : 3] \clz32_instance/clz16_low/Madd_z_addsub0000_cy ;
  wire [3 : 0] \clz32_instance/clz16_low/zh ;
  wire [4 : 0] \clz32_instance/zh ;
  wire [63 : 55] \fixed_mul_stage2/tmp ;
  wire [63 : 55] \fixed_mul_stage3/tmp ;
  wire [63 : 24] \fixed_mul_stage4/tmp ;
  wire [30 : 0] \fixed_sub_stage3/Madd_sign_inv_cy ;
  wire [28 : 28] \fixed_sub_stage3/adder/Madd__old_tmp_8_cy ;
  wire [31 : 0] \fixed_sub_stage3/sign_inv ;
  wire [0 : 0] \isqrt_ready_pipe/out ;
  wire [6 : 0] msb_sel;
  wire [4 : 2] msb_sel_0_sub0000;
  wire [4 : 3] msb_sel_1_sub0000;
  wire [4 : 2] msb_sel_2_sub0000;
  wire [4 : 2] msb_sel_4_sub0000;
  wire [4 : 2] msb_sel_5_sub0000;
  wire [4 : 2] msb_sel_6_sub0000;
  wire [11 : 0] rom_addr_addsub0000;
  wire [10 : 0] rom_addr_mux0000;
  wire [31 : 0] stage1_in_a;
  wire [31 : 0] stage3_out_acc;
  wire [0 : 0] stage3_r;
  wire [31 : 31] stage4_in_y;
  wire [31 : 31] stage4_out_y;
  wire [0 : 0] z;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_0 (
    .CLK(clk_BUFGP),
    .I(a_0_IBUF_189),
    .O(stage1_in_a[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_1 (
    .CLK(clk_BUFGP),
    .I(a_1_IBUF_200),
    .O(stage1_in_a[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_2 (
    .CLK(clk_BUFGP),
    .I(a_2_IBUF_211),
    .O(stage1_in_a[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_3 (
    .CLK(clk_BUFGP),
    .I(a_3_IBUF_214),
    .O(stage1_in_a[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_4 (
    .CLK(clk_BUFGP),
    .I(a_4_IBUF_215),
    .O(stage1_in_a[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_5 (
    .CLK(clk_BUFGP),
    .I(a_5_IBUF_216),
    .O(stage1_in_a[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_6 (
    .CLK(clk_BUFGP),
    .I(a_6_IBUF_217),
    .O(stage1_in_a[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_7 (
    .CLK(clk_BUFGP),
    .I(a_7_IBUF_218),
    .O(stage1_in_a[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_8 (
    .CLK(clk_BUFGP),
    .I(a_8_IBUF_219),
    .O(stage1_in_a[8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_9 (
    .CLK(clk_BUFGP),
    .I(a_9_IBUF_220),
    .O(stage1_in_a[9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_10 (
    .CLK(clk_BUFGP),
    .I(a_10_IBUF_190),
    .O(stage1_in_a[10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_11 (
    .CLK(clk_BUFGP),
    .I(a_11_IBUF_191),
    .O(stage1_in_a[11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_12 (
    .CLK(clk_BUFGP),
    .I(a_12_IBUF_192),
    .O(stage1_in_a[12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_13 (
    .CLK(clk_BUFGP),
    .I(a_13_IBUF_193),
    .O(stage1_in_a[13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_14 (
    .CLK(clk_BUFGP),
    .I(a_14_IBUF_194),
    .O(stage1_in_a[14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_15 (
    .CLK(clk_BUFGP),
    .I(a_15_IBUF_195),
    .O(stage1_in_a[15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_16 (
    .CLK(clk_BUFGP),
    .I(a_16_IBUF_196),
    .O(stage1_in_a[16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_17 (
    .CLK(clk_BUFGP),
    .I(a_17_IBUF_197),
    .O(stage1_in_a[17]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_18 (
    .CLK(clk_BUFGP),
    .I(a_18_IBUF_198),
    .O(stage1_in_a[18]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_19 (
    .CLK(clk_BUFGP),
    .I(a_19_IBUF_199),
    .O(stage1_in_a[19]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_20 (
    .CLK(clk_BUFGP),
    .I(a_20_IBUF_201),
    .O(stage1_in_a[20]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_21 (
    .CLK(clk_BUFGP),
    .I(a_21_IBUF_202),
    .O(stage1_in_a[21]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_22 (
    .CLK(clk_BUFGP),
    .I(a_22_IBUF_203),
    .O(stage1_in_a[22]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_23 (
    .CLK(clk_BUFGP),
    .I(a_23_IBUF_204),
    .O(stage1_in_a[23]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_24 (
    .CLK(clk_BUFGP),
    .I(a_24_IBUF_205),
    .O(stage1_in_a[24]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_25 (
    .CLK(clk_BUFGP),
    .I(a_25_IBUF_206),
    .O(stage1_in_a[25]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_26 (
    .CLK(clk_BUFGP),
    .I(a_26_IBUF_207),
    .O(stage1_in_a[26]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_27 (
    .CLK(clk_BUFGP),
    .I(a_27_IBUF_208),
    .O(stage1_in_a[27]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_28 (
    .CLK(clk_BUFGP),
    .I(a_28_IBUF_209),
    .O(stage1_in_a[28]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_29 (
    .CLK(clk_BUFGP),
    .I(a_29_IBUF_210),
    .O(stage1_in_a[29]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_30 (
    .CLK(clk_BUFGP),
    .I(a_30_IBUF_212),
    .O(stage1_in_a[30]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage1_in_a_31 (
    .CLK(clk_BUFGP),
    .I(a_31_IBUF_213),
    .O(stage1_in_a[31]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_31 (
    .CLK(clk_BUFGP),
    .I(stage4_out_y[31]),
    .O(r_31_1156),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_DSP48E #(
    .AREG ( 1 ),
    .ACASCREG ( 1 ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage3/Mmult_tmp  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N1),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage3/Mmult_tmp_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage3/Mmult_tmp_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage3/Mmult_tmp_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage3/Mmult_tmp_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage3/Mmult_tmp_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage3/Mmult_tmp_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, N0, N0, N0, N0, N0, N0, N0, N0, rom_dout_16_IBUF_1264, rom_dout_15_IBUF_1263, rom_dout_14_IBUF_1262, 
rom_dout_13_IBUF_1261, rom_dout_12_IBUF_1260, rom_dout_11_IBUF_1259, rom_dout_10_IBUF_1258, rom_dout_9_IBUF_1288, rom_dout_8_IBUF_1287, 
rom_dout_7_IBUF_1286, rom_dout_6_IBUF_1285, rom_dout_5_IBUF_1284, rom_dout_4_IBUF_1283, rom_dout_3_IBUF_1282, rom_dout_2_IBUF_1279, 
rom_dout_1_IBUF_1268, rom_dout_0_IBUF_1257}),
    .PCIN({\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[47]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[46]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[45]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[44]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[43]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[42]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[41]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[40]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[39]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[38]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[37]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[36]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[35]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[34]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[33]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[32]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[31]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[30]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_PCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_PCIN[0]_UNCONNECTED }),
    .B({N0, \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , 
\stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] }),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N0, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_47 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_46 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_45 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_44 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_43 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_42 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_41 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_40 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_39 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_38 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_37 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_36 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_35 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_34 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_33 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_32 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_31 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_30 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_29 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_28 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_27 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_26 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_25 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_24 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_23 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_22 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_21 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_20 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_19 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_18 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_17 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_16 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_15 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_14 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_13 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_12 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_11 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_10 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_9 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_8 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_7 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_6 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_5 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_4 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_3 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_2 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_1 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_0 }),
    .P({\NLW_fixed_mul_stage3/Mmult_tmp_P[47]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[45]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[43]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[41]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[39]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[37]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[35]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[33]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[31]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_P[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_ACIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_ACIN[0]_UNCONNECTED }),
    .ACOUT({\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_29 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_28 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_27 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_26 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_25 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_24 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_23 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_22 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_21 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_20 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_19 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_18 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_17 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_16 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_15 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_14 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_13 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_12 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_11 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_10 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_9 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_8 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_7 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_6 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_5 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_4 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_3 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_2 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_1 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_0 }),
    .CARRYOUT({\NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage3/Mmult_tmp1  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage3/Mmult_tmp1_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage3/Mmult_tmp1_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp1_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp1_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage3/Mmult_tmp1_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage3/Mmult_tmp1_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage3/Mmult_tmp1_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage3/Mmult_tmp1_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_47 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_46 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_45 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_44 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_43 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_42 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_41 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_40 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_39 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_38 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_37 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_36 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_35 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_34 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_33 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_32 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_31 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_30 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_29 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_28 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_27 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_26 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_25 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_24 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_23 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_22 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_21 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_20 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_19 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_18 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_17 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_16 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_15 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_14 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_13 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_12 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_11 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_10 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_9 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_8 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_7 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_6 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_5 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_4 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_3 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_2 , \fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_1 , 
\fixed_mul_stage3/Mmult_tmp_PCOUT_to_fixed_mul_stage3/Mmult_tmp1_PCIN_0 }),
    .B({\stage2_r[31] , \stage2_r[31] , \stage2_r[31] , \stage2_r[31] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , 
\stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] }),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_47 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_46 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_45 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_44 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_43 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_42 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_41 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_40 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_39 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_38 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_37 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_36 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_35 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_34 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_33 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_32 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_31 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_30 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_29 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_28 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_27 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_26 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_25 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_24 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_23 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_22 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_21 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_20 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_19 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_18 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_17 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_16 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_15 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_14 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_13 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_12 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_11 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_10 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_9 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_8 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_7 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_6 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_5 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_4 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_3 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_2 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_1 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_0 }),
    .P({\NLW_fixed_mul_stage3/Mmult_tmp1_P[47]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[45]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[43]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[41]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[39]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[37]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[35]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[33]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[31]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_P[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_BCOUT[0]_UNCONNECTED }),
    .ACIN({\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_29 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_28 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_27 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_26 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_25 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_24 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_23 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_22 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_21 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_20 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_19 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_18 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_17 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_16 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_15 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_14 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_13 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_12 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_11 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_10 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_9 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_8 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_7 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_6 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_5 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_4 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_3 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_2 , \fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_1 , 
\fixed_mul_stage3/Mmult_tmp_ACOUT_to_fixed_mul_stage3/Mmult_tmp1_ACIN_0 }),
    .ACOUT({\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp1_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .AREG ( 1 ),
    .ACASCREG ( 1 ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage3/Mmult_tmp2  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N1),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage3/Mmult_tmp2_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage3/Mmult_tmp2_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp2_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp2_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage3/Mmult_tmp2_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage3/Mmult_tmp2_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage3/Mmult_tmp2_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage3/Mmult_tmp2_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, 
rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, 
rom_dout_30_IBUF_1280, rom_dout_29_IBUF_1278, rom_dout_28_IBUF_1277, rom_dout_27_IBUF_1276, rom_dout_26_IBUF_1275, rom_dout_25_IBUF_1274, 
rom_dout_24_IBUF_1273, rom_dout_23_IBUF_1272, rom_dout_22_IBUF_1271, rom_dout_21_IBUF_1270, rom_dout_20_IBUF_1269, rom_dout_19_IBUF_1267, 
rom_dout_18_IBUF_1266, rom_dout_17_IBUF_1265}),
    .PCIN({\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_47 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_46 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_45 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_44 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_43 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_42 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_41 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_40 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_39 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_38 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_37 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_36 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_35 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_34 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_33 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_32 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_31 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_30 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_29 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_28 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_27 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_26 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_25 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_24 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_23 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_22 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_21 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_20 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_19 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_18 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_17 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_16 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_15 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_14 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_13 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_12 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_11 , 
\fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_10 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_9 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_8 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_7 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_6 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_5 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_4 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_3 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_2 , \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_1 
, \fixed_mul_stage3/Mmult_tmp1_PCOUT_to_fixed_mul_stage3/Mmult_tmp2_PCIN_0 }),
    .B({N0, \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , 
\stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] }),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_47 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_46 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_45 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_44 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_43 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_42 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_41 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_40 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_39 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_38 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_37 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_36 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_35 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_34 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_33 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_32 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_31 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_30 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_29 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_28 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_27 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_26 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_25 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_24 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_23 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_22 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_21 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_20 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_19 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_18 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_17 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_16 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_15 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_14 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_13 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_12 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_11 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_10 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_9 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_8 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_7 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_6 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_5 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_4 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_3 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_2 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_1 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_0 }),
    .P({\NLW_fixed_mul_stage3/Mmult_tmp2_P[47]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[45]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[43]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[41]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[39]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[37]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[35]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[33]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[31]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_P[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_ACIN[0]_UNCONNECTED }),
    .ACOUT({\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_29 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_28 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_27 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_26 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_25 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_24 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_23 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_22 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_21 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_20 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_19 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_18 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_17 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_16 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_15 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_14 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_13 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_12 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_11 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_10 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_9 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_8 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_7 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_6 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_5 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_4 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_3 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_2 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_1 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_0 }),
    .CARRYOUT({\NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp2_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage3/Mmult_tmp3  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage3/Mmult_tmp3_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage3/Mmult_tmp3_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp3_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage3/Mmult_tmp3_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage3/Mmult_tmp3_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage3/Mmult_tmp3_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage3/Mmult_tmp3_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage3/Mmult_tmp3_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_47 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_46 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_45 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_44 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_43 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_42 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_41 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_40 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_39 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_38 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_37 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_36 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_35 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_34 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_33 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_32 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_31 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_30 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_29 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_28 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_27 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_26 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_25 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_24 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_23 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_22 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_21 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_20 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_19 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_18 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_17 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_16 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_15 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_14 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_13 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_12 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_11 , 
\fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_10 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_9 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_8 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_7 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_6 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_5 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_4 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_3 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_2 , \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_1 
, \fixed_mul_stage3/Mmult_tmp2_PCOUT_to_fixed_mul_stage3/Mmult_tmp3_PCIN_0 }),
    .B({\stage2_r[31] , \stage2_r[31] , \stage2_r[31] , \stage2_r[31] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , 
\stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] , \stage2_r[0] }),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[47]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[46]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[45]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[44]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[43]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[42]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[41]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[40]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[39]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[38]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[37]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[36]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[35]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[34]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[33]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[32]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[31]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[30]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_PCOUT[0]_UNCONNECTED }),
    .P({\NLW_fixed_mul_stage3/Mmult_tmp3_P[47]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[45]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[43]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[41]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[39]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[37]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[35]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[33]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[31]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[30]_UNCONNECTED , \fixed_mul_stage3/tmp [63], 
\fixed_mul_stage3/tmp [62], \fixed_mul_stage3/tmp [61], \fixed_mul_stage3/tmp [60], \fixed_mul_stage3/tmp [59], \fixed_mul_stage3/tmp [58], 
\fixed_mul_stage3/tmp [57], \fixed_mul_stage3/tmp [56], \fixed_mul_stage3/tmp [55], \NLW_fixed_mul_stage3/Mmult_tmp3_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_P[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_BCOUT[0]_UNCONNECTED }),
    .ACIN({\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_29 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_28 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_27 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_26 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_25 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_24 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_23 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_22 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_21 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_20 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_19 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_18 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_17 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_16 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_15 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_14 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_13 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_12 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_11 , 
\fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_10 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_9 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_8 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_7 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_6 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_5 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_4 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_3 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_2 , \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_1 
, \fixed_mul_stage3/Mmult_tmp2_ACOUT_to_fixed_mul_stage3/Mmult_tmp3_ACIN_0 }),
    .ACOUT({\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage3/Mmult_tmp3_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage2/Mmult_tmp  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(stage1_out_a_div_2_cmp_eq0000_inv1),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage2/Mmult_tmp_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage2/Mmult_tmp_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage2/Mmult_tmp_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage2/Mmult_tmp_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage2/Mmult_tmp_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage2/Mmult_tmp_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, N0, N0, N0, N0, N0, N0, N0, N0, rom_dout_16_IBUF_1264, rom_dout_15_IBUF_1263, rom_dout_14_IBUF_1262, 
rom_dout_13_IBUF_1261, rom_dout_12_IBUF_1260, rom_dout_11_IBUF_1259, rom_dout_10_IBUF_1258, rom_dout_9_IBUF_1288, rom_dout_8_IBUF_1287, 
rom_dout_7_IBUF_1286, rom_dout_6_IBUF_1285, rom_dout_5_IBUF_1284, rom_dout_4_IBUF_1283, rom_dout_3_IBUF_1282, rom_dout_2_IBUF_1279, 
rom_dout_1_IBUF_1268, rom_dout_0_IBUF_1257}),
    .PCIN({\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[47]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[46]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[45]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[44]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[43]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[42]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[41]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[40]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[39]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[38]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[37]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[36]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[35]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[34]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[33]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[32]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[31]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[30]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_PCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_PCIN[0]_UNCONNECTED }),
    .B({N0, stage1_in_a[17], stage1_in_a[16], stage1_in_a[15], stage1_in_a[14], stage1_in_a[13], stage1_in_a[12], stage1_in_a[11], stage1_in_a[10], 
stage1_in_a[9], stage1_in_a[8], stage1_in_a[7], stage1_in_a[6], stage1_in_a[5], stage1_in_a[4], stage1_in_a[3], stage1_in_a[2], stage1_in_a[1]}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N0, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_47 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_46 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_45 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_44 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_43 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_42 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_41 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_40 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_39 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_38 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_37 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_36 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_35 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_34 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_33 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_32 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_31 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_30 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_29 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_28 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_27 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_26 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_25 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_24 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_23 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_22 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_21 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_20 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_19 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_18 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_17 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_16 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_15 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_14 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_13 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_12 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_11 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_10 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_9 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_8 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_7 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_6 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_5 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_4 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_3 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_2 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_1 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_0 }),
    .P({\NLW_fixed_mul_stage2/Mmult_tmp_P[47]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[45]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[43]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[41]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[39]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[37]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[35]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[33]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[31]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_P[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_ACIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_ACIN[0]_UNCONNECTED }),
    .ACOUT({\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_29 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_28 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_27 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_26 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_25 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_24 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_23 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_22 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_21 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_20 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_19 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_18 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_17 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_16 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_15 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_14 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_13 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_12 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_11 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_10 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_9 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_8 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_7 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_6 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_5 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_4 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_3 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_2 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_1 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_0 }),
    .CARRYOUT({\NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage2/Mmult_tmp1  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(stage1_out_a_div_2_cmp_eq0000_inv1),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage2/Mmult_tmp1_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage2/Mmult_tmp1_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp1_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp1_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage2/Mmult_tmp1_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage2/Mmult_tmp1_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage2/Mmult_tmp1_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage2/Mmult_tmp1_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_47 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_46 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_45 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_44 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_43 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_42 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_41 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_40 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_39 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_38 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_37 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_36 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_35 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_34 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_33 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_32 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_31 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_30 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_29 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_28 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_27 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_26 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_25 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_24 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_23 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_22 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_21 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_20 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_19 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_18 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_17 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_16 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_15 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_14 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_13 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_12 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_11 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_10 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_9 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_8 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_7 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_6 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_5 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_4 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_3 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_2 , \fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_1 , 
\fixed_mul_stage2/Mmult_tmp_PCOUT_to_fixed_mul_stage2/Mmult_tmp1_PCIN_0 }),
    .B({N0, N0, N0, N0, stage1_in_a[31], stage1_in_a[30], stage1_in_a[29], stage1_in_a[28], stage1_in_a[27], stage1_in_a[26], stage1_in_a[25], 
stage1_in_a[24], stage1_in_a[23], stage1_in_a[22], stage1_in_a[21], stage1_in_a[20], stage1_in_a[19], stage1_in_a[18]}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_47 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_46 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_45 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_44 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_43 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_42 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_41 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_40 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_39 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_38 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_37 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_36 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_35 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_34 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_33 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_32 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_31 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_30 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_29 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_28 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_27 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_26 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_25 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_24 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_23 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_22 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_21 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_20 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_19 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_18 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_17 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_16 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_15 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_14 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_13 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_12 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_11 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_10 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_9 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_8 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_7 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_6 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_5 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_4 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_3 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_2 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_1 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_0 }),
    .P({\NLW_fixed_mul_stage2/Mmult_tmp1_P[47]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[45]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[43]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[41]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[39]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[37]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[35]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[33]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[31]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_P[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_BCOUT[0]_UNCONNECTED }),
    .ACIN({\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_29 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_28 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_27 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_26 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_25 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_24 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_23 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_22 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_21 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_20 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_19 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_18 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_17 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_16 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_15 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_14 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_13 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_12 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_11 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_10 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_9 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_8 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_7 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_6 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_5 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_4 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_3 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_2 , \fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_1 , 
\fixed_mul_stage2/Mmult_tmp_ACOUT_to_fixed_mul_stage2/Mmult_tmp1_ACIN_0 }),
    .ACOUT({\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp1_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage2/Mmult_tmp2  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(stage1_out_a_div_2_cmp_eq0000_inv1),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage2/Mmult_tmp2_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage2/Mmult_tmp2_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp2_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp2_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage2/Mmult_tmp2_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage2/Mmult_tmp2_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage2/Mmult_tmp2_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage2/Mmult_tmp2_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, 
rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, 
rom_dout_30_IBUF_1280, rom_dout_29_IBUF_1278, rom_dout_28_IBUF_1277, rom_dout_27_IBUF_1276, rom_dout_26_IBUF_1275, rom_dout_25_IBUF_1274, 
rom_dout_24_IBUF_1273, rom_dout_23_IBUF_1272, rom_dout_22_IBUF_1271, rom_dout_21_IBUF_1270, rom_dout_20_IBUF_1269, rom_dout_19_IBUF_1267, 
rom_dout_18_IBUF_1266, rom_dout_17_IBUF_1265}),
    .PCIN({\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_47 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_46 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_45 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_44 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_43 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_42 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_41 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_40 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_39 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_38 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_37 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_36 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_35 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_34 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_33 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_32 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_31 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_30 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_29 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_28 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_27 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_26 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_25 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_24 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_23 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_22 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_21 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_20 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_19 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_18 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_17 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_16 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_15 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_14 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_13 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_12 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_11 , 
\fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_10 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_9 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_8 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_7 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_6 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_5 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_4 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_3 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_2 , \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_1 
, \fixed_mul_stage2/Mmult_tmp1_PCOUT_to_fixed_mul_stage2/Mmult_tmp2_PCIN_0 }),
    .B({N0, stage1_in_a[17], stage1_in_a[16], stage1_in_a[15], stage1_in_a[14], stage1_in_a[13], stage1_in_a[12], stage1_in_a[11], stage1_in_a[10], 
stage1_in_a[9], stage1_in_a[8], stage1_in_a[7], stage1_in_a[6], stage1_in_a[5], stage1_in_a[4], stage1_in_a[3], stage1_in_a[2], stage1_in_a[1]}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_47 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_46 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_45 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_44 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_43 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_42 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_41 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_40 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_39 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_38 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_37 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_36 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_35 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_34 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_33 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_32 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_31 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_30 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_29 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_28 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_27 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_26 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_25 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_24 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_23 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_22 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_21 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_20 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_19 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_18 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_17 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_16 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_15 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_14 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_13 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_12 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_11 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_10 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_9 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_8 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_7 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_6 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_5 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_4 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_3 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_2 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_1 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_0 }),
    .P({\NLW_fixed_mul_stage2/Mmult_tmp2_P[47]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[45]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[43]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[41]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[39]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[37]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[35]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[33]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[31]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_P[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_ACIN[0]_UNCONNECTED }),
    .ACOUT({\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_29 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_28 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_27 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_26 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_25 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_24 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_23 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_22 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_21 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_20 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_19 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_18 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_17 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_16 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_15 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_14 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_13 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_12 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_11 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_10 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_9 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_8 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_7 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_6 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_5 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_4 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_3 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_2 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_1 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_0 }),
    .CARRYOUT({\NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp2_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 1 ),
    .BCASCREG ( 1 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage2/Mmult_tmp3  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N0),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(stage1_out_a_div_2_cmp_eq0000_inv1),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage2/Mmult_tmp3_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage2/Mmult_tmp3_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp3_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage2/Mmult_tmp3_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage2/Mmult_tmp3_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage2/Mmult_tmp3_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage2/Mmult_tmp3_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage2/Mmult_tmp3_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_47 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_46 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_45 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_44 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_43 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_42 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_41 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_40 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_39 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_38 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_37 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_36 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_35 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_34 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_33 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_32 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_31 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_30 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_29 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_28 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_27 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_26 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_25 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_24 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_23 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_22 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_21 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_20 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_19 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_18 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_17 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_16 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_15 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_14 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_13 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_12 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_11 , 
\fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_10 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_9 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_8 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_7 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_6 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_5 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_4 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_3 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_2 , \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_1 
, \fixed_mul_stage2/Mmult_tmp2_PCOUT_to_fixed_mul_stage2/Mmult_tmp3_PCIN_0 }),
    .B({N0, N0, N0, N0, stage1_in_a[31], stage1_in_a[30], stage1_in_a[29], stage1_in_a[28], stage1_in_a[27], stage1_in_a[26], stage1_in_a[25], 
stage1_in_a[24], stage1_in_a[23], stage1_in_a[22], stage1_in_a[21], stage1_in_a[20], stage1_in_a[19], stage1_in_a[18]}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[47]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[46]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[45]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[44]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[43]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[42]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[41]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[40]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[39]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[38]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[37]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[36]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[35]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[34]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[33]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[32]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[31]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[30]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_PCOUT[0]_UNCONNECTED }),
    .P({\NLW_fixed_mul_stage2/Mmult_tmp3_P[47]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[45]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[43]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[41]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[39]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[37]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[35]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[33]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[31]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[30]_UNCONNECTED , \fixed_mul_stage2/tmp [63], 
\fixed_mul_stage2/tmp [62], \fixed_mul_stage2/tmp [61], \fixed_mul_stage2/tmp [60], \fixed_mul_stage2/tmp [59], \fixed_mul_stage2/tmp [58], 
\fixed_mul_stage2/tmp [57], \fixed_mul_stage2/tmp [56], \fixed_mul_stage2/tmp [55], \NLW_fixed_mul_stage2/Mmult_tmp3_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_P[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_BCOUT[0]_UNCONNECTED }),
    .ACIN({\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_29 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_28 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_27 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_26 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_25 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_24 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_23 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_22 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_21 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_20 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_19 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_18 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_17 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_16 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_15 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_14 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_13 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_12 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_11 , 
\fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_10 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_9 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_8 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_7 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_6 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_5 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_4 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_3 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_2 , \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_1 
, \fixed_mul_stage2/Mmult_tmp2_ACOUT_to_fixed_mul_stage2/Mmult_tmp3_ACIN_0 }),
    .ACOUT({\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage2/Mmult_tmp3_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .AREG ( 1 ),
    .ACASCREG ( 1 ),
    .BREG ( 2 ),
    .BCASCREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage4/Mmult_tmp  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N1),
    .CEB1(N1),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage4/Mmult_tmp_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage4/Mmult_tmp_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage4/Mmult_tmp_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage4/Mmult_tmp_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage4/Mmult_tmp_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage4/Mmult_tmp_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, N0, N0, N0, N0, N0, N0, N0, N0, stage3_out_acc[16], stage3_out_acc[15], stage3_out_acc[14], stage3_out_acc[13], 
stage3_out_acc[12], stage3_out_acc[11], stage3_out_acc[10], stage3_out_acc[9], stage3_out_acc[8], stage3_out_acc[7], stage3_out_acc[6], 
stage3_out_acc[5], stage3_out_acc[4], stage3_out_acc[3], stage3_out_acc[2], stage3_out_acc[1], stage3_out_acc[0]}),
    .PCIN({\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[47]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[46]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[45]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[44]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[43]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[42]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[41]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[40]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[39]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[38]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[37]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[36]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[35]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[34]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[33]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[32]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[31]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[30]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_PCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_PCIN[0]_UNCONNECTED }),
    .B({N0, rom_dout_16_IBUF_1264, rom_dout_15_IBUF_1263, rom_dout_14_IBUF_1262, rom_dout_13_IBUF_1261, rom_dout_12_IBUF_1260, rom_dout_11_IBUF_1259, 
rom_dout_10_IBUF_1258, rom_dout_9_IBUF_1288, rom_dout_8_IBUF_1287, rom_dout_7_IBUF_1286, rom_dout_6_IBUF_1285, rom_dout_5_IBUF_1284, 
rom_dout_4_IBUF_1283, rom_dout_3_IBUF_1282, rom_dout_2_IBUF_1279, rom_dout_1_IBUF_1268, rom_dout_0_IBUF_1257}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N0, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_47 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_46 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_45 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_44 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_43 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_42 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_41 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_40 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_39 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_38 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_37 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_36 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_35 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_34 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_33 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_32 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_31 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_30 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_29 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_28 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_27 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_26 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_25 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_24 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_23 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_22 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_21 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_20 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_19 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_18 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_17 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_16 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_15 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_14 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_13 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_12 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_11 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_10 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_9 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_8 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_7 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_6 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_5 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_4 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_3 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_2 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_1 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_0 }),
    .P({\NLW_fixed_mul_stage4/Mmult_tmp_P[47]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[45]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[43]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[41]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[39]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[37]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[35]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[33]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[31]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_P[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_ACIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_ACIN[0]_UNCONNECTED }),
    .ACOUT({\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_29 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_28 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_27 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_26 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_25 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_24 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_23 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_22 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_21 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_20 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_19 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_18 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_17 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_16 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_15 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_14 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_13 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_12 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_11 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_10 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_9 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_8 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_7 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_6 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_5 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_4 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_3 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_2 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_1 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_0 }),
    .CARRYOUT({\NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 2 ),
    .BCASCREG ( 2 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage4/Mmult_tmp1  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N1),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage4/Mmult_tmp1_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage4/Mmult_tmp1_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp1_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp1_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage4/Mmult_tmp1_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage4/Mmult_tmp1_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage4/Mmult_tmp1_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage4/Mmult_tmp1_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_47 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_46 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_45 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_44 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_43 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_42 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_41 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_40 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_39 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_38 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_37 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_36 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_35 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_34 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_33 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_32 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_31 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_30 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_29 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_28 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_27 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_26 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_25 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_24 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_23 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_22 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_21 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_20 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_19 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_18 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_17 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_16 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_15 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_14 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_13 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_12 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_11 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_10 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_9 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_8 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_7 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_6 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_5 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_4 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_3 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_2 , \fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_1 , 
\fixed_mul_stage4/Mmult_tmp_PCOUT_to_fixed_mul_stage4/Mmult_tmp1_PCIN_0 }),
    .B({rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_30_IBUF_1280, rom_dout_29_IBUF_1278, 
rom_dout_28_IBUF_1277, rom_dout_27_IBUF_1276, rom_dout_26_IBUF_1275, rom_dout_25_IBUF_1274, rom_dout_24_IBUF_1273, rom_dout_23_IBUF_1272, 
rom_dout_22_IBUF_1271, rom_dout_21_IBUF_1270, rom_dout_20_IBUF_1269, rom_dout_19_IBUF_1267, rom_dout_18_IBUF_1266, rom_dout_17_IBUF_1265}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_47 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_46 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_45 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_44 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_43 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_42 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_41 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_40 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_39 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_38 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_37 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_36 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_35 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_34 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_33 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_32 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_31 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_30 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_29 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_28 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_27 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_26 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_25 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_24 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_23 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_22 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_21 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_20 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_19 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_18 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_17 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_16 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_15 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_14 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_13 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_12 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_11 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_10 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_9 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_8 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_7 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_6 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_5 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_4 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_3 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_2 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_1 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_0 }),
    .P({\NLW_fixed_mul_stage4/Mmult_tmp1_P[47]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[45]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[43]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[41]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[39]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[37]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[35]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[33]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[31]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_P[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_BCOUT[0]_UNCONNECTED }),
    .ACIN({\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_29 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_28 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_27 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_26 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_25 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_24 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_23 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_22 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_21 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_20 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_19 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_18 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_17 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_16 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_15 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_14 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_13 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_12 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_11 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_10 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_9 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_8 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_7 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_6 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_5 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_4 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_3 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_2 , \fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_1 , 
\fixed_mul_stage4/Mmult_tmp_ACOUT_to_fixed_mul_stage4/Mmult_tmp1_ACIN_0 }),
    .ACOUT({\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp1_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .AREG ( 1 ),
    .ACASCREG ( 1 ),
    .BREG ( 2 ),
    .BCASCREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage4/Mmult_tmp2  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N1),
    .CEB1(N1),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage4/Mmult_tmp2_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage4/Mmult_tmp2_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp2_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp2_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage4/Mmult_tmp2_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage4/Mmult_tmp2_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage4/Mmult_tmp2_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage4/Mmult_tmp2_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], 
stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[31], stage3_out_acc[30], 
stage3_out_acc[29], stage3_out_acc[28], stage3_out_acc[27], stage3_out_acc[26], stage3_out_acc[25], stage3_out_acc[24], stage3_out_acc[23], 
stage3_out_acc[22], stage3_out_acc[21], stage3_out_acc[20], stage3_out_acc[19], stage3_out_acc[18], stage3_out_acc[17]}),
    .PCIN({\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_47 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_46 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_45 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_44 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_43 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_42 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_41 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_40 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_39 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_38 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_37 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_36 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_35 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_34 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_33 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_32 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_31 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_30 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_29 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_28 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_27 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_26 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_25 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_24 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_23 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_22 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_21 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_20 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_19 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_18 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_17 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_16 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_15 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_14 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_13 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_12 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_11 , 
\fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_10 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_9 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_8 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_7 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_6 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_5 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_4 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_3 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_2 , \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_1 
, \fixed_mul_stage4/Mmult_tmp1_PCOUT_to_fixed_mul_stage4/Mmult_tmp2_PCIN_0 }),
    .B({N0, rom_dout_16_IBUF_1264, rom_dout_15_IBUF_1263, rom_dout_14_IBUF_1262, rom_dout_13_IBUF_1261, rom_dout_12_IBUF_1260, rom_dout_11_IBUF_1259, 
rom_dout_10_IBUF_1258, rom_dout_9_IBUF_1288, rom_dout_8_IBUF_1287, rom_dout_7_IBUF_1286, rom_dout_6_IBUF_1285, rom_dout_5_IBUF_1284, 
rom_dout_4_IBUF_1283, rom_dout_3_IBUF_1282, rom_dout_2_IBUF_1279, rom_dout_1_IBUF_1268, rom_dout_0_IBUF_1257}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N0, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_47 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_46 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_45 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_44 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_43 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_42 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_41 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_40 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_39 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_38 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_37 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_36 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_35 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_34 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_33 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_32 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_31 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_30 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_29 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_28 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_27 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_26 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_25 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_24 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_23 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_22 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_21 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_20 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_19 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_18 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_17 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_16 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_15 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_14 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_13 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_12 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_11 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_10 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_9 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_8 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_7 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_6 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_5 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_4 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_3 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_2 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_1 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_0 }),
    .P({\NLW_fixed_mul_stage4/Mmult_tmp2_P[47]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[45]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[43]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[41]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[39]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[37]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[35]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[33]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[31]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[30]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[17]_UNCONNECTED , \fixed_mul_stage4/tmp [33], \fixed_mul_stage4/tmp [32], \fixed_mul_stage4/tmp [31], 
\fixed_mul_stage4/tmp [30], \fixed_mul_stage4/tmp [29], \fixed_mul_stage4/tmp [28], \fixed_mul_stage4/tmp [27], \fixed_mul_stage4/tmp [26], 
\fixed_mul_stage4/tmp [25], \fixed_mul_stage4/tmp [24], \NLW_fixed_mul_stage4/Mmult_tmp2_P[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_P[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_P[0]_UNCONNECTED }),
    .BCOUT({\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_BCOUT[0]_UNCONNECTED }),
    .ACIN({\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_ACIN[0]_UNCONNECTED }),
    .ACOUT({\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_29 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_28 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_27 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_26 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_25 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_24 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_23 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_22 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_21 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_20 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_19 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_18 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_17 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_16 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_15 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_14 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_13 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_12 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_11 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_10 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_9 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_8 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_7 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_6 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_5 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_4 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_3 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_2 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_1 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_0 }),
    .CARRYOUT({\NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp2_CARRYOUT[0]_UNCONNECTED })
  );
  X_DSP48E #(
    .B_INPUT ( "DIRECT" ),
    .MASK ( 48'h3FFFFFFFFFFF ),
    .BREG ( 2 ),
    .BCASCREG ( 2 ),
    .AREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .USE_MULT ( "MULT" ),
    .A_INPUT ( "CASCADE" ),
    .ACASCREG ( 0 ),
    .CREG ( 0 ),
    .USE_SIMD ( "ONE48" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_MASK ( "MASK" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ))
  \fixed_mul_stage4/Mmult_tmp3  (
    .CARRYIN(N0),
    .CEA1(N0),
    .CEA2(N0),
    .CEB1(N1),
    .CEB2(N1),
    .CEC(N0),
    .CECTRL(N0),
    .CEP(N0),
    .CEM(N0),
    .CECARRYIN(N0),
    .CEMULTCARRYIN(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTC(N0),
    .RSTCTRL(N0),
    .RSTP(N0),
    .RSTM(N0),
    .RSTALLCARRYIN(N0),
    .CEALUMODE(N0),
    .RSTALUMODE(N0),
    .PATTERNBDETECT(\NLW_fixed_mul_stage4/Mmult_tmp3_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_fixed_mul_stage4/Mmult_tmp3_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp3_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_fixed_mul_stage4/Mmult_tmp3_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\NLW_fixed_mul_stage4/Mmult_tmp3_CARRYCASCIN_UNCONNECTED ),
    .CARRYCASCOUT(\NLW_fixed_mul_stage4/Mmult_tmp3_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\NLW_fixed_mul_stage4/Mmult_tmp3_MULTSIGNIN_UNCONNECTED ),
    .MULTSIGNOUT(\NLW_fixed_mul_stage4/Mmult_tmp3_MULTSIGNOUT_UNCONNECTED ),
    .A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND}),
    .PCIN({\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_47 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_46 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_45 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_44 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_43 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_42 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_41 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_40 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_39 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_38 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_37 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_36 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_35 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_34 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_33 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_32 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_31 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_30 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_29 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_28 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_27 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_26 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_25 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_24 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_23 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_22 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_21 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_20 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_19 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_18 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_17 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_16 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_15 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_14 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_13 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_12 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_11 , 
\fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_10 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_9 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_8 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_7 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_6 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_5 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_4 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_3 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_2 , \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_1 
, \fixed_mul_stage4/Mmult_tmp2_PCOUT_to_fixed_mul_stage4/Mmult_tmp3_PCIN_0 }),
    .B({rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_31_IBUF_1281, rom_dout_30_IBUF_1280, rom_dout_29_IBUF_1278, 
rom_dout_28_IBUF_1277, rom_dout_27_IBUF_1276, rom_dout_26_IBUF_1275, rom_dout_25_IBUF_1274, rom_dout_24_IBUF_1273, rom_dout_23_IBUF_1272, 
rom_dout_22_IBUF_1271, rom_dout_21_IBUF_1270, rom_dout_20_IBUF_1269, rom_dout_19_IBUF_1267, rom_dout_18_IBUF_1266, rom_dout_17_IBUF_1265}),
    .C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
    .CARRYINSEL({N0, N0, N0}),
    .OPMODE({N1, N0, N1, N0, N1, N0, N1}),
    .BCIN({\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCIN[0]_UNCONNECTED }),
    .ALUMODE({N0, N0, N0, N0}),
    .PCOUT({\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[47]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[46]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[45]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[44]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[43]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[42]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[41]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[40]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[39]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[38]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[37]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[36]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[35]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[34]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[33]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[32]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[31]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[30]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_PCOUT[0]_UNCONNECTED }),
    .P({\NLW_fixed_mul_stage4/Mmult_tmp3_P[47]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[46]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[45]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[44]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[43]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[42]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[41]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[40]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[39]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[38]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[37]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[36]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[35]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[34]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[33]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[32]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_P[31]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_P[30]_UNCONNECTED , \fixed_mul_stage4/tmp [63], 
\fixed_mul_stage4/tmp [62], \fixed_mul_stage4/tmp [61], \fixed_mul_stage4/tmp [60], \fixed_mul_stage4/tmp [59], \fixed_mul_stage4/tmp [58], 
\fixed_mul_stage4/tmp [57], \fixed_mul_stage4/tmp [56], \fixed_mul_stage4/tmp [55], \fixed_mul_stage4/tmp [54], \fixed_mul_stage4/tmp [53], 
\fixed_mul_stage4/tmp [52], \fixed_mul_stage4/tmp [51], \fixed_mul_stage4/tmp [50], \fixed_mul_stage4/tmp [49], \fixed_mul_stage4/tmp [48], 
\fixed_mul_stage4/tmp [47], \fixed_mul_stage4/tmp [46], \fixed_mul_stage4/tmp [45], \fixed_mul_stage4/tmp [44], \fixed_mul_stage4/tmp [43], 
\fixed_mul_stage4/tmp [42], \fixed_mul_stage4/tmp [41], \fixed_mul_stage4/tmp [40], \fixed_mul_stage4/tmp [39], \fixed_mul_stage4/tmp [38], 
\fixed_mul_stage4/tmp [37], \fixed_mul_stage4/tmp [36], \fixed_mul_stage4/tmp [35], \fixed_mul_stage4/tmp [34]}),
    .BCOUT({\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_BCOUT[0]_UNCONNECTED }),
    .ACIN({\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_29 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_28 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_27 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_26 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_25 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_24 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_23 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_22 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_21 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_20 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_19 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_18 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_17 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_16 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_15 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_14 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_13 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_12 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_11 , 
\fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_10 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_9 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_8 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_7 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_6 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_5 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_4 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_3 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_2 , \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_1 
, \fixed_mul_stage4/Mmult_tmp2_ACOUT_to_fixed_mul_stage4/Mmult_tmp3_ACIN_0 }),
    .ACOUT({\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[29]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[28]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[27]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[26]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[25]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[24]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[23]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[22]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[21]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[20]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[19]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[18]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[17]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[16]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[15]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[14]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[13]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[12]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[11]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[10]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[9]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[8]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[7]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[6]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[5]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[4]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_ACOUT[0]_UNCONNECTED }),
    .CARRYOUT({\NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[3]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[2]_UNCONNECTED , 
\NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[1]_UNCONNECTED , \NLW_fixed_mul_stage4/Mmult_tmp3_CARRYOUT[0]_UNCONNECTED })
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi (
    .ADR0(stage1_in_a[14]),
    .ADR1(stage1_in_a[13]),
    .ADR2(stage1_in_a[12]),
    .ADR3(stage1_in_a[11]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi_45)
  );
  X_LUT5 #(
    .INIT ( 32'h00000002 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<0>  (
    .ADR0(stage1_in_a[10]),
    .ADR1(stage1_in_a[11]),
    .ADR2(stage1_in_a[12]),
    .ADR3(stage1_in_a[13]),
    .ADR4(stage1_in_a[14]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[0])
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<0>  (
    .IB(N1),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi_45),
    .SEL(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[0]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[0] )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi1 (
    .ADR0(stage1_in_a[19]),
    .ADR1(stage1_in_a[18]),
    .ADR2(stage1_in_a[17]),
    .ADR3(stage1_in_a[16]),
    .ADR4(stage1_in_a[15]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi1_46)
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<1>  (
    .ADR0(stage1_in_a[15]),
    .ADR1(stage1_in_a[16]),
    .ADR2(stage1_in_a[17]),
    .ADR3(stage1_in_a[18]),
    .ADR4(stage1_in_a[19]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[1])
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<1>  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[0] ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi1_46),
    .SEL(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[1]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[1] )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi2 (
    .ADR0(stage1_in_a[24]),
    .ADR1(stage1_in_a[23]),
    .ADR2(stage1_in_a[22]),
    .ADR3(stage1_in_a[21]),
    .ADR4(stage1_in_a[20]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi2_47)
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<2>  (
    .ADR0(stage1_in_a[20]),
    .ADR1(stage1_in_a[21]),
    .ADR2(stage1_in_a[22]),
    .ADR3(stage1_in_a[23]),
    .ADR4(stage1_in_a[24]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[2])
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<2>  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[1] ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi2_47),
    .SEL(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[2]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[2] )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi3 (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[28]),
    .ADR2(stage1_in_a[27]),
    .ADR3(stage1_in_a[26]),
    .ADR4(stage1_in_a[25]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi3_48)
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<3>  (
    .ADR0(stage1_in_a[25]),
    .ADR1(stage1_in_a[26]),
    .ADR2(stage1_in_a[27]),
    .ADR3(stage1_in_a[28]),
    .ADR4(stage1_in_a[29]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[3])
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<3>  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[2] ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi3_48),
    .SEL(Mcompar_stage1_out_a_div_2_cmp_lt0000_lut[3]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi5 (
    .ADR0(stage1_in_a[8]),
    .ADR1(stage1_in_a[7]),
    .ADR2(stage1_in_a[6]),
    .ADR3(stage1_in_a[5]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi5_49)
  );
  X_LUT5 #(
    .INIT ( 32'h00000002 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<0>1  (
    .ADR0(stage1_in_a[4]),
    .ADR1(stage1_in_a[5]),
    .ADR2(stage1_in_a[6]),
    .ADR3(stage1_in_a[7]),
    .ADR4(stage1_in_a[8]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<0>1_37 )
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<0>_0  (
    .IB(N1),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi5_49),
    .SEL(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<0>1_37 ),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<0>1 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFEEE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi6 (
    .ADR0(stage1_in_a[11]),
    .ADR1(stage1_in_a[13]),
    .ADR2(stage1_in_a[10]),
    .ADR3(stage1_in_a[9]),
    .ADR4(stage1_in_a[12]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi6_50)
  );
  X_LUT5 #(
    .INIT ( 32'h00000002 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<1>1  (
    .ADR0(stage1_in_a[10]),
    .ADR1(stage1_in_a[9]),
    .ADR2(stage1_in_a[11]),
    .ADR3(stage1_in_a[12]),
    .ADR4(stage1_in_a[13]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<1>1_39 )
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<1>_0  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<0>1 ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi6_50),
    .SEL(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<1>1_39 ),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<1>1 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi7 (
    .ADR0(stage1_in_a[18]),
    .ADR1(stage1_in_a[17]),
    .ADR2(stage1_in_a[16]),
    .ADR3(stage1_in_a[15]),
    .ADR4(stage1_in_a[14]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi7_51)
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<2>1  (
    .ADR0(stage1_in_a[14]),
    .ADR1(stage1_in_a[15]),
    .ADR2(stage1_in_a[16]),
    .ADR3(stage1_in_a[17]),
    .ADR4(stage1_in_a[18]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<2>1_41 )
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<2>_0  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<1>1 ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi7_51),
    .SEL(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<2>1_41 ),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<2>1 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi8 (
    .ADR0(stage1_in_a[23]),
    .ADR1(stage1_in_a[22]),
    .ADR2(stage1_in_a[21]),
    .ADR3(stage1_in_a[20]),
    .ADR4(stage1_in_a[19]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi8_52)
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<3>1  (
    .ADR0(stage1_in_a[19]),
    .ADR1(stage1_in_a[20]),
    .ADR2(stage1_in_a[21]),
    .ADR3(stage1_in_a[22]),
    .ADR4(stage1_in_a[23]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<3>1_43 )
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<3>_0  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<2>1 ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi8_52),
    .SEL(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<3>1_43 ),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<3>1 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi9 (
    .ADR0(stage1_in_a[28]),
    .ADR1(stage1_in_a[27]),
    .ADR2(stage1_in_a[26]),
    .ADR3(stage1_in_a[25]),
    .ADR4(stage1_in_a[24]),
    .O(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi9_53)
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<4>1  (
    .ADR0(stage1_in_a[24]),
    .ADR1(stage1_in_a[25]),
    .ADR2(stage1_in_a[26]),
    .ADR3(stage1_in_a[27]),
    .ADR4(stage1_in_a[28]),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<4>1_44 )
  );
  X_MUX2   \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>_0  (
    .IB(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<3>1 ),
    .IA(Mcompar_stage1_out_a_div_2_cmp_lt0000_lutdi9_53),
    .SEL(\Mcompar_stage1_out_a_div_2_cmp_lt0000_lut<4>1_44 ),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 )
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<0>  (
    .IB(stage1_out_a_div_2_cmp_lt0001),
    .IA(rom_addr_mux0000[0]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[0] ),
    .O(Maddsub_rom_addr_addsub0000_cy[0])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<0>  (
    .I0(stage1_out_a_div_2_cmp_lt0001),
    .I1(\Maddsub_rom_addr_addsub0000_lut[0] ),
    .O(rom_addr_addsub0000[0])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<1>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[0]),
    .IA(rom_addr_mux0000[1]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[1] ),
    .O(Maddsub_rom_addr_addsub0000_cy[1])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<1>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[0]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[1] ),
    .O(rom_addr_addsub0000[1])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<2>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[1]),
    .IA(rom_addr_mux0000[2]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[2] ),
    .O(Maddsub_rom_addr_addsub0000_cy[2])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<2>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[1]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[2] ),
    .O(rom_addr_addsub0000[2])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<3>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[2]),
    .IA(rom_addr_mux0000[3]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[3] ),
    .O(Maddsub_rom_addr_addsub0000_cy[3])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<3>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[2]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[3] ),
    .O(rom_addr_addsub0000[3])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<4>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[3]),
    .IA(rom_addr_mux0000[4]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[4] ),
    .O(Maddsub_rom_addr_addsub0000_cy[4])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<4>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[3]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[4] ),
    .O(rom_addr_addsub0000[4])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<5>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[4]),
    .IA(rom_addr_mux0000[5]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[5] ),
    .O(Maddsub_rom_addr_addsub0000_cy[5])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<5>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[4]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[5] ),
    .O(rom_addr_addsub0000[5])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<6>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[5]),
    .IA(rom_addr_mux0000[6]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[6] ),
    .O(Maddsub_rom_addr_addsub0000_cy[6])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<6>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[5]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[6] ),
    .O(rom_addr_addsub0000[6])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<7>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[6]),
    .IA(rom_addr_mux0000[7]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[7] ),
    .O(Maddsub_rom_addr_addsub0000_cy[7])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<7>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[6]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[7] ),
    .O(rom_addr_addsub0000[7])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<8>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[7]),
    .IA(rom_addr_mux0000[8]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[8] ),
    .O(Maddsub_rom_addr_addsub0000_cy[8])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<8>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[7]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[8] ),
    .O(rom_addr_addsub0000[8])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<9>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[8]),
    .IA(rom_addr_mux0000[9]),
    .SEL(\Maddsub_rom_addr_addsub0000_lut[9] ),
    .O(Maddsub_rom_addr_addsub0000_cy[9])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<9>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[8]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[9] ),
    .O(rom_addr_addsub0000[9])
  );
  X_MUX2   \Maddsub_rom_addr_addsub0000_cy<10>  (
    .IB(Maddsub_rom_addr_addsub0000_cy[9]),
    .IA(rom_addr_mux0000[10]),
    .SEL(\rom_addr_mux0000<10>11_1215 ),
    .O(Maddsub_rom_addr_addsub0000_cy[10])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<10>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[9]),
    .I1(\rom_addr_mux0000<10>11_1215 ),
    .O(rom_addr_addsub0000[10])
  );
  X_XOR2   \Maddsub_rom_addr_addsub0000_xor<11>  (
    .I0(Maddsub_rom_addr_addsub0000_cy[10]),
    .I1(\Maddsub_rom_addr_addsub0000_lut[11] ),
    .O(rom_addr_addsub0000[11])
  );
  X_MUX2   \Mmux_msb_sel<4>_2_f7  (
    .IA(\Mmux_msb_sel<4>_4_93 ),
    .IB(\Mmux_msb_sel<4>_3_92 ),
    .SEL(msb_sel_4_sub0000[4]),
    .O(msb_sel[4])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_4  (
    .ADR0(msb_sel_4_sub0000[2]),
    .ADR1(\Mmux_msb_sel<0>_92 ),
    .ADR2(msb_sel_4_sub0000[3]),
    .ADR3(\Mmux_msb_sel<0>_91 ),
    .ADR4(\Mmux_msb_sel<0>_82 ),
    .ADR5(\Mmux_msb_sel<0>_10 ),
    .O(\Mmux_msb_sel<4>_4_93 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_3  (
    .ADR0(msb_sel_4_sub0000[2]),
    .ADR1(\Mmux_msb_sel<0>_81 ),
    .ADR2(msb_sel_4_sub0000[3]),
    .ADR3(\Mmux_msb_sel<0>_8 ),
    .ADR4(\Mmux_msb_sel<0>_7 ),
    .ADR5(\Mmux_msb_sel<0>_9 ),
    .O(\Mmux_msb_sel<4>_3_92 )
  );
  X_MUX2   \Mmux_msb_sel<6>_2_f7  (
    .IA(\Mmux_msb_sel<6>_4_97 ),
    .IB(\Mmux_msb_sel<6>_3_96 ),
    .SEL(msb_sel_6_sub0000[4]),
    .O(msb_sel[6])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_4  (
    .ADR0(msb_sel_6_sub0000[2]),
    .ADR1(\Mmux_msb_sel<2>_92 ),
    .ADR2(msb_sel_6_sub0000[3]),
    .ADR3(\Mmux_msb_sel<2>_91 ),
    .ADR4(\Mmux_msb_sel<2>_82 ),
    .ADR5(\Mmux_msb_sel<2>_10 ),
    .O(\Mmux_msb_sel<6>_4_97 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_3  (
    .ADR0(msb_sel_6_sub0000[2]),
    .ADR1(\Mmux_msb_sel<2>_81 ),
    .ADR2(msb_sel_6_sub0000[3]),
    .ADR3(\Mmux_msb_sel<2>_8 ),
    .ADR4(\Mmux_msb_sel<2>_7 ),
    .ADR5(\Mmux_msb_sel<2>_9 ),
    .O(\Mmux_msb_sel<6>_3_96 )
  );
  X_MUX2   \Mmux_msb_sel<5>_2_f7  (
    .IA(\Mmux_msb_sel<5>_4_95 ),
    .IB(\Mmux_msb_sel<5>_3_94 ),
    .SEL(msb_sel_5_sub0000[4]),
    .O(msb_sel[5])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_4  (
    .ADR0(msb_sel_5_sub0000[2]),
    .ADR1(\Mmux_msb_sel<1>_92 ),
    .ADR2(msb_sel_5_sub0000[3]),
    .ADR3(\Mmux_msb_sel<1>_91 ),
    .ADR4(\Mmux_msb_sel<1>_82 ),
    .ADR5(\Mmux_msb_sel<1>_10 ),
    .O(\Mmux_msb_sel<5>_4_95 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_3  (
    .ADR0(msb_sel_5_sub0000[2]),
    .ADR1(\Mmux_msb_sel<1>_81 ),
    .ADR2(msb_sel_5_sub0000[3]),
    .ADR3(\Mmux_msb_sel<1>_8 ),
    .ADR4(\Mmux_msb_sel<1>_7 ),
    .ADR5(\Mmux_msb_sel<1>_9 ),
    .O(\Mmux_msb_sel<5>_3_94 )
  );
  X_MUX2   \Mmux_msb_sel<2>_2_f7  (
    .IA(\Mmux_msb_sel<2>_4_76 ),
    .IB(\Mmux_msb_sel<2>_3_75 ),
    .SEL(msb_sel_2_sub0000[4]),
    .O(msb_sel[2])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<2>_4  (
    .ADR0(msb_sel_2_sub0000[2]),
    .ADR1(\Mmux_msb_sel<2>_92 ),
    .ADR2(msb_sel_2_sub0000[3]),
    .ADR3(\Mmux_msb_sel<2>_91 ),
    .ADR4(\Mmux_msb_sel<2>_82 ),
    .ADR5(\Mmux_msb_sel<2>_10 ),
    .O(\Mmux_msb_sel<2>_4_76 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<2>_3  (
    .ADR0(msb_sel_2_sub0000[2]),
    .ADR1(\Mmux_msb_sel<2>_81 ),
    .ADR2(msb_sel_2_sub0000[3]),
    .ADR3(\Mmux_msb_sel<2>_8 ),
    .ADR4(\Mmux_msb_sel<2>_7 ),
    .ADR5(\Mmux_msb_sel<2>_9 ),
    .O(\Mmux_msb_sel<2>_3_75 )
  );
  X_MUX2   \Mmux_msb_sel<1>_2_f7  (
    .IA(\Mmux_msb_sel<1>_4_66 ),
    .IB(\Mmux_msb_sel<1>_3_65 ),
    .SEL(msb_sel_1_sub0000[4]),
    .O(msb_sel[1])
  );
  X_MUX2   \Mmux_msb_sel<0>_2_f7  (
    .IA(\Mmux_msb_sel<0>_4_56 ),
    .IB(\Mmux_msb_sel<0>_3_55 ),
    .SEL(msb_sel_0_sub0000[4]),
    .O(msb_sel[0])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<0>_4  (
    .ADR0(msb_sel_0_sub0000[2]),
    .ADR1(\Mmux_msb_sel<0>_92 ),
    .ADR2(msb_sel_0_sub0000[3]),
    .ADR3(\Mmux_msb_sel<0>_91 ),
    .ADR4(\Mmux_msb_sel<0>_82 ),
    .ADR5(\Mmux_msb_sel<0>_10 ),
    .O(\Mmux_msb_sel<0>_4_56 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<0>_3  (
    .ADR0(msb_sel_0_sub0000[2]),
    .ADR1(\Mmux_msb_sel<0>_81 ),
    .ADR2(msb_sel_0_sub0000[3]),
    .ADR3(\Mmux_msb_sel<0>_8 ),
    .ADR4(\Mmux_msb_sel<0>_7 ),
    .ADR5(\Mmux_msb_sel<0>_9 ),
    .O(\Mmux_msb_sel<0>_3_55 )
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<31>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [30]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[31] ),
    .O(\fixed_sub_stage3/sign_inv [31])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<30>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [29]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000<30>1 ),
    .O(\fixed_sub_stage3/sign_inv [30])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<30>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [29]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000<30>1 ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [30])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<29>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [28]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[29] ),
    .O(\fixed_sub_stage3/sign_inv [29])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<29>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [28]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[29] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [29])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<28>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [27]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[28] ),
    .O(\fixed_sub_stage3/sign_inv [28])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<28>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [27]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[28] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [28])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<27>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [26]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[27] ),
    .O(\fixed_sub_stage3/sign_inv [27])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<27>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [26]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[27] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [27])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<26>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [25]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[26] ),
    .O(\fixed_sub_stage3/sign_inv [26])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<26>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [25]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[26] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [26])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<25>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [24]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[25] ),
    .O(\fixed_sub_stage3/sign_inv [25])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<25>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [24]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[25] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [25])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<24>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [23]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[24] ),
    .O(\fixed_sub_stage3/sign_inv [24])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<24>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [23]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[24] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [24])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<23>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [22]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[23] ),
    .O(\fixed_sub_stage3/sign_inv [23])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<23>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [22]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[23] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [23])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<22>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [21]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[22] ),
    .O(\fixed_sub_stage3/sign_inv [22])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<22>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [21]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[22] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [22])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<21>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [20]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[21] ),
    .O(\fixed_sub_stage3/sign_inv [21])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<21>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [20]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[21] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [21])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<20>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [19]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[20] ),
    .O(\fixed_sub_stage3/sign_inv [20])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<20>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [19]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[20] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [20])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<19>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [18]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[19] ),
    .O(\fixed_sub_stage3/sign_inv [19])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<19>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [18]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[19] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [19])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<18>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [17]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[18] ),
    .O(\fixed_sub_stage3/sign_inv [18])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<18>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [17]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[18] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [18])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<17>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [16]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[17] ),
    .O(\fixed_sub_stage3/sign_inv [17])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<17>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [16]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[17] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [17])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<16>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [15]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[16] ),
    .O(\fixed_sub_stage3/sign_inv [16])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<16>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [15]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[16] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [16])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<15>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [14]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[15] ),
    .O(\fixed_sub_stage3/sign_inv [15])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<15>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [14]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[15] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [15])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<14>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [13]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[14] ),
    .O(\fixed_sub_stage3/sign_inv [14])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<14>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [13]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[14] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [14])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<13>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [12]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[13] ),
    .O(\fixed_sub_stage3/sign_inv [13])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<13>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [12]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[13] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [13])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<12>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [11]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[12] ),
    .O(\fixed_sub_stage3/sign_inv [12])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<12>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [11]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[12] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [12])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<11>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [10]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[11] ),
    .O(\fixed_sub_stage3/sign_inv [11])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<11>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [10]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[11] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [11])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<10>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [9]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[10] ),
    .O(\fixed_sub_stage3/sign_inv [10])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<10>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [9]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[10] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [10])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<9>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [8]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[9] ),
    .O(\fixed_sub_stage3/sign_inv [9])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<9>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [8]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[9] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [9])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<8>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [7]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[8] ),
    .O(\fixed_sub_stage3/sign_inv [8])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<8>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [7]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[8] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [8])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<7>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [6]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[7] ),
    .O(\fixed_sub_stage3/sign_inv [7])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<7>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [6]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[7] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [7])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<6>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [5]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[6] ),
    .O(\fixed_sub_stage3/sign_inv [6])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<6>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [5]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[6] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [6])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<5>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [4]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[5] ),
    .O(\fixed_sub_stage3/sign_inv [5])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<5>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [4]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[5] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [5])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<4>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [3]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[4] ),
    .O(\fixed_sub_stage3/sign_inv [4])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<4>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [3]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[4] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [4])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<3>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [2]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[3] ),
    .O(\fixed_sub_stage3/sign_inv [3])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<3>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [2]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[3] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [3])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<2>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [1]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[2] ),
    .O(\fixed_sub_stage3/sign_inv [2])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<2>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [1]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[2] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [2])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<1>  (
    .I0(\fixed_sub_stage3/Madd_sign_inv_cy [0]),
    .I1(\fixed_sub_stage3/Madd_sign_inv_not0000[1] ),
    .O(\fixed_sub_stage3/sign_inv [1])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<1>  (
    .IB(\fixed_sub_stage3/Madd_sign_inv_cy [0]),
    .IA(N0),
    .SEL(\fixed_sub_stage3/Madd_sign_inv_not0000[1] ),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [1])
  );
  X_XOR2   \fixed_sub_stage3/Madd_sign_inv_xor<0>  (
    .I0(N0),
    .I1(stage3_r[0]),
    .O(\fixed_sub_stage3/sign_inv [0])
  );
  X_MUX2   \fixed_sub_stage3/Madd_sign_inv_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(stage3_r[0]),
    .O(\fixed_sub_stage3/Madd_sign_inv_cy [0])
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \clz32_instance/clz16_low/clz8_low/z<3>11  (
    .ADR0(stage1_in_a[7]),
    .ADR1(stage1_in_a[6]),
    .ADR2(stage1_in_a[3]),
    .ADR3(stage1_in_a[2]),
    .ADR4(\clz32_instance/clz16_low/clz8_low/z<1>_bdd4 ),
    .O(\clz32_instance/clz16_low/Madd_z_addsub0000_cy [3])
  );
  X_LUT5 #(
    .INIT ( 32'h7DDD2888 ))
  \rom_addr_mux0000<10>11  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[5] ),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR4(a_10_IBUF_190),
    .O(rom_addr_mux0000[10])
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \clz32_instance/clz16_low/clz8_high/z<3>11  (
    .ADR0(stage1_in_a[15]),
    .ADR1(stage1_in_a[14]),
    .ADR2(stage1_in_a[11]),
    .ADR3(stage1_in_a[10]),
    .ADR4(\clz32_instance/clz16_low/clz8_high/z<1>_bdd4 ),
    .O(\clz32_instance/clz16_low/zh [3])
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \clz32_instance/clz16_high/clz8_low/z<3>11  (
    .ADR0(stage1_in_a[23]),
    .ADR1(stage1_in_a[22]),
    .ADR2(stage1_in_a[19]),
    .ADR3(stage1_in_a[18]),
    .ADR4(\clz32_instance/clz16_high/clz8_low/z<1>_bdd4 ),
    .O(\clz32_instance/clz16_high/Madd_z_addsub0000_cy [3])
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \clz32_instance/clz16_low/clz8_high/z<2>1_SW0  (
    .ADR0(stage1_in_a[13]),
    .ADR1(stage1_in_a[14]),
    .ADR2(stage1_in_a[15]),
    .O(N01)
  );
  X_LUT6 #(
    .INIT ( 64'h1111111111111110 ))
  \clz32_instance/clz16_low/clz8_high/z<2>1  (
    .ADR0(stage1_in_a[12]),
    .ADR1(N01),
    .ADR2(stage1_in_a[8]),
    .ADR3(stage1_in_a[9]),
    .ADR4(stage1_in_a[10]),
    .ADR5(stage1_in_a[11]),
    .O(\clz32_instance/clz16_low/zh [2])
  );
  X_LUT5 #(
    .INIT ( 32'h93333333 ))
  \Msub_msb_sel_6_sub0000_Madd_xor<4>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR4(z[0]),
    .O(msb_sel_6_sub0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'h9333 ))
  \Msub_msb_sel_5_sub0000_Madd_xor<4>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel_5_sub0000[4])
  );
  X_LUT5 #(
    .INIT ( 32'h93939333 ))
  \Msub_msb_sel_4_sub0000_Madd_xor<4>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR3(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR4(z[0]),
    .O(msb_sel_4_sub0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \clz32_instance/clz16_low/clz8_low/z<1>41  (
    .ADR0(stage1_in_a[5]),
    .ADR1(stage1_in_a[1]),
    .ADR2(stage1_in_a[4]),
    .ADR3(stage1_in_a[0]),
    .O(\clz32_instance/clz16_low/clz8_low/z<1>_bdd4 )
  );
  X_LUT5 #(
    .INIT ( 32'h99999333 ))
  \Msub_msb_sel_2_sub0000_Madd_xor<4>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(z[0]),
    .ADR3(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR4(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel_2_sub0000[4])
  );
  X_LUT4 #(
    .INIT ( 16'h9993 ))
  \Msub_msb_sel_1_sub0000_Madd_xor<4>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel_1_sub0000[4])
  );
  X_LUT5 #(
    .INIT ( 32'h99999993 ))
  \Msub_msb_sel_0_sub0000_Madd_xor<4>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR4(z[0]),
    .O(msb_sel_0_sub0000[4])
  );
  X_LUT5 #(
    .INIT ( 32'h7520FDA8 ))
  \clz32_instance/z<3>1  (
    .ADR0(\clz32_instance/z_cmp_eq0000 ),
    .ADR1(\clz32_instance/clz16_low/z_cmp_eq0000 ),
    .ADR2(\clz32_instance/clz16_low/zh [3]),
    .ADR3(\clz32_instance/zh [3]),
    .ADR4(\clz32_instance/clz16_low/Madd_z_addsub0000_cy [3]),
    .O(Msub_msb_sel_0_sub0000_Madd_lut[3])
  );
  X_LUT4 #(
    .INIT ( 16'h9333 ))
  \Msub_msb_sel_6_sub0000_Madd_xor<3>11  (
    .ADR0(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR2(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR3(z[0]),
    .O(msb_sel_6_sub0000[3])
  );
  X_LUT3 #(
    .INIT ( 8'h93 ))
  \msb_sel_5_sub0000<3>1  (
    .ADR0(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR2(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel_5_sub0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'h9993 ))
  \Msub_msb_sel_4_sub0000_Madd_xor<3>11  (
    .ADR0(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(z[0]),
    .O(msb_sel_4_sub0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \clz32_instance/clz16_low/z_cmp_eq00001  (
    .ADR0(\clz32_instance/clz16_low/zh [0]),
    .ADR1(\clz32_instance/clz16_low/zh [1]),
    .ADR2(\clz32_instance/clz16_low/zh [2]),
    .ADR3(\clz32_instance/clz16_low/zh [3]),
    .O(\clz32_instance/clz16_low/z_cmp_eq0000 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000001 ))
  \clz32_instance/clz16_high/clz8_high/z<3>11  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[30]),
    .ADR2(stage1_in_a[27]),
    .ADR3(stage1_in_a[26]),
    .ADR4(\clz32_instance/clz16_high/clz8_high/z<1>_bdd4 ),
    .O(\clz32_instance/clz16_high/zh [3])
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \clz32_instance/clz16_high/clz8_high/z<2>1_SW0  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(stage1_in_a[31]),
    .O(N8)
  );
  X_LUT6 #(
    .INIT ( 64'h1111111111111110 ))
  \clz32_instance/clz16_high/clz8_high/z<2>1  (
    .ADR0(stage1_in_a[28]),
    .ADR1(N8),
    .ADR2(stage1_in_a[24]),
    .ADR3(stage1_in_a[25]),
    .ADR4(stage1_in_a[26]),
    .ADR5(stage1_in_a[27]),
    .O(\clz32_instance/clz16_high/zh [2])
  );
  X_LUT4 #(
    .INIT ( 16'hA999 ))
  \Msub_msb_sel_2_sub0000_Madd_xor<3>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(z[0]),
    .O(msb_sel_2_sub0000[3])
  );
  X_LUT3 #(
    .INIT ( 8'hA9 ))
  \Msub_msb_sel_1_sub0000_Madd_xor<3>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR2(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel_1_sub0000[3])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA9 ))
  \Msub_msb_sel_0_sub0000_Madd_xor<3>11  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR2(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR3(z[0]),
    .O(msb_sel_0_sub0000[3])
  );
  X_LUT3 #(
    .INIT ( 8'h93 ))
  \Msub_msb_sel_6_sub0000_Madd_xor<2>11  (
    .ADR0(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR1(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR2(z[0]),
    .O(msb_sel_6_sub0000[2])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \clz32_instance/clz16_low/clz8_high/z<1>41  (
    .ADR0(stage1_in_a[13]),
    .ADR1(stage1_in_a[9]),
    .ADR2(stage1_in_a[12]),
    .ADR3(stage1_in_a[8]),
    .O(\clz32_instance/clz16_low/clz8_high/z<1>_bdd4 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \clz32_instance/clz16_high/clz8_low/z<1>41  (
    .ADR0(stage1_in_a[21]),
    .ADR1(stage1_in_a[17]),
    .ADR2(stage1_in_a[20]),
    .ADR3(stage1_in_a[16]),
    .O(\clz32_instance/clz16_high/clz8_low/z<1>_bdd4 )
  );
  X_LUT3 #(
    .INIT ( 8'hA9 ))
  \Msub_msb_sel_4_sub0000_Madd_xor<2>11  (
    .ADR0(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR1(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR2(z[0]),
    .O(msb_sel_4_sub0000[2])
  );
  X_LUT3 #(
    .INIT ( 8'h6C ))
  \Msub_msb_sel_2_sub0000_Madd_xor<2>11  (
    .ADR0(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR1(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR2(z[0]),
    .O(msb_sel_2_sub0000[2])
  );
  X_LUT3 #(
    .INIT ( 8'h36 ))
  \Msub_msb_sel_0_sub0000_Madd_xor<2>11  (
    .ADR0(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR1(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR2(z[0]),
    .O(msb_sel_0_sub0000[2])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \clz32_instance/clz16_high/z_cmp_eq00001  (
    .ADR0(\clz32_instance/clz16_high/zh [0]),
    .ADR1(\clz32_instance/clz16_high/zh [1]),
    .ADR2(\clz32_instance/clz16_high/zh [2]),
    .ADR3(\clz32_instance/clz16_high/zh [3]),
    .O(\clz32_instance/clz16_high/z_cmp_eq0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h51 ))
  \clz32_instance/clz16_high/clz8_high/z<0>1_SW0  (
    .ADR0(stage1_in_a[26]),
    .ADR1(stage1_in_a[24]),
    .ADR2(stage1_in_a[25]),
    .O(N12)
  );
  X_LUT6 #(
    .INIT ( 64'h4544454445444545 ))
  \clz32_instance/clz16_high/clz8_high/z<0>1  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[30]),
    .ADR2(stage1_in_a[29]),
    .ADR3(stage1_in_a[28]),
    .ADR4(stage1_in_a[27]),
    .ADR5(N12),
    .O(\clz32_instance/clz16_high/zh [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \clz32_instance/clz16_high/clz8_high/z<1>41  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[25]),
    .ADR2(stage1_in_a[28]),
    .ADR3(stage1_in_a[24]),
    .O(\clz32_instance/clz16_high/clz8_high/z<1>_bdd4 )
  );
  X_LUT5 #(
    .INIT ( 32'h00000002 ))
  \clz32_instance/z_cmp_eq00001  (
    .ADR0(\clz32_instance/zh [4]),
    .ADR1(\clz32_instance/zh [0]),
    .ADR2(\clz32_instance/zh [1]),
    .ADR3(\clz32_instance/zh [2]),
    .ADR4(\clz32_instance/zh [3]),
    .O(\clz32_instance/z_cmp_eq0000 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFF0001 ))
  \clz32_instance/clz16_high/z<2>_SW0  (
    .ADR0(stage1_in_a[16]),
    .ADR1(stage1_in_a[17]),
    .ADR2(stage1_in_a[18]),
    .ADR3(stage1_in_a[19]),
    .ADR4(stage1_in_a[23]),
    .O(N21)
  );
  X_LUT6 #(
    .INIT ( 64'h3333333700000004 ))
  \clz32_instance/clz16_high/z<2>  (
    .ADR0(stage1_in_a[20]),
    .ADR1(\clz32_instance/clz16_high/z_cmp_eq0000 ),
    .ADR2(stage1_in_a[21]),
    .ADR3(stage1_in_a[22]),
    .ADR4(N21),
    .ADR5(\clz32_instance/clz16_high/zh [2]),
    .O(\clz32_instance/zh [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \msb_sel_5_sub0000<2>1  (
    .ADR0(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR1(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel_5_sub0000[2])
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFF03030302 ))
  \clz32_instance/z<2>71  (
    .ADR0(stage1_in_a[0]),
    .ADR1(stage1_in_a[4]),
    .ADR2(stage1_in_a[5]),
    .ADR3(stage1_in_a[2]),
    .ADR4(stage1_in_a[1]),
    .ADR5(stage1_in_a[3]),
    .O(\clz32_instance/z<2>71_245 )
  );
  X_LUT5 #(
    .INIT ( 32'h01010103 ))
  \clz32_instance/z<2>96  (
    .ADR0(stage1_in_a[3]),
    .ADR1(stage1_in_a[6]),
    .ADR2(stage1_in_a[7]),
    .ADR3(stage1_in_a[4]),
    .ADR4(stage1_in_a[5]),
    .O(\clz32_instance/z<2>96_246 )
  );
  X_LUT6 #(
    .INIT ( 64'h0F0F0F0F04050404 ))
  \clz32_instance/z<0>77  (
    .ADR0(stage1_in_a[3]),
    .ADR1(stage1_in_a[2]),
    .ADR2(stage1_in_a[5]),
    .ADR3(stage1_in_a[1]),
    .ADR4(stage1_in_a[0]),
    .ADR5(stage1_in_a[4]),
    .O(\clz32_instance/z<0>77_242 )
  );
  X_LUT5 #(
    .INIT ( 32'h5F0A5D08 ))
  \clz32_instance/z<0>130  (
    .ADR0(\clz32_instance/clz16_low/z_cmp_eq0000 ),
    .ADR1(\clz32_instance/z<0>77_242 ),
    .ADR2(stage1_in_a[7]),
    .ADR3(\clz32_instance/clz16_low/zh [0]),
    .ADR4(stage1_in_a[6]),
    .O(\clz32_instance/z<0>130_241 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \fixed_mul_stage2/r<31>_SW0  (
    .ADR0(\fixed_mul_stage2/tmp [58]),
    .ADR1(\fixed_mul_stage2/tmp [57]),
    .ADR2(\fixed_mul_stage2/tmp [56]),
    .ADR3(\fixed_mul_stage2/tmp [55]),
    .O(N23)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFF00000001 ))
  \fixed_mul_stage2/r<31>  (
    .ADR0(\fixed_mul_stage2/tmp [62]),
    .ADR1(\fixed_mul_stage2/tmp [61]),
    .ADR2(\fixed_mul_stage2/tmp [60]),
    .ADR3(\fixed_mul_stage2/tmp [59]),
    .ADR4(N23),
    .ADR5(\fixed_mul_stage2/tmp [63]),
    .O(\stage2_r[31] )
  );
  X_LUT6 #(
    .INIT ( 64'h5555555555555554 ))
  \fixed_mul_stage2/r<0>2  (
    .ADR0(\fixed_mul_stage2/tmp [63]),
    .ADR1(\fixed_mul_stage2/tmp [62]),
    .ADR2(\fixed_mul_stage2/tmp [61]),
    .ADR3(\fixed_mul_stage2/tmp [60]),
    .ADR4(\fixed_mul_stage2/tmp [59]),
    .ADR5(N23),
    .O(\stage2_r[0] )
  );
  X_LUT5 #(
    .INIT ( 32'hBBBA1110 ))
  \stage4_out_y<31>1  (
    .ADR0(stage4_in_lookup_exact_1358),
    .ADR1(\fixed_mul_stage4/r_cmp_gt0000 ),
    .ADR2(\fixed_mul_stage4/r_cmp_lt0000 ),
    .ADR3(\fixed_mul_stage4/tmp [55]),
    .ADR4(stage4_in_y[31]),
    .O(stage4_out_y[31])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \stage4_out_y<0>21  (
    .ADR0(stage4_in_lookup_exact_1358),
    .ADR1(\fixed_mul_stage4/r_cmp_gt0000 ),
    .O(N13)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \stage4_out_y<0>11  (
    .ADR0(stage4_in_lookup_exact_1358),
    .ADR1(\fixed_mul_stage4/r_cmp_lt0000 ),
    .O(N10)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \fixed_mul_stage4/r_cmp_gt00001_SW0  (
    .ADR0(\fixed_mul_stage4/tmp [58]),
    .ADR1(\fixed_mul_stage4/tmp [57]),
    .ADR2(\fixed_mul_stage4/tmp [56]),
    .ADR3(\fixed_mul_stage4/tmp [55]),
    .O(N27)
  );
  X_LUT6 #(
    .INIT ( 64'h5555555555555554 ))
  \fixed_mul_stage4/r_cmp_gt00001  (
    .ADR0(\fixed_mul_stage4/tmp [63]),
    .ADR1(\fixed_mul_stage4/tmp [62]),
    .ADR2(\fixed_mul_stage4/tmp [61]),
    .ADR3(\fixed_mul_stage4/tmp [60]),
    .ADR4(\fixed_mul_stage4/tmp [59]),
    .ADR5(N27),
    .O(\fixed_mul_stage4/r_cmp_gt0000 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFF00000001 ))
  \fixed_mul_stage4/r_cmp_lt00001  (
    .ADR0(\fixed_mul_stage4/tmp [62]),
    .ADR1(\fixed_mul_stage4/tmp [61]),
    .ADR2(\fixed_mul_stage4/tmp [60]),
    .ADR3(\fixed_mul_stage4/tmp [59]),
    .ADR4(N27),
    .ADR5(\fixed_mul_stage4/tmp [63]),
    .O(\fixed_mul_stage4/r_cmp_lt0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<31>_SW0  (
    .ADR0(\fixed_mul_stage3/tmp [58]),
    .ADR1(\fixed_mul_stage3/tmp [57]),
    .ADR2(\fixed_mul_stage3/tmp [56]),
    .ADR3(\fixed_mul_stage3/tmp [55]),
    .O(N31)
  );
  X_LUT6 #(
    .INIT ( 64'h5555555555555554 ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<31>  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [62]),
    .ADR2(\fixed_mul_stage3/tmp [61]),
    .ADR3(\fixed_mul_stage3/tmp [60]),
    .ADR4(\fixed_mul_stage3/tmp [59]),
    .ADR5(N31),
    .O(stage3_r[0])
  );
  X_LUT6 #(
    .INIT ( 64'hE000000000000000 ))
  \fixed_sub_stage3/adder/Madd__old_tmp_8_cy<28>11  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [25]),
    .ADR3(\fixed_sub_stage3/sign_inv [26]),
    .ADR4(\fixed_sub_stage3/sign_inv [27]),
    .ADR5(\fixed_sub_stage3/sign_inv [28]),
    .O(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28])
  );
  X_BUF   new_data_IBUF (
    .I(new_data),
    .O(new_data_IBUF_1047)
  );
  X_BUF   rom_dout_31_IBUF (
    .I(rom_dout[31]),
    .O(rom_dout_31_IBUF_1281)
  );
  X_BUF   rom_dout_30_IBUF (
    .I(rom_dout[30]),
    .O(rom_dout_30_IBUF_1280)
  );
  X_BUF   rom_dout_29_IBUF (
    .I(rom_dout[29]),
    .O(rom_dout_29_IBUF_1278)
  );
  X_BUF   rom_dout_28_IBUF (
    .I(rom_dout[28]),
    .O(rom_dout_28_IBUF_1277)
  );
  X_BUF   rom_dout_27_IBUF (
    .I(rom_dout[27]),
    .O(rom_dout_27_IBUF_1276)
  );
  X_BUF   rom_dout_26_IBUF (
    .I(rom_dout[26]),
    .O(rom_dout_26_IBUF_1275)
  );
  X_BUF   rom_dout_25_IBUF (
    .I(rom_dout[25]),
    .O(rom_dout_25_IBUF_1274)
  );
  X_BUF   rom_dout_24_IBUF (
    .I(rom_dout[24]),
    .O(rom_dout_24_IBUF_1273)
  );
  X_BUF   rom_dout_23_IBUF (
    .I(rom_dout[23]),
    .O(rom_dout_23_IBUF_1272)
  );
  X_BUF   rom_dout_22_IBUF (
    .I(rom_dout[22]),
    .O(rom_dout_22_IBUF_1271)
  );
  X_BUF   rom_dout_21_IBUF (
    .I(rom_dout[21]),
    .O(rom_dout_21_IBUF_1270)
  );
  X_BUF   rom_dout_20_IBUF (
    .I(rom_dout[20]),
    .O(rom_dout_20_IBUF_1269)
  );
  X_BUF   rom_dout_19_IBUF (
    .I(rom_dout[19]),
    .O(rom_dout_19_IBUF_1267)
  );
  X_BUF   rom_dout_18_IBUF (
    .I(rom_dout[18]),
    .O(rom_dout_18_IBUF_1266)
  );
  X_BUF   rom_dout_17_IBUF (
    .I(rom_dout[17]),
    .O(rom_dout_17_IBUF_1265)
  );
  X_BUF   rom_dout_16_IBUF (
    .I(rom_dout[16]),
    .O(rom_dout_16_IBUF_1264)
  );
  X_BUF   rom_dout_15_IBUF (
    .I(rom_dout[15]),
    .O(rom_dout_15_IBUF_1263)
  );
  X_BUF   rom_dout_14_IBUF (
    .I(rom_dout[14]),
    .O(rom_dout_14_IBUF_1262)
  );
  X_BUF   rom_dout_13_IBUF (
    .I(rom_dout[13]),
    .O(rom_dout_13_IBUF_1261)
  );
  X_BUF   rom_dout_12_IBUF (
    .I(rom_dout[12]),
    .O(rom_dout_12_IBUF_1260)
  );
  X_BUF   rom_dout_11_IBUF (
    .I(rom_dout[11]),
    .O(rom_dout_11_IBUF_1259)
  );
  X_BUF   rom_dout_10_IBUF (
    .I(rom_dout[10]),
    .O(rom_dout_10_IBUF_1258)
  );
  X_BUF   rom_dout_9_IBUF (
    .I(rom_dout[9]),
    .O(rom_dout_9_IBUF_1288)
  );
  X_BUF   rom_dout_8_IBUF (
    .I(rom_dout[8]),
    .O(rom_dout_8_IBUF_1287)
  );
  X_BUF   rom_dout_7_IBUF (
    .I(rom_dout[7]),
    .O(rom_dout_7_IBUF_1286)
  );
  X_BUF   rom_dout_6_IBUF (
    .I(rom_dout[6]),
    .O(rom_dout_6_IBUF_1285)
  );
  X_BUF   rom_dout_5_IBUF (
    .I(rom_dout[5]),
    .O(rom_dout_5_IBUF_1284)
  );
  X_BUF   rom_dout_4_IBUF (
    .I(rom_dout[4]),
    .O(rom_dout_4_IBUF_1283)
  );
  X_BUF   rom_dout_3_IBUF (
    .I(rom_dout[3]),
    .O(rom_dout_3_IBUF_1282)
  );
  X_BUF   rom_dout_2_IBUF (
    .I(rom_dout[2]),
    .O(rom_dout_2_IBUF_1279)
  );
  X_BUF   rom_dout_1_IBUF (
    .I(rom_dout[1]),
    .O(rom_dout_1_IBUF_1268)
  );
  X_BUF   rom_dout_0_IBUF (
    .I(rom_dout[0]),
    .O(rom_dout_0_IBUF_1257)
  );
  X_BUF   a_31_IBUF (
    .I(a[31]),
    .O(a_31_IBUF_213)
  );
  X_BUF   a_30_IBUF (
    .I(a[30]),
    .O(a_30_IBUF_212)
  );
  X_BUF   a_29_IBUF (
    .I(a[29]),
    .O(a_29_IBUF_210)
  );
  X_BUF   a_28_IBUF (
    .I(a[28]),
    .O(a_28_IBUF_209)
  );
  X_BUF   a_27_IBUF (
    .I(a[27]),
    .O(a_27_IBUF_208)
  );
  X_BUF   a_26_IBUF (
    .I(a[26]),
    .O(a_26_IBUF_207)
  );
  X_BUF   a_25_IBUF (
    .I(a[25]),
    .O(a_25_IBUF_206)
  );
  X_BUF   a_24_IBUF (
    .I(a[24]),
    .O(a_24_IBUF_205)
  );
  X_BUF   a_23_IBUF (
    .I(a[23]),
    .O(a_23_IBUF_204)
  );
  X_BUF   a_22_IBUF (
    .I(a[22]),
    .O(a_22_IBUF_203)
  );
  X_BUF   a_21_IBUF (
    .I(a[21]),
    .O(a_21_IBUF_202)
  );
  X_BUF   a_20_IBUF (
    .I(a[20]),
    .O(a_20_IBUF_201)
  );
  X_BUF   a_19_IBUF (
    .I(a[19]),
    .O(a_19_IBUF_199)
  );
  X_BUF   a_18_IBUF (
    .I(a[18]),
    .O(a_18_IBUF_198)
  );
  X_BUF   a_17_IBUF (
    .I(a[17]),
    .O(a_17_IBUF_197)
  );
  X_BUF   a_16_IBUF (
    .I(a[16]),
    .O(a_16_IBUF_196)
  );
  X_BUF   a_15_IBUF (
    .I(a[15]),
    .O(a_15_IBUF_195)
  );
  X_BUF   a_14_IBUF (
    .I(a[14]),
    .O(a_14_IBUF_194)
  );
  X_BUF   a_13_IBUF (
    .I(a[13]),
    .O(a_13_IBUF_193)
  );
  X_BUF   a_12_IBUF (
    .I(a[12]),
    .O(a_12_IBUF_192)
  );
  X_BUF   a_11_IBUF (
    .I(a[11]),
    .O(a_11_IBUF_191)
  );
  X_BUF   a_10_IBUF (
    .I(a[10]),
    .O(a_10_IBUF_190)
  );
  X_BUF   a_9_IBUF (
    .I(a[9]),
    .O(a_9_IBUF_220)
  );
  X_BUF   a_8_IBUF (
    .I(a[8]),
    .O(a_8_IBUF_219)
  );
  X_BUF   a_7_IBUF (
    .I(a[7]),
    .O(a_7_IBUF_218)
  );
  X_BUF   a_6_IBUF (
    .I(a[6]),
    .O(a_6_IBUF_217)
  );
  X_BUF   a_5_IBUF (
    .I(a[5]),
    .O(a_5_IBUF_216)
  );
  X_BUF   a_4_IBUF (
    .I(a[4]),
    .O(a_4_IBUF_215)
  );
  X_BUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_214)
  );
  X_BUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_211)
  );
  X_BUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_200)
  );
  X_BUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_189)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<0>12  (
    .ADR0(r_0_BRB0_1082),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_0_BRB3_1085),
    .O(r_0)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<1>11  (
    .ADR0(r_1_BRB0_1117),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_1_BRB3_1118),
    .O(r_1)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<2>11  (
    .ADR0(r_2_BRB0_1150),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_2_BRB3_1151),
    .O(r_2)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<3>11  (
    .ADR0(r_3_BRB0_1157),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_3_BRB3_1158),
    .O(r_3)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<4>11  (
    .ADR0(r_4_BRB0_1160),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_4_BRB3_1161),
    .O(r_4)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<5>11  (
    .ADR0(r_5_BRB0_1163),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_5_BRB3_1164),
    .O(r_5)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<6>11  (
    .ADR0(r_6_BRB0_1166),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_6_BRB3_1167),
    .O(r_6)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<7>11  (
    .ADR0(r_7_BRB0_1169),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_7_BRB3_1170),
    .O(r_7)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<8>11  (
    .ADR0(r_8_BRB0_1172),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_8_BRB3_1173),
    .O(r_8)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<9>11  (
    .ADR0(r_9_BRB0_1175),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_9_BRB3_1176),
    .O(r_9)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<10>11  (
    .ADR0(r_10_BRB0_1088),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_10_BRB3_1089),
    .O(r_10)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<11>11  (
    .ADR0(r_11_BRB0_1091),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_11_BRB3_1092),
    .O(r_11)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<12>11  (
    .ADR0(r_12_BRB0_1094),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_12_BRB3_1095),
    .O(r_12)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<13>11  (
    .ADR0(r_13_BRB0_1097),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_13_BRB3_1098),
    .O(r_13)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<14>11  (
    .ADR0(r_14_BRB0_1100),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_14_BRB3_1101),
    .O(r_14)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<15>11  (
    .ADR0(r_15_BRB0_1103),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_15_BRB3_1104),
    .O(r_15)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<16>11  (
    .ADR0(r_16_BRB0_1106),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_16_BRB3_1107),
    .O(r_16)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<17>11  (
    .ADR0(r_17_BRB0_1109),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_17_BRB3_1110),
    .O(r_17)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<18>11  (
    .ADR0(r_18_BRB0_1112),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_18_BRB3_1113),
    .O(r_18)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<19>11  (
    .ADR0(r_19_BRB0_1115),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_19_BRB3_1116),
    .O(r_19)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<20>11  (
    .ADR0(r_20_BRB0_1121),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_20_BRB3_1122),
    .O(r_20)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<21>11  (
    .ADR0(r_21_BRB0_1124),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_21_BRB3_1125),
    .O(r_21)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<22>11  (
    .ADR0(r_22_BRB0_1127),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_22_BRB3_1128),
    .O(r_22)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<23>11  (
    .ADR0(r_23_BRB0_1130),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_23_BRB3_1131),
    .O(r_23)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<24>11  (
    .ADR0(r_24_BRB0_1133),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_24_BRB3_1134),
    .O(r_24)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<25>11  (
    .ADR0(r_25_BRB0_1136),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_25_BRB3_1137),
    .O(r_25)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<26>11  (
    .ADR0(r_26_BRB0_1139),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_26_BRB3_1140),
    .O(r_26)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<27>11  (
    .ADR0(r_27_BRB0_1142),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_27_BRB3_1143),
    .O(r_27)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<28>11  (
    .ADR0(r_28_BRB0_1145),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_28_BRB3_1146),
    .O(r_28)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<29>11  (
    .ADR0(r_29_BRB0_1148),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_29_BRB3_1149),
    .O(r_29)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \stage4_out_y<30>11  (
    .ADR0(r_30_BRB0_1154),
    .ADR1(r_0_BRB1_1083),
    .ADR2(r_0_BRB2_1084),
    .ADR3(r_30_BRB3_1155),
    .O(r_30)
  );
  X_LUT5 #(
    .INIT ( 32'h7DDD2888 ))
  \rom_addr_mux0000<10>111  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[5] ),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR4(a_10_IBUF_190),
    .O(\rom_addr_mux0000<10>11_1215 )
  );
  X_LUT6 #(
    .INIT ( 64'h5555555555555554 ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<31>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [62]),
    .ADR2(\fixed_mul_stage3/tmp [61]),
    .ADR3(\fixed_mul_stage3/tmp [60]),
    .ADR4(\fixed_mul_stage3/tmp [59]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[31] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<1>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[1] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<2>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[2] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<3>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[3] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<4>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[4] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<5>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[5] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<6>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[6] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<7>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[7] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<8>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[8] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<9>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[9] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<10>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[10] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<11>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[11] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<12>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[12] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<13>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[13] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<14>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[14] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<15>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[15] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<16>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[16] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<17>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[17] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<18>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[18] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<19>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[19] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<20>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[20] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<21>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[21] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<22>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[22] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<23>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[23] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<24>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[24] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<25>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[25] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<26>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[26] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<27>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[27] )
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<9>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [9]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[9])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<8>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [8]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[8])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<7>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [7]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[7])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<6>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [6]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[6])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<5>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [5]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[5])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<4>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [4]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[4])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<3>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [3]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[3])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<2>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [2]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[2])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<22>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [22]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[22])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<21>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [21]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[21])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<20>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [20]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[20])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<1>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [1]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[1])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<19>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [19]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[19])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<18>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [18]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[18])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<17>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [17]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[17])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<16>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [16]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[16])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<15>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [15]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[15])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<14>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [14]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[14])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<13>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [13]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[13])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<12>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [12]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[12])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<11>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [11]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[11])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<10>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [10]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[10])
  );
  X_LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \fixed_sub_stage3/adder/r<0>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [0]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[0])
  );
  X_LUT5 #(
    .INIT ( 32'h55D55555 ))
  \fixed_sub_stage3/adder/r<23>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[23])
  );
  X_LUT6 #(
    .INIT ( 64'h9999F99999999999 ))
  \fixed_sub_stage3/adder/r<24>2  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [29]),
    .ADR3(\fixed_sub_stage3/sign_inv [30]),
    .ADR4(\fixed_sub_stage3/sign_inv [31]),
    .ADR5(\fixed_sub_stage3/adder/Madd__old_tmp_8_cy [28]),
    .O(stage3_out_acc[24])
  );
  X_LUT4 #(
    .INIT ( 16'hE000 ))
  \fixed_sub_stage3/adder/Madd__old_tmp_8_cy<28>11_SW0  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [25]),
    .ADR3(\fixed_sub_stage3/sign_inv [26]),
    .O(N39)
  );
  X_LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \fixed_sub_stage3/adder/r<31>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [31]),
    .ADR1(\fixed_sub_stage3/sign_inv [30]),
    .ADR2(\fixed_sub_stage3/sign_inv [29]),
    .ADR3(\fixed_sub_stage3/sign_inv [28]),
    .ADR4(\fixed_sub_stage3/sign_inv [27]),
    .ADR5(N39),
    .O(stage3_out_acc[31])
  );
  X_LUT6 #(
    .INIT ( 64'h7878F878F0F0F0F0 ))
  \fixed_sub_stage3/adder/r<29>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [27]),
    .ADR1(\fixed_sub_stage3/sign_inv [28]),
    .ADR2(\fixed_sub_stage3/sign_inv [29]),
    .ADR3(\fixed_sub_stage3/sign_inv [30]),
    .ADR4(\fixed_sub_stage3/sign_inv [31]),
    .ADR5(N39),
    .O(stage3_out_acc[29])
  );
  X_LUT6 #(
    .INIT ( 64'h6AAAEAAAAAAAAAAA ))
  \fixed_sub_stage3/adder/r<30>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [30]),
    .ADR1(\fixed_sub_stage3/sign_inv [27]),
    .ADR2(\fixed_sub_stage3/sign_inv [29]),
    .ADR3(\fixed_sub_stage3/sign_inv [28]),
    .ADR4(\fixed_sub_stage3/sign_inv [31]),
    .ADR5(N39),
    .O(stage3_out_acc[30])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<28>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[28] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<29>1  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000[29] )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAB ))
  \fixed_sub_stage3/Madd_sign_inv_not0000<30>11  (
    .ADR0(\fixed_mul_stage3/tmp [63]),
    .ADR1(\fixed_mul_stage3/tmp [59]),
    .ADR2(\fixed_mul_stage3/tmp [60]),
    .ADR3(\fixed_mul_stage3/tmp [61]),
    .ADR4(\fixed_mul_stage3/tmp [62]),
    .ADR5(N31),
    .O(\fixed_sub_stage3/Madd_sign_inv_not0000<30>1 )
  );
  X_LUT6 #(
    .INIT ( 64'h6666E666CCCCCCCC ))
  \fixed_sub_stage3/adder/r<28>  (
    .ADR0(\fixed_sub_stage3/sign_inv [27]),
    .ADR1(\fixed_sub_stage3/sign_inv [28]),
    .ADR2(\fixed_sub_stage3/sign_inv [29]),
    .ADR3(\fixed_sub_stage3/sign_inv [30]),
    .ADR4(\fixed_sub_stage3/sign_inv [31]),
    .ADR5(N39),
    .O(stage3_out_acc[28])
  );
  X_LUT4 #(
    .INIT ( 16'h1FFF ))
  \fixed_sub_stage3/adder/r<27>1_SW0  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [25]),
    .ADR3(\fixed_sub_stage3/sign_inv [26]),
    .O(N53)
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAA5555D555 ))
  \fixed_sub_stage3/adder/r<27>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [27]),
    .ADR1(\fixed_sub_stage3/sign_inv [28]),
    .ADR2(\fixed_sub_stage3/sign_inv [29]),
    .ADR3(\fixed_sub_stage3/sign_inv [30]),
    .ADR4(\fixed_sub_stage3/sign_inv [31]),
    .ADR5(N53),
    .O(stage3_out_acc[27])
  );
  X_LUT3 #(
    .INIT ( 8'h36 ))
  \fixed_sub_stage3/adder/r<25>1_SW0  (
    .ADR0(\fixed_sub_stage3/sign_inv [24]),
    .ADR1(\fixed_sub_stage3/sign_inv [25]),
    .ADR2(\fixed_sub_stage3/sign_inv [23]),
    .O(N55)
  );
  X_LUT5 #(
    .INIT ( 32'hFE1E1E1E ))
  \fixed_sub_stage3/adder/r<25>1_SW1  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [25]),
    .ADR3(\fixed_sub_stage3/sign_inv [26]),
    .ADR4(\fixed_sub_stage3/sign_inv [27]),
    .O(N56)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFF0080FF7F0000 ))
  \fixed_sub_stage3/adder/r<25>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [28]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(N55),
    .ADR5(N56),
    .O(stage3_out_acc[25])
  );
  X_LUT4 #(
    .INIT ( 16'h1FE0 ))
  \fixed_sub_stage3/adder/r<26>1_SW0  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [25]),
    .ADR3(\fixed_sub_stage3/sign_inv [26]),
    .O(N58)
  );
  X_LUT5 #(
    .INIT ( 32'hFFE01FE0 ))
  \fixed_sub_stage3/adder/r<26>1_SW1  (
    .ADR0(\fixed_sub_stage3/sign_inv [23]),
    .ADR1(\fixed_sub_stage3/sign_inv [24]),
    .ADR2(\fixed_sub_stage3/sign_inv [25]),
    .ADR3(\fixed_sub_stage3/sign_inv [26]),
    .ADR4(\fixed_sub_stage3/sign_inv [27]),
    .O(N59)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFF0080FF7F0000 ))
  \fixed_sub_stage3/adder/r<26>1  (
    .ADR0(\fixed_sub_stage3/sign_inv [28]),
    .ADR1(\fixed_sub_stage3/sign_inv [29]),
    .ADR2(\fixed_sub_stage3/sign_inv [30]),
    .ADR3(\fixed_sub_stage3/sign_inv [31]),
    .ADR4(N58),
    .ADR5(N59),
    .O(stage3_out_acc[26])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_0_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [24]),
    .SSET(N13),
    .O(r_0_BRB0_1082),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_0_BRB1 (
    .CLK(clk_BUFGP),
    .I(N10),
    .SSET(N13),
    .O(r_0_BRB1_1083),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_0_BRB2 (
    .CLK(clk_BUFGP),
    .I(stage4_in_lookup_exact_1358),
    .O(r_0_BRB2_1084),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_1_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [25]),
    .SSET(N13),
    .O(r_1_BRB0_1117),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_2_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [26]),
    .SSET(N13),
    .O(r_2_BRB0_1150),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_3_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [27]),
    .SSET(N13),
    .O(r_3_BRB0_1157),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_4_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [28]),
    .SSET(N13),
    .O(r_4_BRB0_1160),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_5_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [29]),
    .SSET(N13),
    .O(r_5_BRB0_1163),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_6_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [30]),
    .SSET(N13),
    .O(r_6_BRB0_1166),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_7_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [31]),
    .SSET(N13),
    .O(r_7_BRB0_1169),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_8_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [32]),
    .SSET(N13),
    .O(r_8_BRB0_1172),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_9_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [33]),
    .SSET(N13),
    .O(r_9_BRB0_1175),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_10_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [34]),
    .SSET(N13),
    .O(r_10_BRB0_1088),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_11_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [35]),
    .SSET(N13),
    .O(r_11_BRB0_1091),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_12_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [36]),
    .SSET(N13),
    .O(r_12_BRB0_1094),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_13_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [37]),
    .SSET(N13),
    .O(r_13_BRB0_1097),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_14_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [38]),
    .SSET(N13),
    .O(r_14_BRB0_1100),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_15_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [39]),
    .SSET(N13),
    .O(r_15_BRB0_1103),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_16_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [40]),
    .SSET(N13),
    .O(r_16_BRB0_1106),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_17_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [41]),
    .SSET(N13),
    .O(r_17_BRB0_1109),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_18_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [42]),
    .SSET(N13),
    .O(r_18_BRB0_1112),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_19_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [43]),
    .SSET(N13),
    .O(r_19_BRB0_1115),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_20_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [44]),
    .SSET(N13),
    .O(r_20_BRB0_1121),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_21_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [45]),
    .SSET(N13),
    .O(r_21_BRB0_1124),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_22_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [46]),
    .SSET(N13),
    .O(r_22_BRB0_1127),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_23_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [47]),
    .SSET(N13),
    .O(r_23_BRB0_1130),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_24_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [48]),
    .SSET(N13),
    .O(r_24_BRB0_1133),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_25_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [49]),
    .SSET(N13),
    .O(r_25_BRB0_1136),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_26_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [50]),
    .SSET(N13),
    .O(r_26_BRB0_1139),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_27_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [51]),
    .SSET(N13),
    .O(r_27_BRB0_1142),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_28_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [52]),
    .SSET(N13),
    .O(r_28_BRB0_1145),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_29_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [53]),
    .SSET(N13),
    .O(r_29_BRB0_1148),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  r_30_BRB0 (
    .CLK(clk_BUFGP),
    .I(\fixed_mul_stage4/tmp [54]),
    .SSET(N13),
    .O(r_30_BRB0_1154),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h55570002 ))
  \clz32_instance/clz16_high/z<1>  (
    .ADR0(\clz32_instance/clz16_high/z_cmp_eq0000 ),
    .ADR1(stage1_in_a[22]),
    .ADR2(stage1_in_a[23]),
    .ADR3(N185),
    .ADR4(\clz32_instance/clz16_high/zh [1]),
    .O(\clz32_instance/zh [1])
  );
  X_LUT3 #(
    .INIT ( 8'h51 ))
  \clz32_instance/clz16_low/clz8_high/z<0>1_SW3  (
    .ADR0(stage1_in_a[10]),
    .ADR1(stage1_in_a[8]),
    .ADR2(stage1_in_a[9]),
    .O(N187)
  );
  X_LUT6 #(
    .INIT ( 64'h4544454445444545 ))
  \clz32_instance/clz16_low/clz8_high/z<0>1  (
    .ADR0(stage1_in_a[15]),
    .ADR1(stage1_in_a[14]),
    .ADR2(stage1_in_a[13]),
    .ADR3(stage1_in_a[12]),
    .ADR4(stage1_in_a[11]),
    .ADR5(N187),
    .O(\clz32_instance/clz16_low/zh [0])
  );
  X_LUT5 #(
    .INIT ( 32'h555D0008 ))
  \clz32_instance/z<1>70  (
    .ADR0(\clz32_instance/clz16_low/z_cmp_eq0000 ),
    .ADR1(\clz32_instance/z<1>31_243 ),
    .ADR2(stage1_in_a[7]),
    .ADR3(stage1_in_a[6]),
    .ADR4(\clz32_instance/clz16_low/zh [1]),
    .O(\clz32_instance/z<1>70_244 )
  );
  X_LUT6 #(
    .INIT ( 64'hFDA8752075207520 ))
  \clz32_instance/z<2>164  (
    .ADR0(\clz32_instance/z_cmp_eq0000 ),
    .ADR1(\clz32_instance/clz16_low/z_cmp_eq0000 ),
    .ADR2(\clz32_instance/clz16_low/zh [2]),
    .ADR3(\clz32_instance/zh [2]),
    .ADR4(\clz32_instance/z<2>71_245 ),
    .ADR5(\clz32_instance/z<2>96_246 ),
    .O(Msub_msb_sel_4_sub0000_Madd_lut[2])
  );
  X_LUT5 #(
    .INIT ( 32'h22322233 ))
  \clz32_instance/clz16_high/z<0>_SW2  (
    .ADR0(stage1_in_a[19]),
    .ADR1(stage1_in_a[20]),
    .ADR2(stage1_in_a[17]),
    .ADR3(stage1_in_a[18]),
    .ADR4(stage1_in_a[16]),
    .O(N189)
  );
  X_LUT6 #(
    .INIT ( 64'h5D085D085D085F0A ))
  \clz32_instance/clz16_high/z<0>  (
    .ADR0(\clz32_instance/clz16_high/z_cmp_eq0000 ),
    .ADR1(stage1_in_a[22]),
    .ADR2(stage1_in_a[23]),
    .ADR3(\clz32_instance/clz16_high/zh [0]),
    .ADR4(stage1_in_a[21]),
    .ADR5(N189),
    .O(\clz32_instance/zh [0])
  );
  X_LUT6 #(
    .INIT ( 64'h88828282DDD7D7D7 ))
  \Maddsub_rom_addr_addsub0000_lut<11>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[5] ),
    .ADR1(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR2(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR3(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR4(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .ADR5(a_11_IBUF_191),
    .O(\Maddsub_rom_addr_addsub0000_lut[11] )
  );
  X_LUT4 #(
    .INIT ( 16'h5554 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<5>  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .O(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[5] )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFABABABAA ))
  \clz32_instance/z<1>31  (
    .ADR0(stage1_in_a[4]),
    .ADR1(stage1_in_a[3]),
    .ADR2(stage1_in_a[2]),
    .ADR3(stage1_in_a[1]),
    .ADR4(stage1_in_a[0]),
    .ADR5(stage1_in_a[5]),
    .O(\clz32_instance/z<1>31_243 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_10  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[14]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[15]),
    .ADR4(stage1_in_a[12]),
    .ADR5(stage1_in_a[13]),
    .O(\Mmux_msb_sel<0>_10 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_92  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[10]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[11]),
    .ADR4(stage1_in_a[8]),
    .ADR5(stage1_in_a[9]),
    .O(\Mmux_msb_sel<0>_92 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_91  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[6]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[7]),
    .ADR4(stage1_in_a[4]),
    .ADR5(stage1_in_a[5]),
    .O(\Mmux_msb_sel<0>_91 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_82  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[2]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[3]),
    .ADR4(stage1_in_a[0]),
    .ADR5(stage1_in_a[1]),
    .O(\Mmux_msb_sel<0>_82 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_9  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[30]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[31]),
    .ADR4(stage1_in_a[28]),
    .ADR5(stage1_in_a[29]),
    .O(\Mmux_msb_sel<0>_9 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_81  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[26]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[27]),
    .ADR4(stage1_in_a[24]),
    .ADR5(stage1_in_a[25]),
    .O(\Mmux_msb_sel<0>_81 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_8  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[22]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[23]),
    .ADR4(stage1_in_a[20]),
    .ADR5(stage1_in_a[21]),
    .O(\Mmux_msb_sel<0>_8 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<4>_7  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[18]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[19]),
    .ADR4(stage1_in_a[16]),
    .ADR5(stage1_in_a[17]),
    .O(\Mmux_msb_sel<0>_7 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_10  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[12]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[13]),
    .ADR4(stage1_in_a[14]),
    .ADR5(stage1_in_a[15]),
    .O(\Mmux_msb_sel<2>_10 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_92  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[8]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[9]),
    .ADR4(stage1_in_a[10]),
    .ADR5(stage1_in_a[11]),
    .O(\Mmux_msb_sel<2>_92 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_91  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[4]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[5]),
    .ADR4(stage1_in_a[6]),
    .ADR5(stage1_in_a[7]),
    .O(\Mmux_msb_sel<2>_91 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_82  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[0]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[1]),
    .ADR4(stage1_in_a[2]),
    .ADR5(stage1_in_a[3]),
    .O(\Mmux_msb_sel<2>_82 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_9  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[28]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[29]),
    .ADR4(stage1_in_a[30]),
    .ADR5(stage1_in_a[31]),
    .O(\Mmux_msb_sel<2>_9 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_81  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[24]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[25]),
    .ADR4(stage1_in_a[26]),
    .ADR5(stage1_in_a[27]),
    .O(\Mmux_msb_sel<2>_81 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_8  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[20]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[21]),
    .ADR4(stage1_in_a[22]),
    .ADR5(stage1_in_a[23]),
    .O(\Mmux_msb_sel<2>_8 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<6>_7  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[16]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[17]),
    .ADR4(stage1_in_a[18]),
    .ADR5(stage1_in_a[19]),
    .O(\Mmux_msb_sel<2>_7 )
  );
  X_LUT5 #(
    .INIT ( 32'hCCC8CCCC ))
  \clz32_instance/clz16_high/z<3>1  (
    .ADR0(\clz32_instance/clz16_high/zh [0]),
    .ADR1(\clz32_instance/clz16_high/zh [3]),
    .ADR2(\clz32_instance/clz16_high/zh [1]),
    .ADR3(\clz32_instance/clz16_high/zh [2]),
    .ADR4(\clz32_instance/clz16_high/Madd_z_addsub0000_cy [3]),
    .O(\clz32_instance/zh [3])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAEAAAAAAAA ))
  \clz32_instance/z<1>100  (
    .ADR0(\clz32_instance/zh [1]),
    .ADR1(\clz32_instance/zh [4]),
    .ADR2(\clz32_instance/zh [0]),
    .ADR3(\clz32_instance/zh [2]),
    .ADR4(\clz32_instance/zh [3]),
    .ADR5(\clz32_instance/z<1>70_244 ),
    .O(Msub_msb_sel_2_sub0000_Madd_lut[1])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAEAAAAAAAA ))
  \clz32_instance/z<0>158  (
    .ADR0(\clz32_instance/zh [0]),
    .ADR1(\clz32_instance/zh [4]),
    .ADR2(\clz32_instance/zh [1]),
    .ADR3(\clz32_instance/zh [2]),
    .ADR4(\clz32_instance/zh [3]),
    .ADR5(\clz32_instance/z<0>130_241 ),
    .O(z[0])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_10  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[15]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[12]),
    .ADR4(stage1_in_a[13]),
    .ADR5(stage1_in_a[14]),
    .O(\Mmux_msb_sel<1>_10 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_92  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[11]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[8]),
    .ADR4(stage1_in_a[9]),
    .ADR5(stage1_in_a[10]),
    .O(\Mmux_msb_sel<1>_92 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_91  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[7]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[4]),
    .ADR4(stage1_in_a[5]),
    .ADR5(stage1_in_a[6]),
    .O(\Mmux_msb_sel<1>_91 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_82  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[3]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[0]),
    .ADR4(stage1_in_a[1]),
    .ADR5(stage1_in_a[2]),
    .O(\Mmux_msb_sel<1>_82 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_9  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[31]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[28]),
    .ADR4(stage1_in_a[29]),
    .ADR5(stage1_in_a[30]),
    .O(\Mmux_msb_sel<1>_9 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_81  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[27]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[24]),
    .ADR4(stage1_in_a[25]),
    .ADR5(stage1_in_a[26]),
    .O(\Mmux_msb_sel<1>_81 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_8  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[23]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[20]),
    .ADR4(stage1_in_a[21]),
    .ADR5(stage1_in_a[22]),
    .O(\Mmux_msb_sel<1>_8 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<5>_7  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[19]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[16]),
    .ADR4(stage1_in_a[17]),
    .ADR5(stage1_in_a[18]),
    .O(\Mmux_msb_sel<1>_7 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_10  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[15]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[12]),
    .ADR4(stage1_in_a[13]),
    .ADR5(stage1_in_a[14]),
    .O(\Mmux_msb_sel<3>_10_84 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_92  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[11]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[8]),
    .ADR4(stage1_in_a[9]),
    .ADR5(stage1_in_a[10]),
    .O(\Mmux_msb_sel<3>_92_91 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_91  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[7]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[4]),
    .ADR4(stage1_in_a[5]),
    .ADR5(stage1_in_a[6]),
    .O(\Mmux_msb_sel<3>_91_90 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_82  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[3]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[0]),
    .ADR4(stage1_in_a[1]),
    .ADR5(stage1_in_a[2]),
    .O(\Mmux_msb_sel<3>_82_88 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_9  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[31]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[28]),
    .ADR4(stage1_in_a[29]),
    .ADR5(stage1_in_a[30]),
    .O(\Mmux_msb_sel<3>_9_89 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_81  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[27]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[24]),
    .ADR4(stage1_in_a[25]),
    .ADR5(stage1_in_a[26]),
    .O(\Mmux_msb_sel<3>_81_87 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_8  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[23]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[20]),
    .ADR4(stage1_in_a[21]),
    .ADR5(stage1_in_a[22]),
    .O(\Mmux_msb_sel<3>_8_86 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_7  (
    .ADR0(z[0]),
    .ADR1(stage1_in_a[19]),
    .ADR2(Madd_z_pos_not0000[1]),
    .ADR3(stage1_in_a[16]),
    .ADR4(stage1_in_a[17]),
    .ADR5(stage1_in_a[18]),
    .O(\Mmux_msb_sel<3>_7_85 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<1>_4  (
    .ADR0(msb_sel_5_sub0000[2]),
    .ADR1(\Mmux_msb_sel<1>_10 ),
    .ADR2(msb_sel_1_sub0000[3]),
    .ADR3(\Mmux_msb_sel<1>_82 ),
    .ADR4(\Mmux_msb_sel<1>_91 ),
    .ADR5(\Mmux_msb_sel<1>_92 ),
    .O(\Mmux_msb_sel<1>_4_66 )
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<1>_3  (
    .ADR0(msb_sel_5_sub0000[2]),
    .ADR1(\Mmux_msb_sel<1>_9 ),
    .ADR2(msb_sel_1_sub0000[3]),
    .ADR3(\Mmux_msb_sel<1>_7 ),
    .ADR4(\Mmux_msb_sel<1>_8 ),
    .ADR5(\Mmux_msb_sel<1>_81 ),
    .O(\Mmux_msb_sel<1>_3_65 )
  );
  X_LUT5 #(
    .INIT ( 32'h40EAEAEA ))
  \clz32_instance/z<4>1  (
    .ADR0(\clz32_instance/z_cmp_eq0000 ),
    .ADR1(\clz32_instance/clz16_high/Madd_z_addsub0000_cy [3]),
    .ADR2(\clz32_instance/clz16_high/z_cmp_eq0000 ),
    .ADR3(\clz32_instance/clz16_low/z_cmp_eq0000 ),
    .ADR4(\clz32_instance/clz16_low/Madd_z_addsub0000_cy [3]),
    .O(Msub_msb_sel_0_sub0000_Madd_lut[4])
  );
  X_LUT6 #(
    .INIT ( 64'h1110111011101111 ))
  \clz32_instance/clz16_high/z<1>_SW3  (
    .ADR0(stage1_in_a[21]),
    .ADR1(stage1_in_a[20]),
    .ADR2(stage1_in_a[18]),
    .ADR3(stage1_in_a[19]),
    .ADR4(stage1_in_a[17]),
    .ADR5(stage1_in_a[16]),
    .O(N185)
  );
  X_LUT6 #(
    .INIT ( 64'hFAFA5050FAFB5040 ))
  \rom_addr_mux0000<8>1  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[29]),
    .ADR2(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .ADR3(stage1_in_a[30]),
    .ADR4(a_8_IBUF_219),
    .ADR5(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .O(rom_addr_mux0000[8])
  );
  X_LUT6 #(
    .INIT ( 64'hAFAF0505AFBF0504 ))
  \rom_addr_mux0000<7>1  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[29]),
    .ADR2(z[0]),
    .ADR3(stage1_in_a[30]),
    .ADR4(a_7_IBUF_218),
    .ADR5(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .O(rom_addr_mux0000[7])
  );
  X_LUT6 #(
    .INIT ( 64'hFAFA5050FAFB5040 ))
  \rom_addr_mux0000<9>1  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[29]),
    .ADR2(msb_sel_5_sub0000[2]),
    .ADR3(stage1_in_a[30]),
    .ADR4(a_9_IBUF_220),
    .ADR5(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .O(rom_addr_mux0000[9])
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<0>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[0]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_0_OBUF_1189)
  );
  X_LUT5 #(
    .INIT ( 32'h01000000 ))
  \clz32_instance/clz16_high/z<4>1  (
    .ADR0(\clz32_instance/clz16_high/zh [0]),
    .ADR1(\clz32_instance/clz16_high/zh [1]),
    .ADR2(\clz32_instance/clz16_high/zh [2]),
    .ADR3(\clz32_instance/clz16_high/zh [3]),
    .ADR4(\clz32_instance/clz16_high/Madd_z_addsub0000_cy [3]),
    .O(\clz32_instance/zh [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<1>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[1]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_1_OBUF_1192)
  );
  X_LUT6 #(
    .INIT ( 64'h5554555555555555 ))
  \Madd_z_pos_not0000<1>1  (
    .ADR0(\clz32_instance/zh [1]),
    .ADR1(\clz32_instance/zh [3]),
    .ADR2(\clz32_instance/zh [0]),
    .ADR3(\clz32_instance/zh [2]),
    .ADR4(\clz32_instance/zh [4]),
    .ADR5(\clz32_instance/z<1>70_244 ),
    .O(Madd_z_pos_not0000[1])
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<2>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[2]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_2_OBUF_1193)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<3>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[3]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_3_OBUF_1194)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<4>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[4]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_4_OBUF_1195)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<5>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[5]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_5_OBUF_1196)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<6>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[6]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_6_OBUF_1197)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<7>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[7]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_7_OBUF_1198)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<8>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[8]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_8_OBUF_1199)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<9>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[9]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_9_OBUF_1200)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<10>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[10]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_10_OBUF_1190)
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \rom_addr<11>1  (
    .ADR0(stage1_in_a[30]),
    .ADR1(rom_addr_addsub0000[11]),
    .ADR2(stage1_in_a[31]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .O(rom_addr_11_OBUF_1191)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFF010F ))
  stage1_out_a_div_2_cmp_eq0000_inv11 (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy[3] ),
    .ADR4(stage1_in_a[31]),
    .O(stage1_out_a_div_2_cmp_eq0000_inv1)
  );
  X_LUT5 #(
    .INIT ( 32'hFF000100 ))
  \rom_addr_mux0000<6>1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(a_6_IBUF_217),
    .ADR4(stage1_in_a[31]),
    .O(rom_addr_mux0000[6])
  );
  X_LUT5 #(
    .INIT ( 32'hFF000100 ))
  \rom_addr_mux0000<5>1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(a_5_IBUF_216),
    .ADR4(stage1_in_a[31]),
    .O(rom_addr_mux0000[5])
  );
  X_LUT5 #(
    .INIT ( 32'hFFFF5554 ))
  \rom_addr_mux0000<4>1  (
    .ADR0(stage1_in_a[31]),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR4(a_4_IBUF_215),
    .O(rom_addr_mux0000[4])
  );
  X_LUT5 #(
    .INIT ( 32'hFF000100 ))
  \rom_addr_mux0000<3>1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(a_3_IBUF_214),
    .ADR4(stage1_in_a[31]),
    .O(rom_addr_mux0000[3])
  );
  X_LUT5 #(
    .INIT ( 32'hFF000100 ))
  \rom_addr_mux0000<2>1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(a_2_IBUF_211),
    .ADR4(stage1_in_a[31]),
    .O(rom_addr_mux0000[2])
  );
  X_LUT5 #(
    .INIT ( 32'hFF000100 ))
  \rom_addr_mux0000<1>1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(a_1_IBUF_200),
    .ADR4(stage1_in_a[31]),
    .O(rom_addr_mux0000[1])
  );
  X_LUT5 #(
    .INIT ( 32'hFF000100 ))
  \rom_addr_mux0000<0>1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(a_0_IBUF_189),
    .ADR4(stage1_in_a[31]),
    .O(rom_addr_mux0000[0])
  );
  X_LUT6 #(
    .INIT ( 64'h00FF000100FFFEFF ))
  \Maddsub_rom_addr_addsub0000_lut<7>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_7_IBUF_218),
    .ADR4(stage1_in_a[31]),
    .ADR5(z[0]),
    .O(\Maddsub_rom_addr_addsub0000_lut[7] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<8>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_8_IBUF_219),
    .ADR4(stage1_in_a[31]),
    .ADR5(Msub_msb_sel_2_sub0000_Madd_lut[1]),
    .O(\Maddsub_rom_addr_addsub0000_lut[8] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<9>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_9_IBUF_220),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel_5_sub0000[2]),
    .O(\Maddsub_rom_addr_addsub0000_lut[9] )
  );
  X_LUT4 #(
    .INIT ( 16'hFF01 ))
  \Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<5>_inv1  (
    .ADR0(stage1_in_a[29]),
    .ADR1(stage1_in_a[30]),
    .ADR2(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR3(stage1_in_a[31]),
    .O(stage1_out_a_div_2_cmp_lt0001)
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<0>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_0_IBUF_189),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[0]),
    .O(\Maddsub_rom_addr_addsub0000_lut[0] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<1>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_1_IBUF_200),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[1]),
    .O(\Maddsub_rom_addr_addsub0000_lut[1] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<2>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_2_IBUF_211),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[2]),
    .O(\Maddsub_rom_addr_addsub0000_lut[2] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<3>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_3_IBUF_214),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[3]),
    .O(\Maddsub_rom_addr_addsub0000_lut[3] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FF000100FFFEFF ))
  \Maddsub_rom_addr_addsub0000_lut<4>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_4_IBUF_215),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[4]),
    .O(\Maddsub_rom_addr_addsub0000_lut[4] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<5>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_5_IBUF_216),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[5]),
    .O(\Maddsub_rom_addr_addsub0000_lut[5] )
  );
  X_LUT6 #(
    .INIT ( 64'h00FFFEFF00FF0001 ))
  \Maddsub_rom_addr_addsub0000_lut<6>  (
    .ADR0(\Mcompar_stage1_out_a_div_2_cmp_lt0000_cy<4>1 ),
    .ADR1(stage1_in_a[29]),
    .ADR2(stage1_in_a[30]),
    .ADR3(a_6_IBUF_217),
    .ADR4(stage1_in_a[31]),
    .ADR5(msb_sel[6]),
    .O(\Maddsub_rom_addr_addsub0000_lut[6] )
  );
  X_MUX2   \Mmux_msb_sel<3>_2_f7  (
    .IA(N191),
    .IB(N192),
    .SEL(Msub_msb_sel_4_sub0000_Madd_lut[2]),
    .O(msb_sel[3])
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_2_f7_F  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR1(\Mmux_msb_sel<3>_7_85 ),
    .ADR2(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR3(\Mmux_msb_sel<3>_92_91 ),
    .ADR4(\Mmux_msb_sel<3>_81_87 ),
    .ADR5(\Mmux_msb_sel<3>_82_88 ),
    .O(N191)
  );
  X_LUT6 #(
    .INIT ( 64'hEFE5EAE04F454A40 ))
  \Mmux_msb_sel<3>_2_f7_G  (
    .ADR0(Msub_msb_sel_0_sub0000_Madd_lut[3]),
    .ADR1(\Mmux_msb_sel<3>_91_90 ),
    .ADR2(Msub_msb_sel_0_sub0000_Madd_lut[4]),
    .ADR3(\Mmux_msb_sel<3>_10_84 ),
    .ADR4(\Mmux_msb_sel<3>_8_86 ),
    .ADR5(\Mmux_msb_sel<3>_9_89 ),
    .O(N192)
  );
  X_LUT6 #(
    .INIT ( 64'h3322332333223020 ))
  \clz32_instance/clz16_low/clz8_high/z<1>11  (
    .ADR0(stage1_in_a[12]),
    .ADR1(stage1_in_a[14]),
    .ADR2(stage1_in_a[10]),
    .ADR3(stage1_in_a[13]),
    .ADR4(stage1_in_a[11]),
    .ADR5(\clz32_instance/clz16_low/clz8_high/z<1>_bdd4 ),
    .O(\clz32_instance/clz16_low/clz8_high/z<1>1 )
  );
  X_MUX2   \clz32_instance/clz16_low/clz8_high/z<1>1_f7  (
    .IA(\clz32_instance/clz16_low/clz8_high/z<1>1 ),
    .IB(N0),
    .SEL(stage1_in_a[15]),
    .O(\clz32_instance/clz16_low/zh [1])
  );
  X_LUT6 #(
    .INIT ( 64'h3322332333223020 ))
  \clz32_instance/clz16_high/clz8_high/z<1>11  (
    .ADR0(stage1_in_a[28]),
    .ADR1(stage1_in_a[30]),
    .ADR2(stage1_in_a[26]),
    .ADR3(stage1_in_a[29]),
    .ADR4(stage1_in_a[27]),
    .ADR5(\clz32_instance/clz16_high/clz8_high/z<1>_bdd4 ),
    .O(\clz32_instance/clz16_high/clz8_high/z<1>1 )
  );
  X_MUX2   \clz32_instance/clz16_high/clz8_high/z<1>1_f7  (
    .IA(\clz32_instance/clz16_high/clz8_high/z<1>1 ),
    .IB(N0),
    .SEL(stage1_in_a[31]),
    .O(\clz32_instance/clz16_high/zh [1])
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \isqrt_ready_pipe/Mshreg_out_0  (
    .A0(N1),
    .A1(N1),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(new_data_IBUF_1047),
    .Q(\isqrt_ready_pipe/Mshreg_out_0_1020 ),
    .Q15(\NLW_isqrt_ready_pipe/Mshreg_out_0_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \isqrt_ready_pipe/out_0  (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(\isqrt_ready_pipe/Mshreg_out_0_1020 ),
    .O(\isqrt_ready_pipe/out [0]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_stage4_in_y_31 (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_31_IBUF_1281),
    .Q(Mshreg_stage4_in_y_31_130),
    .Q15(NLW_Mshreg_stage4_in_y_31_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage4_in_y_31 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_stage4_in_y_31_130),
    .O(stage4_in_y[31]),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_stage4_in_lookup_exact (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(stage1_out_a_div_2_cmp_eq0000_inv1),
    .Q(Mshreg_stage4_in_lookup_exact_129),
    .Q15(NLW_Mshreg_stage4_in_lookup_exact_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  stage4_in_lookup_exact (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_stage4_in_lookup_exact_129),
    .O(stage4_in_lookup_exact_1358),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_0_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_0_IBUF_1257),
    .Q(Mshreg_r_0_BRB3_98),
    .Q15(NLW_Mshreg_r_0_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_0_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_0_BRB3_98),
    .O(r_0_BRB3_1085),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_1_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_1_IBUF_1268),
    .Q(Mshreg_r_1_BRB3_109),
    .Q15(NLW_Mshreg_r_1_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_1_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_1_BRB3_109),
    .O(r_1_BRB3_1118),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_2_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_2_IBUF_1279),
    .Q(Mshreg_r_2_BRB3_120),
    .Q15(NLW_Mshreg_r_2_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_2_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_2_BRB3_120),
    .O(r_2_BRB3_1151),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_3_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_3_IBUF_1282),
    .Q(Mshreg_r_3_BRB3_122),
    .Q15(NLW_Mshreg_r_3_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_3_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_3_BRB3_122),
    .O(r_3_BRB3_1158),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_4_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_4_IBUF_1283),
    .Q(Mshreg_r_4_BRB3_123),
    .Q15(NLW_Mshreg_r_4_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_4_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_4_BRB3_123),
    .O(r_4_BRB3_1161),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_5_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_5_IBUF_1284),
    .Q(Mshreg_r_5_BRB3_124),
    .Q15(NLW_Mshreg_r_5_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_5_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_5_BRB3_124),
    .O(r_5_BRB3_1164),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_6_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_6_IBUF_1285),
    .Q(Mshreg_r_6_BRB3_125),
    .Q15(NLW_Mshreg_r_6_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_6_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_6_BRB3_125),
    .O(r_6_BRB3_1167),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_7_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_7_IBUF_1286),
    .Q(Mshreg_r_7_BRB3_126),
    .Q15(NLW_Mshreg_r_7_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_7_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_7_BRB3_126),
    .O(r_7_BRB3_1170),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_8_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_8_IBUF_1287),
    .Q(Mshreg_r_8_BRB3_127),
    .Q15(NLW_Mshreg_r_8_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_8_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_8_BRB3_127),
    .O(r_8_BRB3_1173),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_9_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_9_IBUF_1288),
    .Q(Mshreg_r_9_BRB3_128),
    .Q15(NLW_Mshreg_r_9_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_9_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_9_BRB3_128),
    .O(r_9_BRB3_1176),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_10_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_10_IBUF_1258),
    .Q(Mshreg_r_10_BRB3_99),
    .Q15(NLW_Mshreg_r_10_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_10_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_10_BRB3_99),
    .O(r_10_BRB3_1089),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_11_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_11_IBUF_1259),
    .Q(Mshreg_r_11_BRB3_100),
    .Q15(NLW_Mshreg_r_11_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_11_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_11_BRB3_100),
    .O(r_11_BRB3_1092),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_12_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_12_IBUF_1260),
    .Q(Mshreg_r_12_BRB3_101),
    .Q15(NLW_Mshreg_r_12_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_12_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_12_BRB3_101),
    .O(r_12_BRB3_1095),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_13_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_13_IBUF_1261),
    .Q(Mshreg_r_13_BRB3_102),
    .Q15(NLW_Mshreg_r_13_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_13_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_13_BRB3_102),
    .O(r_13_BRB3_1098),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_16_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_16_IBUF_1264),
    .Q(Mshreg_r_16_BRB3_105),
    .Q15(NLW_Mshreg_r_16_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_16_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_16_BRB3_105),
    .O(r_16_BRB3_1107),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_14_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_14_IBUF_1262),
    .Q(Mshreg_r_14_BRB3_103),
    .Q15(NLW_Mshreg_r_14_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_14_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_14_BRB3_103),
    .O(r_14_BRB3_1101),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_15_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_15_IBUF_1263),
    .Q(Mshreg_r_15_BRB3_104),
    .Q15(NLW_Mshreg_r_15_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_15_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_15_BRB3_104),
    .O(r_15_BRB3_1104),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_17_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_17_IBUF_1265),
    .Q(Mshreg_r_17_BRB3_106),
    .Q15(NLW_Mshreg_r_17_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_17_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_17_BRB3_106),
    .O(r_17_BRB3_1110),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_18_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_18_IBUF_1266),
    .Q(Mshreg_r_18_BRB3_107),
    .Q15(NLW_Mshreg_r_18_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_18_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_18_BRB3_107),
    .O(r_18_BRB3_1113),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_19_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_19_IBUF_1267),
    .Q(Mshreg_r_19_BRB3_108),
    .Q15(NLW_Mshreg_r_19_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_19_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_19_BRB3_108),
    .O(r_19_BRB3_1116),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_20_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_20_IBUF_1269),
    .Q(Mshreg_r_20_BRB3_110),
    .Q15(NLW_Mshreg_r_20_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_20_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_20_BRB3_110),
    .O(r_20_BRB3_1122),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_21_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_21_IBUF_1270),
    .Q(Mshreg_r_21_BRB3_111),
    .Q15(NLW_Mshreg_r_21_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_21_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_21_BRB3_111),
    .O(r_21_BRB3_1125),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_22_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_22_IBUF_1271),
    .Q(Mshreg_r_22_BRB3_112),
    .Q15(NLW_Mshreg_r_22_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_22_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_22_BRB3_112),
    .O(r_22_BRB3_1128),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_23_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_23_IBUF_1272),
    .Q(Mshreg_r_23_BRB3_113),
    .Q15(NLW_Mshreg_r_23_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_23_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_23_BRB3_113),
    .O(r_23_BRB3_1131),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_24_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_24_IBUF_1273),
    .Q(Mshreg_r_24_BRB3_114),
    .Q15(NLW_Mshreg_r_24_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_24_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_24_BRB3_114),
    .O(r_24_BRB3_1134),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_25_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_25_IBUF_1274),
    .Q(Mshreg_r_25_BRB3_115),
    .Q15(NLW_Mshreg_r_25_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_25_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_25_BRB3_115),
    .O(r_25_BRB3_1137),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_26_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_26_IBUF_1275),
    .Q(Mshreg_r_26_BRB3_116),
    .Q15(NLW_Mshreg_r_26_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_26_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_26_BRB3_116),
    .O(r_26_BRB3_1140),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_27_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_27_IBUF_1276),
    .Q(Mshreg_r_27_BRB3_117),
    .Q15(NLW_Mshreg_r_27_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_27_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_27_BRB3_117),
    .O(r_27_BRB3_1143),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_28_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_28_IBUF_1277),
    .Q(Mshreg_r_28_BRB3_118),
    .Q15(NLW_Mshreg_r_28_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_28_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_28_BRB3_118),
    .O(r_28_BRB3_1146),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_29_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_29_IBUF_1278),
    .Q(Mshreg_r_29_BRB3_119),
    .Q15(NLW_Mshreg_r_29_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_29_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_29_BRB3_119),
    .O(r_29_BRB3_1149),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  Mshreg_r_30_BRB3 (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(N1),
    .CLK(clk_BUFGP),
    .D(rom_dout_30_IBUF_1280),
    .Q(Mshreg_r_30_BRB3_121),
    .Q15(NLW_Mshreg_r_30_BRB3_Q15_UNCONNECTED)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_30_BRB3 (
    .CLK(clk_BUFGP),
    .CE(N1),
    .I(Mshreg_r_30_BRB3_121),
    .O(r_30_BRB3_1155),
    .SET(GND),
    .RST(GND)
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
  X_IPAD   clk_670 (
    .PAD(clk)
  );
  X_IPAD   new_data_671 (
    .PAD(new_data)
  );
  X_OPAD   output_valid_672 (
    .PAD(output_valid)
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
  X_OPAD   \rom_addr<0>  (
    .PAD(rom_addr[0])
  );
  X_OPAD   \rom_addr<10>  (
    .PAD(rom_addr[10])
  );
  X_OPAD   \rom_addr<11>  (
    .PAD(rom_addr[11])
  );
  X_OPAD   \rom_addr<1>  (
    .PAD(rom_addr[1])
  );
  X_OPAD   \rom_addr<2>  (
    .PAD(rom_addr[2])
  );
  X_OPAD   \rom_addr<3>  (
    .PAD(rom_addr[3])
  );
  X_OPAD   \rom_addr<4>  (
    .PAD(rom_addr[4])
  );
  X_OPAD   \rom_addr<5>  (
    .PAD(rom_addr[5])
  );
  X_OPAD   \rom_addr<6>  (
    .PAD(rom_addr[6])
  );
  X_OPAD   \rom_addr<7>  (
    .PAD(rom_addr[7])
  );
  X_OPAD   \rom_addr<8>  (
    .PAD(rom_addr[8])
  );
  X_OPAD   \rom_addr<9>  (
    .PAD(rom_addr[9])
  );
  X_IPAD   \rom_dout<0>  (
    .PAD(rom_dout[0])
  );
  X_IPAD   \rom_dout<10>  (
    .PAD(rom_dout[10])
  );
  X_IPAD   \rom_dout<11>  (
    .PAD(rom_dout[11])
  );
  X_IPAD   \rom_dout<12>  (
    .PAD(rom_dout[12])
  );
  X_IPAD   \rom_dout<13>  (
    .PAD(rom_dout[13])
  );
  X_IPAD   \rom_dout<14>  (
    .PAD(rom_dout[14])
  );
  X_IPAD   \rom_dout<15>  (
    .PAD(rom_dout[15])
  );
  X_IPAD   \rom_dout<16>  (
    .PAD(rom_dout[16])
  );
  X_IPAD   \rom_dout<17>  (
    .PAD(rom_dout[17])
  );
  X_IPAD   \rom_dout<18>  (
    .PAD(rom_dout[18])
  );
  X_IPAD   \rom_dout<19>  (
    .PAD(rom_dout[19])
  );
  X_IPAD   \rom_dout<1>  (
    .PAD(rom_dout[1])
  );
  X_IPAD   \rom_dout<20>  (
    .PAD(rom_dout[20])
  );
  X_IPAD   \rom_dout<21>  (
    .PAD(rom_dout[21])
  );
  X_IPAD   \rom_dout<22>  (
    .PAD(rom_dout[22])
  );
  X_IPAD   \rom_dout<23>  (
    .PAD(rom_dout[23])
  );
  X_IPAD   \rom_dout<24>  (
    .PAD(rom_dout[24])
  );
  X_IPAD   \rom_dout<25>  (
    .PAD(rom_dout[25])
  );
  X_IPAD   \rom_dout<26>  (
    .PAD(rom_dout[26])
  );
  X_IPAD   \rom_dout<27>  (
    .PAD(rom_dout[27])
  );
  X_IPAD   \rom_dout<28>  (
    .PAD(rom_dout[28])
  );
  X_IPAD   \rom_dout<29>  (
    .PAD(rom_dout[29])
  );
  X_IPAD   \rom_dout<2>  (
    .PAD(rom_dout[2])
  );
  X_IPAD   \rom_dout<30>  (
    .PAD(rom_dout[30])
  );
  X_IPAD   \rom_dout<31>  (
    .PAD(rom_dout[31])
  );
  X_IPAD   \rom_dout<3>  (
    .PAD(rom_dout[3])
  );
  X_IPAD   \rom_dout<4>  (
    .PAD(rom_dout[4])
  );
  X_IPAD   \rom_dout<5>  (
    .PAD(rom_dout[5])
  );
  X_IPAD   \rom_dout<6>  (
    .PAD(rom_dout[6])
  );
  X_IPAD   \rom_dout<7>  (
    .PAD(rom_dout[7])
  );
  X_IPAD   \rom_dout<8>  (
    .PAD(rom_dout[8])
  );
  X_IPAD   \rom_dout<9>  (
    .PAD(rom_dout[9])
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   output_valid_OBUF (
    .I(\isqrt_ready_pipe/out [0]),
    .O(output_valid)
  );
  X_OBUF   r_0_OBUF (
    .I(r_0),
    .O(r[0])
  );
  X_OBUF   r_10_OBUF (
    .I(r_10),
    .O(r[10])
  );
  X_OBUF   r_11_OBUF (
    .I(r_11),
    .O(r[11])
  );
  X_OBUF   r_12_OBUF (
    .I(r_12),
    .O(r[12])
  );
  X_OBUF   r_13_OBUF (
    .I(r_13),
    .O(r[13])
  );
  X_OBUF   r_14_OBUF (
    .I(r_14),
    .O(r[14])
  );
  X_OBUF   r_15_OBUF (
    .I(r_15),
    .O(r[15])
  );
  X_OBUF   r_16_OBUF (
    .I(r_16),
    .O(r[16])
  );
  X_OBUF   r_17_OBUF (
    .I(r_17),
    .O(r[17])
  );
  X_OBUF   r_18_OBUF (
    .I(r_18),
    .O(r[18])
  );
  X_OBUF   r_19_OBUF (
    .I(r_19),
    .O(r[19])
  );
  X_OBUF   r_1_OBUF (
    .I(r_1),
    .O(r[1])
  );
  X_OBUF   r_20_OBUF (
    .I(r_20),
    .O(r[20])
  );
  X_OBUF   r_21_OBUF (
    .I(r_21),
    .O(r[21])
  );
  X_OBUF   r_22_OBUF (
    .I(r_22),
    .O(r[22])
  );
  X_OBUF   r_23_OBUF (
    .I(r_23),
    .O(r[23])
  );
  X_OBUF   r_24_OBUF (
    .I(r_24),
    .O(r[24])
  );
  X_OBUF   r_25_OBUF (
    .I(r_25),
    .O(r[25])
  );
  X_OBUF   r_26_OBUF (
    .I(r_26),
    .O(r[26])
  );
  X_OBUF   r_27_OBUF (
    .I(r_27),
    .O(r[27])
  );
  X_OBUF   r_28_OBUF (
    .I(r_28),
    .O(r[28])
  );
  X_OBUF   r_29_OBUF (
    .I(r_29),
    .O(r[29])
  );
  X_OBUF   r_2_OBUF (
    .I(r_2),
    .O(r[2])
  );
  X_OBUF   r_30_OBUF (
    .I(r_30),
    .O(r[30])
  );
  X_OBUF   r_31_OBUF (
    .I(r_31_1156),
    .O(r[31])
  );
  X_OBUF   r_3_OBUF (
    .I(r_3),
    .O(r[3])
  );
  X_OBUF   r_4_OBUF (
    .I(r_4),
    .O(r[4])
  );
  X_OBUF   r_5_OBUF (
    .I(r_5),
    .O(r[5])
  );
  X_OBUF   r_6_OBUF (
    .I(r_6),
    .O(r[6])
  );
  X_OBUF   r_7_OBUF (
    .I(r_7),
    .O(r[7])
  );
  X_OBUF   r_8_OBUF (
    .I(r_8),
    .O(r[8])
  );
  X_OBUF   r_9_OBUF (
    .I(r_9),
    .O(r[9])
  );
  X_OBUF   rom_addr_0_OBUF (
    .I(rom_addr_0_OBUF_1189),
    .O(rom_addr[0])
  );
  X_OBUF   rom_addr_10_OBUF (
    .I(rom_addr_10_OBUF_1190),
    .O(rom_addr[10])
  );
  X_OBUF   rom_addr_11_OBUF (
    .I(rom_addr_11_OBUF_1191),
    .O(rom_addr[11])
  );
  X_OBUF   rom_addr_1_OBUF (
    .I(rom_addr_1_OBUF_1192),
    .O(rom_addr[1])
  );
  X_OBUF   rom_addr_2_OBUF (
    .I(rom_addr_2_OBUF_1193),
    .O(rom_addr[2])
  );
  X_OBUF   rom_addr_3_OBUF (
    .I(rom_addr_3_OBUF_1194),
    .O(rom_addr[3])
  );
  X_OBUF   rom_addr_4_OBUF (
    .I(rom_addr_4_OBUF_1195),
    .O(rom_addr[4])
  );
  X_OBUF   rom_addr_5_OBUF (
    .I(rom_addr_5_OBUF_1196),
    .O(rom_addr[5])
  );
  X_OBUF   rom_addr_6_OBUF (
    .I(rom_addr_6_OBUF_1197),
    .O(rom_addr[6])
  );
  X_OBUF   rom_addr_7_OBUF (
    .I(rom_addr_7_OBUF_1198),
    .O(rom_addr[7])
  );
  X_OBUF   rom_addr_8_OBUF (
    .I(rom_addr_8_OBUF_1199),
    .O(rom_addr[8])
  );
  X_OBUF   rom_addr_9_OBUF (
    .I(rom_addr_9_OBUF_1200),
    .O(rom_addr[9])
  );
  X_ONE   NlwBlock_fixed_isqrt_pipeline_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_fixed_isqrt_pipeline_GND (
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

