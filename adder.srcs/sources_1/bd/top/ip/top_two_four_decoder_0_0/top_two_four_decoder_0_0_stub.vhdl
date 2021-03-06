-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 19:33:45 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_two_four_decoder_0_0/top_two_four_decoder_0_0_stub.vhdl
-- Design      : top_two_four_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_two_four_decoder_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC
  );

end top_two_four_decoder_0_0;

architecture stub of top_two_four_decoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[1:0],Y0,Y1,Y2,Y3";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "two_four_decoder,Vivado 2016.3";
begin
end;
