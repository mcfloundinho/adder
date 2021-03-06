-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 19:33:13 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_calculator_0_0_stub.vhdl
-- Design      : top_calculator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    M0 : in STD_LOGIC;
    M1 : in STD_LOGIC;
    N0 : in STD_LOGIC;
    N1 : in STD_LOGIC;
    S0 : out STD_LOGIC;
    S1 : out STD_LOGIC;
    S2 : out STD_LOGIC;
    SGN_M : in STD_LOGIC;
    SGN_N : in STD_LOGIC;
    SGN_S : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M0,M1,N0,N1,S0,S1,S2,SGN_M,SGN_N,SGN_S";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "calculator,Vivado 2016.3";
begin
end;
