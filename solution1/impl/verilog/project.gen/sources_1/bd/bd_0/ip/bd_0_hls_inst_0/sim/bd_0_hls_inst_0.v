// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:test_hmac_sha256:1.0
// IP Revision: 2114313740

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  ap_clk,
  ap_rst,
  ap_done,
  ap_idle,
  ap_ready,
  ap_start,
  keyStrm_dout,
  keyStrm_empty_n,
  keyStrm_read,
  msgStrm_dout,
  msgStrm_empty_n,
  msgStrm_read,
  lenStrm_dout,
  lenStrm_empty_n,
  lenStrm_read,
  eLenStrm_dout,
  eLenStrm_empty_n,
  eLenStrm_read,
  hshStrm_din,
  hshStrm_full_n,
  hshStrm_write,
  eHshStrm_din,
  eHshStrm_full_n,
  eHshStrm_write
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
(* X_INTERFACE_MODE = "slave" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_DATA" *)
(* X_INTERFACE_MODE = "master" *)
input wire [31 : 0] keyStrm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm EMPTY_N" *)
input wire keyStrm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_EN" *)
output wire keyStrm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_DATA" *)
(* X_INTERFACE_MODE = "master" *)
input wire [31 : 0] msgStrm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm EMPTY_N" *)
input wire msgStrm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_EN" *)
output wire msgStrm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_DATA" *)
(* X_INTERFACE_MODE = "master" *)
input wire [63 : 0] lenStrm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm EMPTY_N" *)
input wire lenStrm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_EN" *)
output wire lenStrm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_DATA" *)
(* X_INTERFACE_MODE = "master" *)
input wire eLenStrm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm EMPTY_N" *)
input wire eLenStrm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_EN" *)
output wire eLenStrm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_DATA" *)
(* X_INTERFACE_MODE = "master" *)
output wire [255 : 0] hshStrm_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm FULL_N" *)
input wire hshStrm_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_EN" *)
output wire hshStrm_write;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_DATA" *)
(* X_INTERFACE_MODE = "master" *)
output wire eHshStrm_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm FULL_N" *)
input wire eHshStrm_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_EN" *)
output wire eHshStrm_write;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  test_hmac_sha256 inst (
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .ap_start(ap_start),
    .keyStrm_dout(keyStrm_dout),
    .keyStrm_empty_n(keyStrm_empty_n),
    .keyStrm_read(keyStrm_read),
    .msgStrm_dout(msgStrm_dout),
    .msgStrm_empty_n(msgStrm_empty_n),
    .msgStrm_read(msgStrm_read),
    .lenStrm_dout(lenStrm_dout),
    .lenStrm_empty_n(lenStrm_empty_n),
    .lenStrm_read(lenStrm_read),
    .eLenStrm_dout(eLenStrm_dout),
    .eLenStrm_empty_n(eLenStrm_empty_n),
    .eLenStrm_read(eLenStrm_read),
    .hshStrm_din(hshStrm_din),
    .hshStrm_full_n(hshStrm_full_n),
    .hshStrm_write(hshStrm_write),
    .eHshStrm_din(eHshStrm_din),
    .eHshStrm_full_n(eHshStrm_full_n),
    .eHshStrm_write(eHshStrm_write)
  );
endmodule
