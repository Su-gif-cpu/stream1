// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Oct 21 20:24:09 2025
// Host        : LAPTOP-H2R0E34P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,test_hmac_sha256,{}" *) (* CORE_GENERATION_INFO = "bd_0_hls_inst_0,test_hmac_sha256,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=test_hmac_sha256,x_ipVersion=1.0,x_ipCoreRevision=2114313740,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "test_hmac_sha256,Vivado 2024.2" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst, ap_done, ap_idle, ap_ready, 
  ap_start, keyStrm_dout, keyStrm_empty_n, keyStrm_read, msgStrm_dout, msgStrm_empty_n, 
  msgStrm_read, lenStrm_dout, lenStrm_empty_n, lenStrm_read, eLenStrm_dout, eLenStrm_empty_n, 
  eLenStrm_read, hshStrm_din, hshStrm_full_n, hshStrm_write, eHshStrm_din, eHshStrm_full_n, 
  eHshStrm_write)
/* synthesis syn_black_box black_box_pad_pin="ap_rst,ap_done,ap_idle,ap_ready,ap_start,keyStrm_dout[31:0],keyStrm_empty_n,keyStrm_read,msgStrm_dout[31:0],msgStrm_empty_n,msgStrm_read,lenStrm_dout[63:0],lenStrm_empty_n,lenStrm_read,eLenStrm_dout,eLenStrm_empty_n,eLenStrm_read,hshStrm_din[255:0],hshStrm_full_n,hshStrm_write,eHshStrm_din,eHshStrm_full_n,eHshStrm_write" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "slave" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [31:0]keyStrm_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm EMPTY_N" *) input keyStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_EN" *) output keyStrm_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [31:0]msgStrm_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm EMPTY_N" *) input msgStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_EN" *) output msgStrm_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [63:0]lenStrm_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm EMPTY_N" *) input lenStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_EN" *) output lenStrm_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input eLenStrm_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm EMPTY_N" *) input eLenStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_EN" *) output eLenStrm_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_DATA" *) (* X_INTERFACE_MODE = "master" *) output [255:0]hshStrm_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm FULL_N" *) input hshStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_EN" *) output hshStrm_write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_DATA" *) (* X_INTERFACE_MODE = "master" *) output eHshStrm_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm FULL_N" *) input eHshStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_EN" *) output eHshStrm_write;
endmodule
