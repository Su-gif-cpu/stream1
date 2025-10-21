// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  ap_clk,
  ap_rst,
  ap_ctrl_done,
  ap_ctrl_idle,
  ap_ctrl_ready,
  ap_ctrl_start,
  eHshStrm_wr_data,
  eHshStrm_full_n,
  eHshStrm_wr_en,
  eLenStrm_rd_data,
  eLenStrm_empty_n,
  eLenStrm_rd_en,
  hshStrm_wr_data,
  hshStrm_full_n,
  hshStrm_wr_en,
  keyStrm_rd_data,
  keyStrm_empty_n,
  keyStrm_rd_en,
  lenStrm_rd_data,
  lenStrm_empty_n,
  lenStrm_rd_en,
  msgStrm_rd_data,
  msgStrm_empty_n,
  msgStrm_rd_en
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_RESET ap_rst, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
  (* X_INTERFACE_MODE = "slave ap_ctrl" *)
  output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
  output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
  output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
  input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_DATA" *)
  (* X_INTERFACE_MODE = "master eHshStrm" *)
  output eHshStrm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm FULL_N" *)
  input eHshStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_EN" *)
  output eHshStrm_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_DATA" *)
  (* X_INTERFACE_MODE = "master eLenStrm" *)
  input eLenStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm EMPTY_N" *)
  input eLenStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_EN" *)
  output eLenStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_DATA" *)
  (* X_INTERFACE_MODE = "master hshStrm" *)
  output [255:0]hshStrm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm FULL_N" *)
  input hshStrm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_EN" *)
  output hshStrm_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_DATA" *)
  (* X_INTERFACE_MODE = "master keyStrm" *)
  input [31:0]keyStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm EMPTY_N" *)
  input keyStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_EN" *)
  output keyStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_DATA" *)
  (* X_INTERFACE_MODE = "master lenStrm" *)
  input [63:0]lenStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm EMPTY_N" *)
  input lenStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_EN" *)
  output lenStrm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_DATA" *)
  (* X_INTERFACE_MODE = "master msgStrm" *)
  input [31:0]msgStrm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm EMPTY_N" *)
  input msgStrm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_EN" *)
  output msgStrm_rd_en;

  // stub module has no contents

endmodule
