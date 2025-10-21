//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Oct 21 20:21:24 2025
//Host        : LAPTOP-H2R0E34P running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    eHshStrm_full_n,
    eHshStrm_wr_data,
    eHshStrm_wr_en,
    eLenStrm_empty_n,
    eLenStrm_rd_data,
    eLenStrm_rd_en,
    hshStrm_full_n,
    hshStrm_wr_data,
    hshStrm_wr_en,
    keyStrm_empty_n,
    keyStrm_rd_data,
    keyStrm_rd_en,
    lenStrm_empty_n,
    lenStrm_rd_data,
    lenStrm_rd_en,
    msgStrm_empty_n,
    msgStrm_rd_data,
    msgStrm_rd_en);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input eHshStrm_full_n;
  output eHshStrm_wr_data;
  output eHshStrm_wr_en;
  input eLenStrm_empty_n;
  input eLenStrm_rd_data;
  output eLenStrm_rd_en;
  input hshStrm_full_n;
  output [255:0]hshStrm_wr_data;
  output hshStrm_wr_en;
  input keyStrm_empty_n;
  input [31:0]keyStrm_rd_data;
  output keyStrm_rd_en;
  input lenStrm_empty_n;
  input [63:0]lenStrm_rd_data;
  output lenStrm_rd_en;
  input msgStrm_empty_n;
  input [31:0]msgStrm_rd_data;
  output msgStrm_rd_en;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire eHshStrm_full_n;
  wire eHshStrm_wr_data;
  wire eHshStrm_wr_en;
  wire eLenStrm_empty_n;
  wire eLenStrm_rd_data;
  wire eLenStrm_rd_en;
  wire hshStrm_full_n;
  wire [255:0]hshStrm_wr_data;
  wire hshStrm_wr_en;
  wire keyStrm_empty_n;
  wire [31:0]keyStrm_rd_data;
  wire keyStrm_rd_en;
  wire lenStrm_empty_n;
  wire [63:0]lenStrm_rd_data;
  wire lenStrm_rd_en;
  wire msgStrm_empty_n;
  wire [31:0]msgStrm_rd_data;
  wire msgStrm_rd_en;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .eHshStrm_full_n(eHshStrm_full_n),
        .eHshStrm_wr_data(eHshStrm_wr_data),
        .eHshStrm_wr_en(eHshStrm_wr_en),
        .eLenStrm_empty_n(eLenStrm_empty_n),
        .eLenStrm_rd_data(eLenStrm_rd_data),
        .eLenStrm_rd_en(eLenStrm_rd_en),
        .hshStrm_full_n(hshStrm_full_n),
        .hshStrm_wr_data(hshStrm_wr_data),
        .hshStrm_wr_en(hshStrm_wr_en),
        .keyStrm_empty_n(keyStrm_empty_n),
        .keyStrm_rd_data(keyStrm_rd_data),
        .keyStrm_rd_en(keyStrm_rd_en),
        .lenStrm_empty_n(lenStrm_empty_n),
        .lenStrm_rd_data(lenStrm_rd_data),
        .lenStrm_rd_en(lenStrm_rd_en),
        .msgStrm_empty_n(msgStrm_empty_n),
        .msgStrm_rd_data(msgStrm_rd_data),
        .msgStrm_rd_en(msgStrm_rd_en));
endmodule
