//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Oct 21 20:21:24 2025
//Host        : LAPTOP-H2R0E34P running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "Slave" *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input eHshStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_DATA" *) output eHshStrm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_EN" *) output eHshStrm_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input eLenStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_DATA" *) input eLenStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_EN" *) output eLenStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input hshStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_DATA" *) output [255:0]hshStrm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_EN" *) output hshStrm_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input keyStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_DATA" *) input [31:0]keyStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_EN" *) output keyStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input lenStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_DATA" *) input [63:0]lenStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_EN" *) output lenStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input msgStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_DATA" *) input [31:0]msgStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_EN" *) output msgStrm_rd_en;

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

  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk),
        .ap_done(ap_ctrl_done),
        .ap_idle(ap_ctrl_idle),
        .ap_ready(ap_ctrl_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_ctrl_start),
        .eHshStrm_din(eHshStrm_wr_data),
        .eHshStrm_full_n(eHshStrm_full_n),
        .eHshStrm_write(eHshStrm_wr_en),
        .eLenStrm_dout(eLenStrm_rd_data),
        .eLenStrm_empty_n(eLenStrm_empty_n),
        .eLenStrm_read(eLenStrm_rd_en),
        .hshStrm_din(hshStrm_wr_data),
        .hshStrm_full_n(hshStrm_full_n),
        .hshStrm_write(hshStrm_wr_en),
        .keyStrm_dout(keyStrm_rd_data),
        .keyStrm_empty_n(keyStrm_empty_n),
        .keyStrm_read(keyStrm_rd_en),
        .lenStrm_dout(lenStrm_rd_data),
        .lenStrm_empty_n(lenStrm_empty_n),
        .lenStrm_read(lenStrm_rd_en),
        .msgStrm_dout(msgStrm_rd_data),
        .msgStrm_empty_n(msgStrm_empty_n),
        .msgStrm_read(msgStrm_rd_en));
endmodule
