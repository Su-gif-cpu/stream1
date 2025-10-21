-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Oct 21 20:24:09 2025
-- Host        : LAPTOP-H2R0E34P running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    keyStrm_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    keyStrm_empty_n : in STD_LOGIC;
    keyStrm_read : out STD_LOGIC;
    msgStrm_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    msgStrm_empty_n : in STD_LOGIC;
    msgStrm_read : out STD_LOGIC;
    lenStrm_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    lenStrm_empty_n : in STD_LOGIC;
    lenStrm_read : out STD_LOGIC;
    eLenStrm_dout : in STD_LOGIC;
    eLenStrm_empty_n : in STD_LOGIC;
    eLenStrm_read : out STD_LOGIC;
    hshStrm_din : out STD_LOGIC_VECTOR ( 255 downto 0 );
    hshStrm_full_n : in STD_LOGIC;
    hshStrm_write : out STD_LOGIC;
    eHshStrm_din : out STD_LOGIC;
    eHshStrm_full_n : in STD_LOGIC;
    eHshStrm_write : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,test_hmac_sha256,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,test_hmac_sha256,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=test_hmac_sha256,x_ipVersion=1.0,x_ipCoreRevision=2114313740,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_done,ap_idle,ap_ready,ap_start,keyStrm_dout[31:0],keyStrm_empty_n,keyStrm_read,msgStrm_dout[31:0],msgStrm_empty_n,msgStrm_read,lenStrm_dout[63:0],lenStrm_empty_n,lenStrm_read,eLenStrm_dout,eLenStrm_empty_n,eLenStrm_read,hshStrm_din[255:0],hshStrm_full_n,hshStrm_write,eHshStrm_din,eHshStrm_full_n,eHshStrm_write";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_MODE of ap_done : signal is "slave";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of keyStrm_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_DATA";
  attribute X_INTERFACE_MODE of keyStrm_dout : signal is "master";
  attribute X_INTERFACE_INFO of keyStrm_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 keyStrm EMPTY_N";
  attribute X_INTERFACE_INFO of keyStrm_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 keyStrm RD_EN";
  attribute X_INTERFACE_INFO of msgStrm_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_DATA";
  attribute X_INTERFACE_MODE of msgStrm_dout : signal is "master";
  attribute X_INTERFACE_INFO of msgStrm_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 msgStrm EMPTY_N";
  attribute X_INTERFACE_INFO of msgStrm_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 msgStrm RD_EN";
  attribute X_INTERFACE_INFO of lenStrm_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_DATA";
  attribute X_INTERFACE_MODE of lenStrm_dout : signal is "master";
  attribute X_INTERFACE_INFO of lenStrm_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 lenStrm EMPTY_N";
  attribute X_INTERFACE_INFO of lenStrm_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 lenStrm RD_EN";
  attribute X_INTERFACE_INFO of eLenStrm_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_DATA";
  attribute X_INTERFACE_MODE of eLenStrm_dout : signal is "master";
  attribute X_INTERFACE_INFO of eLenStrm_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm EMPTY_N";
  attribute X_INTERFACE_INFO of eLenStrm_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 eLenStrm RD_EN";
  attribute X_INTERFACE_INFO of hshStrm_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_DATA";
  attribute X_INTERFACE_MODE of hshStrm_din : signal is "master";
  attribute X_INTERFACE_INFO of hshStrm_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 hshStrm FULL_N";
  attribute X_INTERFACE_INFO of hshStrm_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 hshStrm WR_EN";
  attribute X_INTERFACE_INFO of eHshStrm_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_DATA";
  attribute X_INTERFACE_MODE of eHshStrm_din : signal is "master";
  attribute X_INTERFACE_INFO of eHshStrm_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm FULL_N";
  attribute X_INTERFACE_INFO of eHshStrm_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 eHshStrm WR_EN";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "test_hmac_sha256,Vivado 2024.2";
begin
end;
