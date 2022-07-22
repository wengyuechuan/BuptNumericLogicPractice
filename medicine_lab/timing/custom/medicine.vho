-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 235 06/17/2009 Service Pack 2 SJ Web Edition"

-- DATE "06/09/2022 13:37:30"

-- 
-- Device: Altera EPM7128SLC84-15 Package PLCC84
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, max;
USE IEEE.std_logic_1164.all;
USE max.max_components.all;

ENTITY 	total1 IS
    PORT (
	stop_light : OUT std_logic;
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	max_bottle : IN std_logic_vector(7 DOWNTO 0);
	pnpb : IN std_logic_vector(7 DOWNTO 0);
	work_light : OUT std_logic;
	warn_light : OUT std_logic;
	cur_bot_first : OUT std_logic_vector(7 DOWNTO 0);
	cur_bot_second : OUT std_logic_vector(3 DOWNTO 0);
	cur_pill : OUT std_logic_vector(11 DOWNTO 0)
	);
END total1;

ARCHITECTURE structure OF total1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL ww_stop_light : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_max_bottle : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pnpb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_work_light : std_logic;
SIGNAL ww_warn_light : std_logic;
SIGNAL ww_cur_bot_first : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cur_bot_second : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cur_pill : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|temp[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[8]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[9]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[10]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[11]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[12]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp[13]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|clkout_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~17_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~25_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~33_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~37_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~79_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~108_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~114_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~122_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~128_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~136_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~142_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~150_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count~156_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~145_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~42_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux0~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux3~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[4]~34_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp~169_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[5]~37_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[6]~40_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cb[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cur_bot_m[7]~43_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[8]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|work_light_m~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~15_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[9]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[10]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[11]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|temp~63_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|LessThan0~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[2]~164_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~169_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[3]~171_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|count[1]~177_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux5~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux6~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux1~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux2~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|warn_light_m~30_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan5~2sexpand1bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|cp[0]~135bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|LessThan2~8sexp1bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~30_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~5_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~6_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst6|Mux4~7_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|stop_light_m~7sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|comb~3sexpand2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|comb~3sexpand3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|process_0~9sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~9sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~9sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~43_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~44_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~45_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~46_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~47_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|Equal3~48_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|process_0~12_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst8|process_0~13_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \enable~dataout\ : std_logic;
SIGNAL \inst8|count[3]~169_pexpout\ : std_logic;
SIGNAL \reset~dataout\ : std_logic;
SIGNAL \pnpb[3]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~21_dataout\ : std_logic;
SIGNAL \pnpb[0]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~9sexp1_dataout\ : std_logic;
SIGNAL \inst8|Equal3~9sexp2_dataout\ : std_logic;
SIGNAL \inst8|count~79_dataout\ : std_logic;
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \inst|temp[0]~dataout\ : std_logic;
SIGNAL \inst|temp[1]~dataout\ : std_logic;
SIGNAL \inst|temp[2]~dataout\ : std_logic;
SIGNAL \inst|temp[3]~dataout\ : std_logic;
SIGNAL \inst|temp[8]~dataout\ : std_logic;
SIGNAL \inst|temp[9]~dataout\ : std_logic;
SIGNAL \inst|temp~63_pexpout\ : std_logic;
SIGNAL \inst|temp[4]~dataout\ : std_logic;
SIGNAL \inst|temp[5]~dataout\ : std_logic;
SIGNAL \inst|temp[6]~dataout\ : std_logic;
SIGNAL \inst|temp[7]~dataout\ : std_logic;
SIGNAL \inst|temp[13]~dataout\ : std_logic;
SIGNAL \inst|temp[10]~dataout\ : std_logic;
SIGNAL \inst|temp[11]~dataout\ : std_logic;
SIGNAL \inst|temp[12]~dataout\ : std_logic;
SIGNAL \inst|LessThan0~11_pexpout\ : std_logic;
SIGNAL \inst|clkout~dataout\ : std_logic;
SIGNAL \max_bottle[7]~dataout\ : std_logic;
SIGNAL \max_bottle[6]~dataout\ : std_logic;
SIGNAL \max_bottle[5]~dataout\ : std_logic;
SIGNAL \pnpb[7]~dataout\ : std_logic;
SIGNAL \max_bottle[4]~dataout\ : std_logic;
SIGNAL \max_bottle[3]~dataout\ : std_logic;
SIGNAL \max_bottle[2]~dataout\ : std_logic;
SIGNAL \max_bottle[1]~dataout\ : std_logic;
SIGNAL \max_bottle[0]~dataout\ : std_logic;
SIGNAL \pnpb[6]~dataout\ : std_logic;
SIGNAL \pnpb[5]~dataout\ : std_logic;
SIGNAL \pnpb[4]~dataout\ : std_logic;
SIGNAL \pnpb[2]~dataout\ : std_logic;
SIGNAL \pnpb[1]~dataout\ : std_logic;
SIGNAL \inst8|LessThan5~2sexpand1bal_dataout\ : std_logic;
SIGNAL \inst8|LessThan2~8sexp1bal_dataout\ : std_logic;
SIGNAL \inst8|count[0]~dataout\ : std_logic;
SIGNAL \inst8|count~150_dataout\ : std_logic;
SIGNAL \inst8|Equal3~45_dataout\ : std_logic;
SIGNAL \inst8|Equal3~46_dataout\ : std_logic;
SIGNAL \inst8|count~156_dataout\ : std_logic;
SIGNAL \inst8|count[7]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~37_dataout\ : std_logic;
SIGNAL \inst8|count~136_dataout\ : std_logic;
SIGNAL \inst8|count~142_dataout\ : std_logic;
SIGNAL \inst8|count[6]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~33_dataout\ : std_logic;
SIGNAL \inst8|count~122_dataout\ : std_logic;
SIGNAL \inst8|count~128_dataout\ : std_logic;
SIGNAL \inst8|count[5]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~29_dataout\ : std_logic;
SIGNAL \inst8|count~108_dataout\ : std_logic;
SIGNAL \inst8|count~114_dataout\ : std_logic;
SIGNAL \inst8|count[4]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~25_dataout\ : std_logic;
SIGNAL \inst8|Equal3~43_dataout\ : std_logic;
SIGNAL \inst8|Equal3~44_dataout\ : std_logic;
SIGNAL \inst8|count[2]~164_pexpout\ : std_logic;
SIGNAL \inst8|process_0~9sexp_dataout\ : std_logic;
SIGNAL \inst8|count[2]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~17_dataout\ : std_logic;
SIGNAL \inst8|cb[0]~dataout\ : std_logic;
SIGNAL \inst8|cb[3]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~47_dataout\ : std_logic;
SIGNAL \inst8|Equal3~48_dataout\ : std_logic;
SIGNAL \inst8|cb[1]~dataout\ : std_logic;
SIGNAL \inst8|cb[2]~dataout\ : std_logic;
SIGNAL \inst8|cb[4]~dataout\ : std_logic;
SIGNAL \inst8|cb[5]~dataout\ : std_logic;
SIGNAL \inst8|cb[6]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~42_dataout\ : std_logic;
SIGNAL \inst8|cb[7]~dataout\ : std_logic;
SIGNAL \inst8|warn_light_m~26_pexpout\ : std_logic;
SIGNAL \inst8|warn_light_m~30_pexpout\ : std_logic;
SIGNAL \inst8|warn_light_m~18_dataout\ : std_logic;
SIGNAL \inst8|process_0~12_dataout\ : std_logic;
SIGNAL \inst8|warn_light_m~9_dataout\ : std_logic;
SIGNAL \inst8|stop~9_dataout\ : std_logic;
SIGNAL \inst8|count[3]~171_pexpout\ : std_logic;
SIGNAL \inst8|count[3]~dataout\ : std_logic;
SIGNAL \inst8|count[1]~177_pexpout\ : std_logic;
SIGNAL \inst8|count[1]~dataout\ : std_logic;
SIGNAL \inst8|Equal3~13_dataout\ : std_logic;
SIGNAL \inst8|cp[0]~135bal_dataout\ : std_logic;
SIGNAL \inst8|cp[0]~dataout\ : std_logic;
SIGNAL \inst8|cp[2]~dataout\ : std_logic;
SIGNAL \inst8|cp[3]~dataout\ : std_logic;
SIGNAL \inst8|cp~145_dataout\ : std_logic;
SIGNAL \inst8|cp[1]~dataout\ : std_logic;
SIGNAL \inst6|Mux0~6_dataout\ : std_logic;
SIGNAL \inst6|Mux1~14_pexpout\ : std_logic;
SIGNAL \inst6|Mux1~13_dataout\ : std_logic;
SIGNAL \inst6|Mux5~8_pexpout\ : std_logic;
SIGNAL \inst6|Mux5~6_dataout\ : std_logic;
SIGNAL \inst6|Mux6~11_pexpout\ : std_logic;
SIGNAL \inst6|Mux6~9_dataout\ : std_logic;
SIGNAL \inst6|Mux2~24_pexpout\ : std_logic;
SIGNAL \inst6|Mux2~22_dataout\ : std_logic;
SIGNAL \inst6|Mux4~4_dataout\ : std_logic;
SIGNAL \inst6|Mux4~5_dataout\ : std_logic;
SIGNAL \inst6|Mux4~6_dataout\ : std_logic;
SIGNAL \inst6|Mux4~7_dataout\ : std_logic;
SIGNAL \inst6|Mux4~12_dataout\ : std_logic;
SIGNAL \inst6|Mux3~9_dataout\ : std_logic;
SIGNAL \inst6|Mux4~22_pexpout\ : std_logic;
SIGNAL \inst6|Mux4~20_dataout\ : std_logic;
SIGNAL \inst8|cp[4]~dataout\ : std_logic;
SIGNAL \inst8|cur_bot_m[4]~34_dataout\ : std_logic;
SIGNAL \inst8|cp[6]~dataout\ : std_logic;
SIGNAL \inst8|cp[7]~dataout\ : std_logic;
SIGNAL \inst8|cp~169_dataout\ : std_logic;
SIGNAL \inst8|cp[5]~dataout\ : std_logic;
SIGNAL \inst8|cur_bot_m[5]~37_dataout\ : std_logic;
SIGNAL \inst8|cur_bot_m[6]~40_dataout\ : std_logic;
SIGNAL \inst8|cur_bot_m[7]~43_dataout\ : std_logic;
SIGNAL \inst8|process_0~13_dataout\ : std_logic;
SIGNAL \inst8|warn_light_m~24_dataout\ : std_logic;
SIGNAL \inst8|work_light_m~14_dataout\ : std_logic;
SIGNAL \inst8|cp[8]~dataout\ : std_logic;
SIGNAL \inst8|stop_light_m~7sexpand1_dataout\ : std_logic;
SIGNAL \inst8|comb~3sexpand2_dataout\ : std_logic;
SIGNAL \inst8|comb~3sexpand3_dataout\ : std_logic;
SIGNAL \inst8|stop_light_m~30_pexpout\ : std_logic;
SIGNAL \inst8|stop_light_m~15_dataout\ : std_logic;
SIGNAL \inst8|cp[9]~dataout\ : std_logic;
SIGNAL \inst8|cp[10]~dataout\ : std_logic;
SIGNAL \inst8|cp[11]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[0]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[1]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[2]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[3]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[4]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[5]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[6]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[7]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[8]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[9]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[10]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[11]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[12]~dataout\ : std_logic;
SIGNAL \inst|ALT_INV_temp[13]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~13_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~17_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~21_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~25_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~29_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~33_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~37_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~79_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[0]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[2]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[3]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[1]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~108_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~114_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[4]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~122_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~128_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[5]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~136_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~142_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[6]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~150_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count~156_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_count[7]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[0]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cb[0]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cb[1]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp~145_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal3~42_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[1]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cb[2]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[2]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cb[3]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[3]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cb[4]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp~169_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[5]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[6]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_cp[7]~dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_warn_light_m~18_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_warn_light_m~9_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_stop~9_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_LessThan5~2sexpand1bal_dataout\ : std_logic;
SIGNAL \inst8|ALT_INV_LessThan2~8sexp1bal_dataout\ : std_logic;
SIGNAL \ALT_INV_enable~dataout\ : std_logic;
SIGNAL \ALT_INV_reset~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[7]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[6]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[5]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[4]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[3]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[2]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[1]~dataout\ : std_logic;
SIGNAL \ALT_INV_max_bottle[0]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[7]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[6]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[5]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[4]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[3]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[2]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[1]~dataout\ : std_logic;
SIGNAL \ALT_INV_pnpb[0]~dataout\ : std_logic;

BEGIN

stop_light <= ww_stop_light;
ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_max_bottle <= max_bottle;
ww_pnpb <= pnpb;
work_light <= ww_work_light;
warn_light <= ww_warn_light;
cur_bot_first <= ww_cur_bot_first;
cur_bot_second <= ww_cur_bot_second;
cur_pill <= ww_cur_pill;

\inst|temp[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\);

\inst|temp[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[1]~dataout\);

\inst|temp[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[2]~dataout\);

\inst|temp[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\);

\inst|temp[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[3]~dataout\);

\inst|temp[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\);

\inst|temp[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[4]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[3]~dataout\ & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[2]~dataout\);

\inst|temp[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[4]~dataout\ & NOT \inst|temp[2]~dataout\);

\inst|temp[4]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[1]~dataout\ & NOT \inst|temp[4]~dataout\);

\inst|temp[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[4]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[0]~dataout\ & NOT \inst|temp[4]~dataout\);

\inst|temp[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[4]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[5]~dataout\);

\inst|temp[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[4]~dataout\);

\inst|temp[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[5]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[6]~dataout\);

\inst|temp[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\);

\inst|temp[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[6]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[7]~dataout\);

\inst|temp[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\ & \inst|temp[6]~dataout\);

\inst|temp[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[7]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \inst|temp[0]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & NOT \inst|temp[4]~dataout\ & NOT \inst|temp[5]~dataout\ & NOT \inst|temp[6]~dataout\ & NOT \inst|temp[7]~dataout\ & 
\inst|temp[9]~dataout\ & \inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[12]~dataout\ & \inst|temp[13]~dataout\);

\inst|temp[8]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\ & \inst|temp[6]~dataout\ & \inst|temp[7]~dataout\);

\inst|temp[8]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[8]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[8]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[8]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& \inst|temp[0]~dataout\ & \inst|temp[9]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & NOT \inst|temp[4]~dataout\ & NOT \inst|temp[5]~dataout\ & NOT \inst|temp[6]~dataout\ & NOT 
\inst|temp[7]~dataout\ & \inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[12]~dataout\ & \inst|temp[13]~dataout\);

\inst|temp[9]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\ & \inst|temp[6]~dataout\ & \inst|temp[7]~dataout\
);

\inst|temp[9]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[9]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[9]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[9]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & \inst|temp[0]~dataout\ & \inst|temp[10]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[9]~dataout\ & NOT \inst|temp[4]~dataout\ & NOT \inst|temp[5]~dataout\ & NOT 
\inst|temp[6]~dataout\ & NOT \inst|temp[7]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[12]~dataout\ & \inst|temp[13]~dataout\);

\inst|temp[10]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[9]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\ & \inst|temp[6]~dataout\ & 
\inst|temp[7]~dataout\);

\inst|temp[10]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[10]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[10]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[10]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[11]~dataout\);

\inst|temp[11]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\ & \inst|temp[6]~dataout\ & \inst|temp[7]~dataout\ & \inst|temp[8]~dataout\ & 
\inst|temp[9]~dataout\ & \inst|temp[10]~dataout\);

\inst|temp[11]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[11]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[11]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[11]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|temp[12]~dataout\);

\inst|temp[12]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[4]~dataout\ & \inst|temp[5]~dataout\ & \inst|temp[6]~dataout\ & \inst|temp[7]~dataout\ & \inst|temp[8]~dataout\ & 
\inst|temp[9]~dataout\ & \inst|temp[10]~dataout\ & \inst|temp[11]~dataout\);

\inst|temp[12]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[12]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[12]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[12]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[9]~dataout\ & \inst|temp[10]~dataout\ & \inst|temp[12]~dataout\ & \inst|temp[4]~dataout\ & 
\inst|temp[5]~dataout\ & \inst|temp[6]~dataout\ & \inst|temp[7]~dataout\ & \inst|temp[11]~dataout\);

\inst|temp[13]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & \inst|temp[13]~dataout\ & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[9]~dataout\ & \inst|temp[10]~dataout\ & NOT \inst|temp[12]~dataout\ & NOT 
\inst|temp[4]~dataout\ & NOT \inst|temp[5]~dataout\ & NOT \inst|temp[6]~dataout\ & NOT \inst|temp[7]~dataout\ & NOT \inst|temp[11]~dataout\);

\inst|temp[13]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|temp[13]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp[13]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp[13]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|clkout_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[8]~dataout\ & NOT \inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[13]~dataout\);

\inst|clkout_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[13]~dataout\ & NOT \inst|temp[7]~dataout\);

\inst|clkout_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[4]~dataout\ & NOT \inst|temp[5]~dataout\ & NOT \inst|temp[6]~dataout\ & NOT \inst|temp[3]~dataout\ & NOT \inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[13]~dataout\);

\inst|clkout_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|clkout_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[9]~dataout\ & NOT \inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[13]~dataout\);

\inst|clkout_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|clkout_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|clkout_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clk~dataout\);

\inst|clkout_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|clkout_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|clkout_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[1]~dataout\);

\inst8|Equal3~13_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\);

\inst8|Equal3~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[2]~dataout\);

\inst8|Equal3~17_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[2]~dataout\);

\inst8|Equal3~17_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~17_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~17_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[3]~dataout\);

\inst8|Equal3~21_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[3]~dataout\);

\inst8|Equal3~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[4]~dataout\);

\inst8|Equal3~25_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[4]~dataout\);

\inst8|Equal3~25_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~25_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~25_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[5]~dataout\);

\inst8|Equal3~29_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[5]~dataout\);

\inst8|Equal3~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[6]~dataout\);

\inst8|Equal3~33_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[6]~dataout\);

\inst8|Equal3~33_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~33_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~33_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[7]~dataout\);

\inst8|Equal3~37_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[7]~dataout\);

\inst8|Equal3~37_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~37_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~37_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~9sexp2_dataout\ & \inst8|Equal3~9sexp1_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT 
\inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|count~79_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[0]~dataout\);

\inst8|count~79_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~79_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~79_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|count[0]~dataout\ & 
NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|count~79_dataout\);

\inst8|count[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|count[0]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & \inst8|count~79_dataout\);

\inst8|count[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|process_0~9sexp_dataout\ & NOT \inst8|count[2]~dataout\);

\inst8|count[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[2]~dataout\ & NOT \enable~dataout\);

\inst8|count[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|stop~9_dataout\ & NOT \inst8|count[2]~dataout\);

\inst8|count[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & \inst8|count[1]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[2]~dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT 
\max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \inst8|count[3]~dataout\ & \enable~dataout\);

\inst8|count[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|Equal3~44_dataout\ & \inst8|Equal3~43_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT 
\inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\);

\inst8|count[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & \inst8|count[0]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT 
\max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\);

\inst8|count[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[3]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|process_0~9sexp_dataout\ & NOT \inst8|count[1]~dataout\);

\inst8|count[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & \inst8|stop~9_dataout\);

\inst8|count[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \enable~dataout\ & 
\inst8|count[0]~dataout\ & \inst8|count[1]~dataout\ & NOT \inst8|stop~9_dataout\);

\inst8|count[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\);

\inst8|count~108_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\);

\inst8|count~108_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[4]~dataout\);

\inst8|count~108_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~108_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~108_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~46_dataout\ & \inst8|Equal3~45_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & 
NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|count~114_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count~108_dataout\);

\inst8|count~114_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~114_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~114_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|count[4]~dataout\ & 
NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|count~114_dataout\);

\inst8|count[4]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[4]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|count[4]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & \inst8|count~114_dataout\);

\inst8|count[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[4]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[4]~dataout\);

\inst8|count~122_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[4]~dataout\);

\inst8|count~122_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[5]~dataout\);

\inst8|count~122_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~122_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~122_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~46_dataout\ & \inst8|Equal3~45_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & 
NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|count~128_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count~122_dataout\);

\inst8|count~128_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~128_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~128_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|count[5]~dataout\ & 
NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|count~128_dataout\);

\inst8|count[5]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[5]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|count[5]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & \inst8|count~128_dataout\);

\inst8|count[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[5]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[4]~dataout\ & \inst8|count[5]~dataout\);

\inst8|count~136_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[4]~dataout\ & \inst8|count[5]~dataout\);

\inst8|count~136_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[6]~dataout\);

\inst8|count~136_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~136_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~136_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~46_dataout\ & \inst8|Equal3~45_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & 
NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|count~142_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count~136_dataout\);

\inst8|count~142_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~142_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~142_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|count[6]~dataout\ & 
NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|count~142_dataout\);

\inst8|count[6]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[6]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|count[6]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & \inst8|count~142_dataout\);

\inst8|count[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[6]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[4]~dataout\ & \inst8|count[5]~dataout\ & \inst8|count[6]~dataout\);

\inst8|count~150_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[4]~dataout\ & \inst8|count[5]~dataout\ & \inst8|count[6]~dataout\);

\inst8|count~150_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[7]~dataout\);

\inst8|count~150_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~150_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~150_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~46_dataout\ & \inst8|Equal3~45_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & 
NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|count~156_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count~150_dataout\);

\inst8|count~156_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count~156_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count~156_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|count[7]~dataout\ & 
NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|count~156_dataout\);

\inst8|count[7]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[7]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|count[7]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & \inst8|count~156_dataout\);

\inst8|count[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|count[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[7]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|count[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[0]~dataout\);

\inst8|cp[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & \inst8|cp[0]~135bal_dataout\);

\inst8|cp[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[0]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[0]~dataout\);

\inst8|cb[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[0]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|Equal3~9sexp2_dataout\ & \inst8|Equal3~9sexp1_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\
& NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT 
\inst8|Equal3~13_dataout\);

\inst8|cb[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cb[1]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT 
\inst8|Equal3~13_dataout\ & \inst8|cb[0]~dataout\);

\inst8|cb[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & 
\inst8|cb[0]~dataout\ & NOT \inst8|cb[3]~dataout\);

\inst8|cb[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cb[2]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT 
\inst8|Equal3~13_dataout\ & \inst8|cb[0]~dataout\);

\inst8|cb[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cp[1]~dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[3]~dataout\);

\inst8|cp~145_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[2]~dataout\ & NOT \inst8|cp[1]~dataout\ & \inst8|cp[0]~dataout\);

\inst8|cp~145_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[1]~dataout\ & NOT \inst8|cp[0]~dataout\);

\inst8|cp~145_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp~145_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~145_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~9sexp2_dataout\ & \inst8|Equal3~9sexp1_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT 
\inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|Equal3~42_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|Equal3~42_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|Equal3~42_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & \inst8|cp~145_dataout\);

\inst8|cp[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cp[1]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & NOT \inst8|cp~145_dataout\);

\inst8|cp[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|Equal3~9sexp2_dataout\ & \inst8|Equal3~9sexp1_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT 
\inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\);

\inst8|cb[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\);

\inst8|cp[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~9sexp2_dataout\ & 
\inst8|Equal3~9sexp1_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT 
\inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[2]~dataout\);

\inst8|cb[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~9sexp2_dataout\ & 
\inst8|Equal3~9sexp1_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT 
\inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cb[3]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & NOT \inst8|cb[2]~dataout\);

\inst8|cb[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[3]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cp[3]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\);

\inst8|cp[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & 
NOT \inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\);

\inst8|cp[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[3]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \enable~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[3]~dataout\ & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[0]~dataout\);

\inst6|Mux0~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[1]~dataout\ & \inst8|cb[3]~dataout\ & NOT \inst8|cb[2]~dataout\ & NOT \inst8|cb[0]~dataout\ & NOT \enable~dataout\);

\inst6|Mux0~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux0~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux0~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~6_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[0]~dataout\ & \inst8|cb[1]~dataout\ & NOT \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux5~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux5~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[3]~dataout\ & \inst8|count[1]~dataout\ & \enable~dataout\);

\inst6|Mux5~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[1]~dataout\ & \inst8|cb[3]~dataout\ & NOT \enable~dataout\);

\inst6|Mux5~6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[2]~dataout\ & NOT \inst8|count[0]~dataout\ & \inst8|count[1]~dataout\ & \enable~dataout\);

\inst6|Mux5~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux5~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~9_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[0]~dataout\ & \inst8|cb[2]~dataout\ & \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux6~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[1]~dataout\ & \inst8|cb[3]~dataout\ & NOT \enable~dataout\);

\inst6|Mux6~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[0]~dataout\ & NOT \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux6~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[0]~dataout\ & \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux6~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[0]~dataout\ & \inst8|cb[2]~dataout\ & NOT \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux6~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux6~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~13_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[1]~dataout\ & NOT \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux1~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & NOT \inst8|count[3]~dataout\ & NOT \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux1~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[1]~dataout\ & \inst8|cb[3]~dataout\ & NOT \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux1~13_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & \inst8|count[3]~dataout\ & NOT \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux1~13_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[3]~dataout\ & \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux1~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux1~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[0]~dataout\ & NOT \inst8|cb[3]~dataout\ & NOT \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux2~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[2]~dataout\ & \enable~dataout\ & \inst8|count[1]~dataout\);

\inst6|Mux2~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[3]~dataout\ & \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux2~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux2~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[0]~dataout\ & NOT \inst8|count[3]~dataout\ & NOT \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux2~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux2~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~12_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[0]~dataout\ & \inst8|count[2]~dataout\ & NOT \inst8|count[1]~dataout\ & \enable~dataout\ & \inst6|Mux4~7_dataout\ & \inst6|Mux4~6_dataout\ & \inst6|Mux4~5_dataout\ & \inst6|Mux4~4_dataout\);

\inst6|Mux4~12_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[0]~dataout\ & NOT \inst8|cb[2]~dataout\ & NOT \inst8|cb[1]~dataout\ & NOT \inst8|cb[3]~dataout\ & NOT \enable~dataout\ & \inst6|Mux4~7_dataout\ & \inst6|Mux4~6_dataout\ & \inst6|Mux4~5_dataout\ & 
\inst6|Mux4~4_dataout\);

\inst6|Mux4~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[0]~dataout\ & \inst8|cb[2]~dataout\ & NOT \inst8|cb[1]~dataout\ & NOT \enable~dataout\ & \inst6|Mux4~7_dataout\ & \inst6|Mux4~6_dataout\ & \inst6|Mux4~5_dataout\ & \inst6|Mux4~4_dataout\);

\inst6|Mux4~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[0]~dataout\ & NOT \inst8|count[2]~dataout\ & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[3]~dataout\ & \enable~dataout\ & \inst6|Mux4~7_dataout\ & \inst6|Mux4~6_dataout\ & \inst6|Mux4~5_dataout\ & 
\inst6|Mux4~4_dataout\);

\inst6|Mux4~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~12_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst6|Mux4~7_dataout\ & \inst6|Mux4~6_dataout\ & \inst6|Mux4~5_dataout\ & \inst6|Mux4~4_dataout\);

\inst6|Mux4~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux4~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~20_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[2]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux4~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[3]~dataout\ & \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux4~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[3]~dataout\ & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \enable~dataout\);

\inst6|Mux4~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[2]~dataout\ & \inst8|cb[0]~dataout\ & NOT \inst8|cb[3]~dataout\ & NOT \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux4~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & \inst8|count[0]~dataout\ & \enable~dataout\);

\inst6|Mux4~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux4~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux3~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux3~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[0]~dataout\ & NOT \inst8|count[3]~dataout\ & \enable~dataout\ & \inst8|count[1]~dataout\);

\inst6|Mux3~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[2]~dataout\ & NOT \inst8|count[0]~dataout\ & \enable~dataout\ & NOT \inst8|count[1]~dataout\);

\inst6|Mux3~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[0]~dataout\ & NOT \inst8|cb[3]~dataout\ & \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux3~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[2]~dataout\ & NOT \inst8|cb[0]~dataout\ & NOT \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux3~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux3~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux3~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux3~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux3~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux3~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~9sexp2_dataout\ & 
\inst8|Equal3~9sexp1_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT 
\inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\);

\inst8|cb[4]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[4]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~9sexp2_dataout\ & 
\inst8|Equal3~9sexp1_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT 
\inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & NOT \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & NOT \inst8|cb[2]~dataout\);

\inst8|cb[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[4]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\);

\inst8|cp[4]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[4]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\);

\inst8|cp[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[4]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[4]~dataout\ & \enable~dataout\);

\inst8|cur_bot_m[4]~34_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[4]~dataout\ & NOT \enable~dataout\);

\inst8|cur_bot_m[4]~34_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cur_bot_m[4]~34_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[4]~34_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\
& NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & 
\inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[4]~dataout\ & \inst8|cb[2]~dataout\);

\inst8|cb[5]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[5]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\
& NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[4]~dataout\ & NOT \inst8|cb[2]~dataout\);

\inst8|cb[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[5]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~169_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[5]~dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[2]~dataout\);

\inst8|cp~169_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~169_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[2]~dataout\ & NOT \inst8|cp[7]~dataout\);

\inst8|cp~169_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[6]~dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[2]~dataout\);

\inst8|cp~169_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[2]~dataout\);

\inst8|cp~169_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~169_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cp[5]~dataout\);

\inst8|cp~169_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~169_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp~169_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp~169_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|cp[5]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & \inst8|cp~169_dataout\);

\inst8|cp[5]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[5]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cp[5]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & NOT \inst8|cp~169_dataout\);

\inst8|cp[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[5]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[5]~dataout\ & \enable~dataout\);

\inst8|cur_bot_m[5]~37_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[5]~dataout\ & NOT \enable~dataout\);

\inst8|cur_bot_m[5]~37_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cur_bot_m[5]~37_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[5]~37_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\
& NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & 
\inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[4]~dataout\ & \inst8|cb[5]~dataout\ & \inst8|cb[2]~dataout\);

\inst8|cb[6]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[6]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~48_dataout\ & 
\inst8|Equal3~47_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\
& NOT \inst8|Equal3~13_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[4]~dataout\ & \inst8|cb[5]~dataout\ & NOT \inst8|cb[2]~dataout\);

\inst8|cb[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[6]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\);

\inst8|cp[6]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[6]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\);

\inst8|cp[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[6]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[6]~dataout\ & \enable~dataout\);

\inst8|cur_bot_m[6]~40_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[6]~dataout\ & NOT \enable~dataout\);

\inst8|cur_bot_m[6]~40_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cur_bot_m[6]~40_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[6]~40_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & 
\inst8|Equal3~42_dataout\ & \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[4]~dataout\ & \inst8|cb[5]~dataout\ & \inst8|cb[6]~dataout\ & \inst8|cb[2]~dataout\);

\inst8|cb[7]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[7]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & 
\inst8|Equal3~42_dataout\ & NOT \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & \inst8|cb[3]~dataout\ & \inst8|cb[4]~dataout\ & \inst8|cb[5]~dataout\ & \inst8|cb[6]~dataout\ & NOT \inst8|cb[2]~dataout\);

\inst8|cb[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cb[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cb[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cb[7]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cb[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[7]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[6]~dataout\);

\inst8|cp[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|cp[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & NOT \inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[5]~dataout\ & NOT \inst8|cp[6]~dataout\);

\inst8|cp[7]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[7]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[6]~dataout\);

\inst8|cp[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[7]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[7]~dataout\ & \enable~dataout\);

\inst8|cur_bot_m[7]~43_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[7]~dataout\ & NOT \enable~dataout\);

\inst8|cur_bot_m[7]~43_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cur_bot_m[7]~43_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cur_bot_m[7]~43_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~18_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[4]~dataout\ & \max_bottle[4]~dataout\);

\inst8|warn_light_m~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[2]~dataout\ & NOT \inst8|cb[2]~dataout\);

\inst8|warn_light_m~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \max_bottle[3]~dataout\ & \inst8|cb[3]~dataout\);

\inst8|warn_light_m~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[3]~dataout\ & NOT \inst8|cb[3]~dataout\);

\inst8|warn_light_m~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[4]~dataout\ & NOT \max_bottle[4]~dataout\);

\inst8|warn_light_m~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|warn_light_m~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|process_0~12_dataout\ & \enable~dataout\);

\inst8|warn_light_m~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|warn_light_m~18_dataout\ & \enable~dataout\);

\inst8|warn_light_m~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|warn_light_m~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|process_0~13_dataout\ & \inst8|warn_light_m~9_dataout\ & NOT \reset~dataout\);

\inst8|warn_light_m~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|warn_light_m~24_dataout\ & NOT \inst8|warn_light_m~9_dataout\ & NOT \reset~dataout\);

\inst8|warn_light_m~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|process_0~13_dataout\ & \inst8|warn_light_m~24_dataout\ & NOT \reset~dataout\);

\inst8|warn_light_m~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|warn_light_m~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|stop~9_dataout\ & NOT \reset~dataout\);

\inst8|stop~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|warn_light_m~9_dataout\ & NOT \reset~dataout\);

\inst8|stop~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|stop~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[8]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[5]~dataout\ & NOT \inst8|cp[6]~dataout\ & \inst8|cp[7]~dataout\);

\inst8|cp[8]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[7]~dataout\);

\inst8|cp[8]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[8]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[8]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[7]~dataout\);

\inst8|cp[8]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[8]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[8]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[8]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[8]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[8]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|work_light_m~14_dataout\ & \enable~dataout\);

\inst8|work_light_m~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\);

\inst8|work_light_m~14_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\ & \enable~dataout\);

\inst8|work_light_m~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|work_light_m~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|work_light_m~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~15_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[5]~dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~15_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop~9_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~15_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[7]~dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~15_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[6]~dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~15_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \enable~dataout\ & NOT \reset~dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\);

\inst8|stop_light_m~15_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~15_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~15_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~15_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|stop_light_m~15_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~15_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[9]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & \inst8|cp[8]~dataout\);

\inst8|cp[9]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & NOT \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & 
\inst8|cp[8]~dataout\);

\inst8|cp[9]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[9]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[9]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & \inst8|cp[8]~dataout\);

\inst8|cp[9]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[9]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[9]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[9]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[9]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[9]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[10]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & \inst8|cp[8]~dataout\ & 
\inst8|cp[9]~dataout\);

\inst8|cp[10]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & NOT \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & 
\inst8|cp[8]~dataout\ & \inst8|cp[9]~dataout\);

\inst8|cp[10]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[10]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[10]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & \inst8|cp[8]~dataout\ & 
\inst8|cp[9]~dataout\);

\inst8|cp[10]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[10]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[10]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[10]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[10]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[10]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[11]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & \inst8|cp[1]~dataout\ & \inst8|cp[2]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & \inst8|cp[8]~dataout\ & 
\inst8|cp[9]~dataout\ & \inst8|cp[10]~dataout\);

\inst8|cp[11]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & NOT \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & NOT \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & 
\inst8|cp[8]~dataout\ & \inst8|cp[9]~dataout\ & \inst8|cp[10]~dataout\);

\inst8|cp[11]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[11]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[11]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\ & NOT 
\inst8|Equal3~42_dataout\ & \inst8|cp[0]~dataout\ & NOT \inst8|cp[1]~dataout\ & NOT \inst8|cp[2]~dataout\ & \inst8|cp[6]~dataout\ & \inst8|cp[3]~dataout\ & \inst8|cp[4]~dataout\ & \inst8|cp[5]~dataout\ & \inst8|cp[7]~dataout\ & \inst8|cp[8]~dataout\ & 
\inst8|cp[9]~dataout\ & \inst8|cp[10]~dataout\);

\inst8|cp[11]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[11]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[11]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst|clkout~dataout\);

\inst8|cp[11]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[11]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \reset~dataout\);

\inst8|cp[11]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & \inst|temp[0]~dataout\ & \inst|temp[1]~dataout\ & \inst|temp[2]~dataout\ & \inst|temp[3]~dataout\ & \inst|temp[8]~dataout\ & \inst|temp[9]~dataout\ & NOT \inst|temp[5]~dataout\ & NOT \inst|temp[6]~dataout\ & NOT \inst|temp[7]~dataout\ & 
\inst|temp[10]~dataout\ & NOT \inst|temp[11]~dataout\ & NOT \inst|temp[12]~dataout\ & \inst|temp[13]~dataout\);

\inst|temp~63_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[4]~dataout\ & NOT \inst|temp[3]~dataout\);

\inst|temp~63_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|temp~63_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|temp~63_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst|temp[13]~dataout\ & NOT \inst|temp[12]~dataout\);

\inst|LessThan0~11_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst|LessThan0~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst|LessThan0~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]~164_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]~164_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|Equal3~44_dataout\ & \inst8|Equal3~43_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT 
\inst8|stop~9_dataout\ & \enable~dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT 
\inst8|Equal3~13_dataout\);

\inst8|count[2]~164_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & \inst8|count[1]~dataout\ & 
\inst8|count[0]~dataout\ & \inst8|count[2]~dataout\ & NOT \inst8|stop~9_dataout\ & \enable~dataout\);

\inst8|count[2]~164_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[0]~dataout\ & NOT \inst8|count[2]~dataout\);

\inst8|count[2]~164_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[2]~dataout\);

\inst8|count[2]~164_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]~164_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]~164_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]~164_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[2]~164_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[2]~164_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[3]~dataout\ & NOT \enable~dataout\);

\inst8|count[3]~169_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[3]~169_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~169_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~171_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|process_0~9sexp_dataout\ & NOT \inst8|count[3]~dataout\);

\inst8|count[3]~171_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[3]~dataout\ & \inst8|stop~9_dataout\);

\inst8|count[3]~171_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[3]~dataout\);

\inst8|count[3]~171_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[0]~dataout\ & NOT \inst8|count[3]~dataout\);

\inst8|count[3]~171_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[2]~dataout\ & NOT \inst8|count[3]~dataout\);

\inst8|count[3]~171_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~171_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~171_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~171_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[3]~171_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[3]~171_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]~177_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]~177_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\ & \inst8|count[0]~dataout\ & NOT \inst8|count[2]~dataout\ & \inst8|count[3]~dataout\);

\inst8|count[1]~177_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\inst8|Equal3~44_dataout\ & \inst8|Equal3~43_dataout\ & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\ & NOT 
\inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\ & NOT \inst8|stop~9_dataout\ & 
\enable~dataout\);

\inst8|count[1]~177_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \inst8|count[0]~dataout\);

\inst8|count[1]~177_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & NOT \enable~dataout\);

\inst8|count[1]~177_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]~177_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]~177_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]~177_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|count[1]~177_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|count[1]~177_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \enable~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[2]~dataout\);

\inst6|Mux5~8_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux5~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux5~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \enable~dataout\ & \inst8|count[3]~dataout\ & \inst8|count[2]~dataout\);

\inst6|Mux6~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux6~11_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \enable~dataout\ & \inst8|count[3]~dataout\);

\inst6|Mux6~11_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux6~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux6~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[0]~dataout\ & NOT \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux1~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[0]~dataout\ & NOT \inst8|count[3]~dataout\ & \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux1~14_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[1]~dataout\ & NOT \inst8|cb[3]~dataout\ & NOT \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux1~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux1~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux1~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \enable~dataout\ & \inst8|count[1]~dataout\ & \inst8|count[0]~dataout\);

\inst6|Mux2~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[1]~dataout\ & \inst8|cb[0]~dataout\ & NOT \enable~dataout\);

\inst6|Mux2~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[2]~dataout\ & \inst8|cb[1]~dataout\ & NOT \enable~dataout\);

\inst6|Mux2~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux2~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux2~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[3]~dataout\ & \inst8|count[1]~dataout\ & \enable~dataout\);

\inst6|Mux4~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|cb[1]~dataout\ & \inst8|cb[2]~dataout\ & NOT \inst8|cb[0]~dataout\ & NOT \enable~dataout\);

\inst6|Mux4~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|count[1]~dataout\ & \inst8|count[2]~dataout\ & NOT \inst8|count[0]~dataout\ & \enable~dataout\);

\inst6|Mux4~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[3]~dataout\ & \inst8|count[2]~dataout\ & \enable~dataout\);

\inst6|Mux4~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[3]~dataout\ & \inst8|cb[2]~dataout\ & NOT \enable~dataout\);

\inst6|Mux4~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst6|Mux4~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[7]~dataout\);

\inst8|warn_light_m~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[6]~dataout\);

\inst8|warn_light_m~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[5]~dataout\);

\inst8|warn_light_m~26_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|warn_light_m~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~30_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \max_bottle[2]~dataout\ & \inst8|cb[2]~dataout\);

\inst8|warn_light_m~30_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \max_bottle[0]~dataout\ & \inst8|cb[0]~dataout\);

\inst8|warn_light_m~30_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[0]~dataout\ & NOT \inst8|cb[0]~dataout\);

\inst8|warn_light_m~30_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \max_bottle[1]~dataout\ & \inst8|cb[1]~dataout\);

\inst8|warn_light_m~30_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[1]~dataout\ & NOT \inst8|cb[1]~dataout\);

\inst8|warn_light_m~30_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~30_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~30_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~30_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|warn_light_m~30_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|warn_light_m~30_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan5~2sexpand1bal_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \pnpb[0]~dataout\ & NOT \pnpb[1]~dataout\ & NOT \pnpb[2]~dataout\ & NOT \pnpb[3]~dataout\ & NOT \pnpb[4]~dataout\ & NOT \pnpb[5]~dataout\ & NOT \pnpb[6]~dataout\);

\inst8|LessThan5~2sexpand1bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \max_bottle[0]~dataout\ & NOT \max_bottle[1]~dataout\ & NOT \max_bottle[2]~dataout\ & NOT \max_bottle[3]~dataout\ & NOT \max_bottle[4]~dataout\);

\inst8|LessThan5~2sexpand1bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[2]~dataout\ & \max_bottle[3]~dataout\ & \max_bottle[4]~dataout\);

\inst8|LessThan5~2sexpand1bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[1]~dataout\ & \max_bottle[3]~dataout\ & \max_bottle[4]~dataout\);

\inst8|LessThan5~2sexpand1bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \max_bottle[0]~dataout\ & \max_bottle[3]~dataout\ & \max_bottle[4]~dataout\);

\inst8|LessThan5~2sexpand1bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan5~2sexpand1bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan5~2sexpand1bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan5~2sexpand1bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|LessThan5~2sexpand1bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan5~2sexpand1bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \inst8|Equal3~46_dataout\ & \inst8|Equal3~45_dataout\ & NOT \inst8|Equal3~37_dataout\ & NOT \inst8|Equal3~33_dataout\ & NOT \inst8|Equal3~29_dataout\ & NOT \inst8|Equal3~25_dataout\ & NOT \inst8|Equal3~21_dataout\ & 
NOT \inst8|Equal3~17_dataout\ & NOT \inst8|Equal3~13_dataout\);

\inst8|cp[0]~135bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|cp[0]~135bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|cp[0]~135bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan2~8sexp1bal_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[0]~dataout\ & \pnpb[4]~dataout\ & \pnpb[6]~dataout\);

\inst8|LessThan2~8sexp1bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[6]~dataout\ & \pnpb[5]~dataout\);

\inst8|LessThan2~8sexp1bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[4]~dataout\ & \pnpb[3]~dataout\ & \pnpb[6]~dataout\);

\inst8|LessThan2~8sexp1bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[2]~dataout\ & \pnpb[4]~dataout\ & \pnpb[6]~dataout\);

\inst8|LessThan2~8sexp1bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[1]~dataout\ & \pnpb[4]~dataout\ & \pnpb[6]~dataout\);

\inst8|LessThan2~8sexp1bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan2~8sexp1bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan2~8sexp1bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan2~8sexp1bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|LessThan2~8sexp1bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|LessThan2~8sexp1bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[7]~dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~30_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|LessThan5~2sexpand1bal_dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~30_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|comb~3sexpand3_dataout\ & \inst8|comb~3sexpand2_dataout\ & \inst8|stop_light_m~15_dataout\);

\inst8|stop_light_m~30_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\inst8|stop_light_m~30_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst8|stop_light_m~30_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst6|Mux4~4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[1]~dataout\ & \enable~dataout\ & \inst8|count[3]~dataout\);

\inst6|Mux4~5_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|count[2]~dataout\ & \enable~dataout\ & \inst8|count[3]~dataout\);

\inst6|Mux4~6_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[1]~dataout\ & \inst8|cb[3]~dataout\ & NOT \enable~dataout\);

\inst6|Mux4~7_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|cb[2]~dataout\ & \inst8|cb[3]~dataout\ & NOT \enable~dataout\);

\inst8|stop_light_m~7sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \reset~dataout\ & NOT \enable~dataout\);

\inst8|comb~3sexpand2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|stop_light_m~7sexpand1_dataout\ & NOT \enable~dataout\);

\inst8|comb~3sexpand3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|stop_light_m~7sexpand1_dataout\ & \reset~dataout\);

\inst8|process_0~9sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\);

\inst8|Equal3~9sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \pnpb[0]~dataout\ & \inst8|count[0]~dataout\);

\inst8|Equal3~9sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[0]~dataout\ & NOT \inst8|count[0]~dataout\);

\inst8|Equal3~43_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \pnpb[0]~dataout\ & \inst8|count[0]~dataout\);

\inst8|Equal3~44_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[0]~dataout\ & NOT \inst8|count[0]~dataout\);

\inst8|Equal3~45_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \pnpb[0]~dataout\ & \inst8|count[0]~dataout\);

\inst8|Equal3~46_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[0]~dataout\ & NOT \inst8|count[0]~dataout\);

\inst8|Equal3~47_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \pnpb[0]~dataout\ & \inst8|count[0]~dataout\);

\inst8|Equal3~48_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \pnpb[0]~dataout\ & NOT \inst8|count[0]~dataout\);

\inst8|process_0~12_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\);

\inst8|process_0~13_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \inst8|LessThan2~8sexp1bal_dataout\ & \inst8|LessThan5~2sexpand1bal_dataout\ & NOT \pnpb[7]~dataout\ & NOT \max_bottle[5]~dataout\ & NOT \max_bottle[6]~dataout\ & NOT \max_bottle[7]~dataout\);
\inst|ALT_INV_temp[0]~dataout\ <= NOT \inst|temp[0]~dataout\;
\inst|ALT_INV_temp[1]~dataout\ <= NOT \inst|temp[1]~dataout\;
\inst|ALT_INV_temp[2]~dataout\ <= NOT \inst|temp[2]~dataout\;
\inst|ALT_INV_temp[3]~dataout\ <= NOT \inst|temp[3]~dataout\;
\inst|ALT_INV_temp[4]~dataout\ <= NOT \inst|temp[4]~dataout\;
\inst|ALT_INV_temp[5]~dataout\ <= NOT \inst|temp[5]~dataout\;
\inst|ALT_INV_temp[6]~dataout\ <= NOT \inst|temp[6]~dataout\;
\inst|ALT_INV_temp[7]~dataout\ <= NOT \inst|temp[7]~dataout\;
\inst|ALT_INV_temp[8]~dataout\ <= NOT \inst|temp[8]~dataout\;
\inst|ALT_INV_temp[9]~dataout\ <= NOT \inst|temp[9]~dataout\;
\inst|ALT_INV_temp[10]~dataout\ <= NOT \inst|temp[10]~dataout\;
\inst|ALT_INV_temp[11]~dataout\ <= NOT \inst|temp[11]~dataout\;
\inst|ALT_INV_temp[12]~dataout\ <= NOT \inst|temp[12]~dataout\;
\inst|ALT_INV_temp[13]~dataout\ <= NOT \inst|temp[13]~dataout\;
\inst8|ALT_INV_Equal3~13_dataout\ <= NOT \inst8|Equal3~13_dataout\;
\inst8|ALT_INV_Equal3~17_dataout\ <= NOT \inst8|Equal3~17_dataout\;
\inst8|ALT_INV_Equal3~21_dataout\ <= NOT \inst8|Equal3~21_dataout\;
\inst8|ALT_INV_Equal3~25_dataout\ <= NOT \inst8|Equal3~25_dataout\;
\inst8|ALT_INV_Equal3~29_dataout\ <= NOT \inst8|Equal3~29_dataout\;
\inst8|ALT_INV_Equal3~33_dataout\ <= NOT \inst8|Equal3~33_dataout\;
\inst8|ALT_INV_Equal3~37_dataout\ <= NOT \inst8|Equal3~37_dataout\;
\inst8|ALT_INV_count~79_dataout\ <= NOT \inst8|count~79_dataout\;
\inst8|ALT_INV_count[0]~dataout\ <= NOT \inst8|count[0]~dataout\;
\inst8|ALT_INV_count[2]~dataout\ <= NOT \inst8|count[2]~dataout\;
\inst8|ALT_INV_count[3]~dataout\ <= NOT \inst8|count[3]~dataout\;
\inst8|ALT_INV_count[1]~dataout\ <= NOT \inst8|count[1]~dataout\;
\inst8|ALT_INV_count~108_dataout\ <= NOT \inst8|count~108_dataout\;
\inst8|ALT_INV_count~114_dataout\ <= NOT \inst8|count~114_dataout\;
\inst8|ALT_INV_count[4]~dataout\ <= NOT \inst8|count[4]~dataout\;
\inst8|ALT_INV_count~122_dataout\ <= NOT \inst8|count~122_dataout\;
\inst8|ALT_INV_count~128_dataout\ <= NOT \inst8|count~128_dataout\;
\inst8|ALT_INV_count[5]~dataout\ <= NOT \inst8|count[5]~dataout\;
\inst8|ALT_INV_count~136_dataout\ <= NOT \inst8|count~136_dataout\;
\inst8|ALT_INV_count~142_dataout\ <= NOT \inst8|count~142_dataout\;
\inst8|ALT_INV_count[6]~dataout\ <= NOT \inst8|count[6]~dataout\;
\inst8|ALT_INV_count~150_dataout\ <= NOT \inst8|count~150_dataout\;
\inst8|ALT_INV_count~156_dataout\ <= NOT \inst8|count~156_dataout\;
\inst8|ALT_INV_count[7]~dataout\ <= NOT \inst8|count[7]~dataout\;
\inst8|ALT_INV_cp[0]~dataout\ <= NOT \inst8|cp[0]~dataout\;
\inst8|ALT_INV_cb[0]~dataout\ <= NOT \inst8|cb[0]~dataout\;
\inst8|ALT_INV_cb[1]~dataout\ <= NOT \inst8|cb[1]~dataout\;
\inst8|ALT_INV_cp~145_dataout\ <= NOT \inst8|cp~145_dataout\;
\inst8|ALT_INV_Equal3~42_dataout\ <= NOT \inst8|Equal3~42_dataout\;
\inst8|ALT_INV_cp[1]~dataout\ <= NOT \inst8|cp[1]~dataout\;
\inst8|ALT_INV_cb[2]~dataout\ <= NOT \inst8|cb[2]~dataout\;
\inst8|ALT_INV_cp[2]~dataout\ <= NOT \inst8|cp[2]~dataout\;
\inst8|ALT_INV_cb[3]~dataout\ <= NOT \inst8|cb[3]~dataout\;
\inst8|ALT_INV_cp[3]~dataout\ <= NOT \inst8|cp[3]~dataout\;
\inst8|ALT_INV_cb[4]~dataout\ <= NOT \inst8|cb[4]~dataout\;
\inst8|ALT_INV_cp~169_dataout\ <= NOT \inst8|cp~169_dataout\;
\inst8|ALT_INV_cp[5]~dataout\ <= NOT \inst8|cp[5]~dataout\;
\inst8|ALT_INV_cp[6]~dataout\ <= NOT \inst8|cp[6]~dataout\;
\inst8|ALT_INV_cp[7]~dataout\ <= NOT \inst8|cp[7]~dataout\;
\inst8|ALT_INV_warn_light_m~18_dataout\ <= NOT \inst8|warn_light_m~18_dataout\;
\inst8|ALT_INV_warn_light_m~9_dataout\ <= NOT \inst8|warn_light_m~9_dataout\;
\inst8|ALT_INV_stop~9_dataout\ <= NOT \inst8|stop~9_dataout\;
\inst8|ALT_INV_LessThan5~2sexpand1bal_dataout\ <= NOT \inst8|LessThan5~2sexpand1bal_dataout\;
\inst8|ALT_INV_LessThan2~8sexp1bal_dataout\ <= NOT \inst8|LessThan2~8sexp1bal_dataout\;
\ALT_INV_enable~dataout\ <= NOT \enable~dataout\;
\ALT_INV_reset~dataout\ <= NOT \reset~dataout\;
\ALT_INV_max_bottle[7]~dataout\ <= NOT \max_bottle[7]~dataout\;
\ALT_INV_max_bottle[6]~dataout\ <= NOT \max_bottle[6]~dataout\;
\ALT_INV_max_bottle[5]~dataout\ <= NOT \max_bottle[5]~dataout\;
\ALT_INV_max_bottle[4]~dataout\ <= NOT \max_bottle[4]~dataout\;
\ALT_INV_max_bottle[3]~dataout\ <= NOT \max_bottle[3]~dataout\;
\ALT_INV_max_bottle[2]~dataout\ <= NOT \max_bottle[2]~dataout\;
\ALT_INV_max_bottle[1]~dataout\ <= NOT \max_bottle[1]~dataout\;
\ALT_INV_max_bottle[0]~dataout\ <= NOT \max_bottle[0]~dataout\;
\ALT_INV_pnpb[7]~dataout\ <= NOT \pnpb[7]~dataout\;
\ALT_INV_pnpb[6]~dataout\ <= NOT \pnpb[6]~dataout\;
\ALT_INV_pnpb[5]~dataout\ <= NOT \pnpb[5]~dataout\;
\ALT_INV_pnpb[4]~dataout\ <= NOT \pnpb[4]~dataout\;
\ALT_INV_pnpb[3]~dataout\ <= NOT \pnpb[3]~dataout\;
\ALT_INV_pnpb[2]~dataout\ <= NOT \pnpb[2]~dataout\;
\ALT_INV_pnpb[1]~dataout\ <= NOT \pnpb[1]~dataout\;
\ALT_INV_pnpb[0]~dataout\ <= NOT \pnpb[0]~dataout\;

\enable~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	dataout => \enable~dataout\);

\inst8|count[3]~169\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[3]~169_pterm0_bus\,
	pterm1 => \inst8|count[3]~169_pterm1_bus\,
	pterm2 => \inst8|count[3]~169_pterm2_bus\,
	pterm3 => \inst8|count[3]~169_pterm3_bus\,
	pterm4 => \inst8|count[3]~169_pterm4_bus\,
	pterm5 => \inst8|count[3]~169_pterm5_bus\,
	pxor => \inst8|count[3]~169_pxor_bus\,
	pclk => \inst8|count[3]~169_pclk_bus\,
	papre => \inst8|count[3]~169_papre_bus\,
	paclr => \inst8|count[3]~169_paclr_bus\,
	pena => \inst8|count[3]~169_pena_bus\,
	pexpout => \inst8|count[3]~169_pexpout\);

\reset~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	dataout => \reset~dataout\);

\pnpb[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(3),
	dataout => \pnpb[3]~dataout\);

\inst8|Equal3~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~21_pterm0_bus\,
	pterm1 => \inst8|Equal3~21_pterm1_bus\,
	pterm2 => \inst8|Equal3~21_pterm2_bus\,
	pterm3 => \inst8|Equal3~21_pterm3_bus\,
	pterm4 => \inst8|Equal3~21_pterm4_bus\,
	pterm5 => \inst8|Equal3~21_pterm5_bus\,
	pxor => \inst8|Equal3~21_pxor_bus\,
	pclk => \inst8|Equal3~21_pclk_bus\,
	papre => \inst8|Equal3~21_papre_bus\,
	paclr => \inst8|Equal3~21_paclr_bus\,
	pena => \inst8|Equal3~21_pena_bus\,
	dataout => \inst8|Equal3~21_dataout\);

\pnpb[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(0),
	dataout => \pnpb[0]~dataout\);

\inst8|Equal3~9sexp1\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~9sexp1_datain_bus\,
	dataout => \inst8|Equal3~9sexp1_dataout\);

\inst8|Equal3~9sexp2\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~9sexp2_datain_bus\,
	dataout => \inst8|Equal3~9sexp2_dataout\);

\inst8|count~79\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~79_pterm0_bus\,
	pterm1 => \inst8|count~79_pterm1_bus\,
	pterm2 => \inst8|count~79_pterm2_bus\,
	pterm3 => \inst8|count~79_pterm3_bus\,
	pterm4 => \inst8|count~79_pterm4_bus\,
	pterm5 => \inst8|count~79_pterm5_bus\,
	pxor => \inst8|count~79_pxor_bus\,
	pclk => \inst8|count~79_pclk_bus\,
	papre => \inst8|count~79_papre_bus\,
	paclr => \inst8|count~79_paclr_bus\,
	pena => \inst8|count~79_pena_bus\,
	dataout => \inst8|count~79_dataout\);

\clk~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	dataout => \clk~dataout\);

\inst|temp[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[0]_pterm0_bus\,
	pterm1 => \inst|temp[0]_pterm1_bus\,
	pterm2 => \inst|temp[0]_pterm2_bus\,
	pterm3 => \inst|temp[0]_pterm3_bus\,
	pterm4 => \inst|temp[0]_pterm4_bus\,
	pterm5 => \inst|temp[0]_pterm5_bus\,
	pxor => \inst|temp[0]_pxor_bus\,
	pclk => \inst|temp[0]_pclk_bus\,
	papre => \inst|temp[0]_papre_bus\,
	paclr => \inst|temp[0]_paclr_bus\,
	pena => \inst|temp[0]_pena_bus\,
	dataout => \inst|temp[0]~dataout\);

\inst|temp[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[1]_pterm0_bus\,
	pterm1 => \inst|temp[1]_pterm1_bus\,
	pterm2 => \inst|temp[1]_pterm2_bus\,
	pterm3 => \inst|temp[1]_pterm3_bus\,
	pterm4 => \inst|temp[1]_pterm4_bus\,
	pterm5 => \inst|temp[1]_pterm5_bus\,
	pxor => \inst|temp[1]_pxor_bus\,
	pclk => \inst|temp[1]_pclk_bus\,
	papre => \inst|temp[1]_papre_bus\,
	paclr => \inst|temp[1]_paclr_bus\,
	pena => \inst|temp[1]_pena_bus\,
	dataout => \inst|temp[1]~dataout\);

\inst|temp[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[2]_pterm0_bus\,
	pterm1 => \inst|temp[2]_pterm1_bus\,
	pterm2 => \inst|temp[2]_pterm2_bus\,
	pterm3 => \inst|temp[2]_pterm3_bus\,
	pterm4 => \inst|temp[2]_pterm4_bus\,
	pterm5 => \inst|temp[2]_pterm5_bus\,
	pxor => \inst|temp[2]_pxor_bus\,
	pclk => \inst|temp[2]_pclk_bus\,
	papre => \inst|temp[2]_papre_bus\,
	paclr => \inst|temp[2]_paclr_bus\,
	pena => \inst|temp[2]_pena_bus\,
	dataout => \inst|temp[2]~dataout\);

\inst|temp[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[3]_pterm0_bus\,
	pterm1 => \inst|temp[3]_pterm1_bus\,
	pterm2 => \inst|temp[3]_pterm2_bus\,
	pterm3 => \inst|temp[3]_pterm3_bus\,
	pterm4 => \inst|temp[3]_pterm4_bus\,
	pterm5 => \inst|temp[3]_pterm5_bus\,
	pxor => \inst|temp[3]_pxor_bus\,
	pclk => \inst|temp[3]_pclk_bus\,
	papre => \inst|temp[3]_papre_bus\,
	paclr => \inst|temp[3]_paclr_bus\,
	pena => \inst|temp[3]_pena_bus\,
	dataout => \inst|temp[3]~dataout\);

\inst|temp[8]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[8]_pterm0_bus\,
	pterm1 => \inst|temp[8]_pterm1_bus\,
	pterm2 => \inst|temp[8]_pterm2_bus\,
	pterm3 => \inst|temp[8]_pterm3_bus\,
	pterm4 => \inst|temp[8]_pterm4_bus\,
	pterm5 => \inst|temp[8]_pterm5_bus\,
	pxor => \inst|temp[8]_pxor_bus\,
	pclk => \inst|temp[8]_pclk_bus\,
	papre => \inst|temp[8]_papre_bus\,
	paclr => \inst|temp[8]_paclr_bus\,
	pena => \inst|temp[8]_pena_bus\,
	dataout => \inst|temp[8]~dataout\);

\inst|temp[9]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[9]_pterm0_bus\,
	pterm1 => \inst|temp[9]_pterm1_bus\,
	pterm2 => \inst|temp[9]_pterm2_bus\,
	pterm3 => \inst|temp[9]_pterm3_bus\,
	pterm4 => \inst|temp[9]_pterm4_bus\,
	pterm5 => \inst|temp[9]_pterm5_bus\,
	pxor => \inst|temp[9]_pxor_bus\,
	pclk => \inst|temp[9]_pclk_bus\,
	papre => \inst|temp[9]_papre_bus\,
	paclr => \inst|temp[9]_paclr_bus\,
	pena => \inst|temp[9]_pena_bus\,
	dataout => \inst|temp[9]~dataout\);

\inst|temp~63\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp~63_pterm0_bus\,
	pterm1 => \inst|temp~63_pterm1_bus\,
	pterm2 => \inst|temp~63_pterm2_bus\,
	pterm3 => \inst|temp~63_pterm3_bus\,
	pterm4 => \inst|temp~63_pterm4_bus\,
	pterm5 => \inst|temp~63_pterm5_bus\,
	pxor => \inst|temp~63_pxor_bus\,
	pclk => \inst|temp~63_pclk_bus\,
	papre => \inst|temp~63_papre_bus\,
	paclr => \inst|temp~63_paclr_bus\,
	pena => \inst|temp~63_pena_bus\,
	pexpout => \inst|temp~63_pexpout\);

\inst|temp[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pexpin => \inst|temp~63_pexpout\,
	pterm0 => \inst|temp[4]_pterm0_bus\,
	pterm1 => \inst|temp[4]_pterm1_bus\,
	pterm2 => \inst|temp[4]_pterm2_bus\,
	pterm3 => \inst|temp[4]_pterm3_bus\,
	pterm4 => \inst|temp[4]_pterm4_bus\,
	pterm5 => \inst|temp[4]_pterm5_bus\,
	pxor => \inst|temp[4]_pxor_bus\,
	pclk => \inst|temp[4]_pclk_bus\,
	papre => \inst|temp[4]_papre_bus\,
	paclr => \inst|temp[4]_paclr_bus\,
	pena => \inst|temp[4]_pena_bus\,
	dataout => \inst|temp[4]~dataout\);

\inst|temp[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[5]_pterm0_bus\,
	pterm1 => \inst|temp[5]_pterm1_bus\,
	pterm2 => \inst|temp[5]_pterm2_bus\,
	pterm3 => \inst|temp[5]_pterm3_bus\,
	pterm4 => \inst|temp[5]_pterm4_bus\,
	pterm5 => \inst|temp[5]_pterm5_bus\,
	pxor => \inst|temp[5]_pxor_bus\,
	pclk => \inst|temp[5]_pclk_bus\,
	papre => \inst|temp[5]_papre_bus\,
	paclr => \inst|temp[5]_paclr_bus\,
	pena => \inst|temp[5]_pena_bus\,
	dataout => \inst|temp[5]~dataout\);

\inst|temp[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[6]_pterm0_bus\,
	pterm1 => \inst|temp[6]_pterm1_bus\,
	pterm2 => \inst|temp[6]_pterm2_bus\,
	pterm3 => \inst|temp[6]_pterm3_bus\,
	pterm4 => \inst|temp[6]_pterm4_bus\,
	pterm5 => \inst|temp[6]_pterm5_bus\,
	pxor => \inst|temp[6]_pxor_bus\,
	pclk => \inst|temp[6]_pclk_bus\,
	papre => \inst|temp[6]_papre_bus\,
	paclr => \inst|temp[6]_paclr_bus\,
	pena => \inst|temp[6]_pena_bus\,
	dataout => \inst|temp[6]~dataout\);

\inst|temp[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[7]_pterm0_bus\,
	pterm1 => \inst|temp[7]_pterm1_bus\,
	pterm2 => \inst|temp[7]_pterm2_bus\,
	pterm3 => \inst|temp[7]_pterm3_bus\,
	pterm4 => \inst|temp[7]_pterm4_bus\,
	pterm5 => \inst|temp[7]_pterm5_bus\,
	pxor => \inst|temp[7]_pxor_bus\,
	pclk => \inst|temp[7]_pclk_bus\,
	papre => \inst|temp[7]_papre_bus\,
	paclr => \inst|temp[7]_paclr_bus\,
	pena => \inst|temp[7]_pena_bus\,
	dataout => \inst|temp[7]~dataout\);

\inst|temp[13]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[13]_pterm0_bus\,
	pterm1 => \inst|temp[13]_pterm1_bus\,
	pterm2 => \inst|temp[13]_pterm2_bus\,
	pterm3 => \inst|temp[13]_pterm3_bus\,
	pterm4 => \inst|temp[13]_pterm4_bus\,
	pterm5 => \inst|temp[13]_pterm5_bus\,
	pxor => \inst|temp[13]_pxor_bus\,
	pclk => \inst|temp[13]_pclk_bus\,
	papre => \inst|temp[13]_papre_bus\,
	paclr => \inst|temp[13]_paclr_bus\,
	pena => \inst|temp[13]_pena_bus\,
	dataout => \inst|temp[13]~dataout\);

\inst|temp[10]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[10]_pterm0_bus\,
	pterm1 => \inst|temp[10]_pterm1_bus\,
	pterm2 => \inst|temp[10]_pterm2_bus\,
	pterm3 => \inst|temp[10]_pterm3_bus\,
	pterm4 => \inst|temp[10]_pterm4_bus\,
	pterm5 => \inst|temp[10]_pterm5_bus\,
	pxor => \inst|temp[10]_pxor_bus\,
	pclk => \inst|temp[10]_pclk_bus\,
	papre => \inst|temp[10]_papre_bus\,
	paclr => \inst|temp[10]_paclr_bus\,
	pena => \inst|temp[10]_pena_bus\,
	dataout => \inst|temp[10]~dataout\);

\inst|temp[11]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[11]_pterm0_bus\,
	pterm1 => \inst|temp[11]_pterm1_bus\,
	pterm2 => \inst|temp[11]_pterm2_bus\,
	pterm3 => \inst|temp[11]_pterm3_bus\,
	pterm4 => \inst|temp[11]_pterm4_bus\,
	pterm5 => \inst|temp[11]_pterm5_bus\,
	pxor => \inst|temp[11]_pxor_bus\,
	pclk => \inst|temp[11]_pclk_bus\,
	papre => \inst|temp[11]_papre_bus\,
	paclr => \inst|temp[11]_paclr_bus\,
	pena => \inst|temp[11]_pena_bus\,
	dataout => \inst|temp[11]~dataout\);

\inst|temp[12]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|temp[12]_pterm0_bus\,
	pterm1 => \inst|temp[12]_pterm1_bus\,
	pterm2 => \inst|temp[12]_pterm2_bus\,
	pterm3 => \inst|temp[12]_pterm3_bus\,
	pterm4 => \inst|temp[12]_pterm4_bus\,
	pterm5 => \inst|temp[12]_pterm5_bus\,
	pxor => \inst|temp[12]_pxor_bus\,
	pclk => \inst|temp[12]_pclk_bus\,
	papre => \inst|temp[12]_papre_bus\,
	paclr => \inst|temp[12]_paclr_bus\,
	pena => \inst|temp[12]_pena_bus\,
	dataout => \inst|temp[12]~dataout\);

\inst|LessThan0~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst|LessThan0~11_pterm0_bus\,
	pterm1 => \inst|LessThan0~11_pterm1_bus\,
	pterm2 => \inst|LessThan0~11_pterm2_bus\,
	pterm3 => \inst|LessThan0~11_pterm3_bus\,
	pterm4 => \inst|LessThan0~11_pterm4_bus\,
	pterm5 => \inst|LessThan0~11_pterm5_bus\,
	pxor => \inst|LessThan0~11_pxor_bus\,
	pclk => \inst|LessThan0~11_pclk_bus\,
	papre => \inst|LessThan0~11_papre_bus\,
	paclr => \inst|LessThan0~11_paclr_bus\,
	pena => \inst|LessThan0~11_pena_bus\,
	pexpout => \inst|LessThan0~11_pexpout\);

\inst|clkout\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pexpin => \inst|LessThan0~11_pexpout\,
	pterm0 => \inst|clkout_pterm0_bus\,
	pterm1 => \inst|clkout_pterm1_bus\,
	pterm2 => \inst|clkout_pterm2_bus\,
	pterm3 => \inst|clkout_pterm3_bus\,
	pterm4 => \inst|clkout_pterm4_bus\,
	pterm5 => \inst|clkout_pterm5_bus\,
	pxor => \inst|clkout_pxor_bus\,
	pclk => \inst|clkout_pclk_bus\,
	papre => \inst|clkout_papre_bus\,
	paclr => \inst|clkout_paclr_bus\,
	pena => \inst|clkout_pena_bus\,
	dataout => \inst|clkout~dataout\);

\max_bottle[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(7),
	dataout => \max_bottle[7]~dataout\);

\max_bottle[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(6),
	dataout => \max_bottle[6]~dataout\);

\max_bottle[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(5),
	dataout => \max_bottle[5]~dataout\);

\pnpb[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(7),
	dataout => \pnpb[7]~dataout\);

\max_bottle[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(4),
	dataout => \max_bottle[4]~dataout\);

\max_bottle[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(3),
	dataout => \max_bottle[3]~dataout\);

\max_bottle[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(2),
	dataout => \max_bottle[2]~dataout\);

\max_bottle[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(1),
	dataout => \max_bottle[1]~dataout\);

\max_bottle[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_bottle(0),
	dataout => \max_bottle[0]~dataout\);

\pnpb[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(6),
	dataout => \pnpb[6]~dataout\);

\pnpb[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(5),
	dataout => \pnpb[5]~dataout\);

\pnpb[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(4),
	dataout => \pnpb[4]~dataout\);

\pnpb[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(2),
	dataout => \pnpb[2]~dataout\);

\pnpb[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pnpb(1),
	dataout => \pnpb[1]~dataout\);

\inst8|LessThan5~2sexpand1bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|LessThan5~2sexpand1bal_pterm0_bus\,
	pterm1 => \inst8|LessThan5~2sexpand1bal_pterm1_bus\,
	pterm2 => \inst8|LessThan5~2sexpand1bal_pterm2_bus\,
	pterm3 => \inst8|LessThan5~2sexpand1bal_pterm3_bus\,
	pterm4 => \inst8|LessThan5~2sexpand1bal_pterm4_bus\,
	pterm5 => \inst8|LessThan5~2sexpand1bal_pterm5_bus\,
	pxor => \inst8|LessThan5~2sexpand1bal_pxor_bus\,
	pclk => \inst8|LessThan5~2sexpand1bal_pclk_bus\,
	papre => \inst8|LessThan5~2sexpand1bal_papre_bus\,
	paclr => \inst8|LessThan5~2sexpand1bal_paclr_bus\,
	pena => \inst8|LessThan5~2sexpand1bal_pena_bus\,
	dataout => \inst8|LessThan5~2sexpand1bal_dataout\);

\inst8|LessThan2~8sexp1bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|LessThan2~8sexp1bal_pterm0_bus\,
	pterm1 => \inst8|LessThan2~8sexp1bal_pterm1_bus\,
	pterm2 => \inst8|LessThan2~8sexp1bal_pterm2_bus\,
	pterm3 => \inst8|LessThan2~8sexp1bal_pterm3_bus\,
	pterm4 => \inst8|LessThan2~8sexp1bal_pterm4_bus\,
	pterm5 => \inst8|LessThan2~8sexp1bal_pterm5_bus\,
	pxor => \inst8|LessThan2~8sexp1bal_pxor_bus\,
	pclk => \inst8|LessThan2~8sexp1bal_pclk_bus\,
	papre => \inst8|LessThan2~8sexp1bal_papre_bus\,
	paclr => \inst8|LessThan2~8sexp1bal_paclr_bus\,
	pena => \inst8|LessThan2~8sexp1bal_pena_bus\,
	dataout => \inst8|LessThan2~8sexp1bal_dataout\);

\inst8|count[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[0]_pterm0_bus\,
	pterm1 => \inst8|count[0]_pterm1_bus\,
	pterm2 => \inst8|count[0]_pterm2_bus\,
	pterm3 => \inst8|count[0]_pterm3_bus\,
	pterm4 => \inst8|count[0]_pterm4_bus\,
	pterm5 => \inst8|count[0]_pterm5_bus\,
	pxor => \inst8|count[0]_pxor_bus\,
	pclk => \inst8|count[0]_pclk_bus\,
	papre => \inst8|count[0]_papre_bus\,
	paclr => \inst8|count[0]_paclr_bus\,
	pena => \inst8|count[0]_pena_bus\,
	dataout => \inst8|count[0]~dataout\);

\inst8|count~150\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~150_pterm0_bus\,
	pterm1 => \inst8|count~150_pterm1_bus\,
	pterm2 => \inst8|count~150_pterm2_bus\,
	pterm3 => \inst8|count~150_pterm3_bus\,
	pterm4 => \inst8|count~150_pterm4_bus\,
	pterm5 => \inst8|count~150_pterm5_bus\,
	pxor => \inst8|count~150_pxor_bus\,
	pclk => \inst8|count~150_pclk_bus\,
	papre => \inst8|count~150_papre_bus\,
	paclr => \inst8|count~150_paclr_bus\,
	pena => \inst8|count~150_pena_bus\,
	dataout => \inst8|count~150_dataout\);

\inst8|Equal3~45\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~45_datain_bus\,
	dataout => \inst8|Equal3~45_dataout\);

\inst8|Equal3~46\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~46_datain_bus\,
	dataout => \inst8|Equal3~46_dataout\);

\inst8|count~156\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~156_pterm0_bus\,
	pterm1 => \inst8|count~156_pterm1_bus\,
	pterm2 => \inst8|count~156_pterm2_bus\,
	pterm3 => \inst8|count~156_pterm3_bus\,
	pterm4 => \inst8|count~156_pterm4_bus\,
	pterm5 => \inst8|count~156_pterm5_bus\,
	pxor => \inst8|count~156_pxor_bus\,
	pclk => \inst8|count~156_pclk_bus\,
	papre => \inst8|count~156_papre_bus\,
	paclr => \inst8|count~156_paclr_bus\,
	pena => \inst8|count~156_pena_bus\,
	dataout => \inst8|count~156_dataout\);

\inst8|count[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[7]_pterm0_bus\,
	pterm1 => \inst8|count[7]_pterm1_bus\,
	pterm2 => \inst8|count[7]_pterm2_bus\,
	pterm3 => \inst8|count[7]_pterm3_bus\,
	pterm4 => \inst8|count[7]_pterm4_bus\,
	pterm5 => \inst8|count[7]_pterm5_bus\,
	pxor => \inst8|count[7]_pxor_bus\,
	pclk => \inst8|count[7]_pclk_bus\,
	papre => \inst8|count[7]_papre_bus\,
	paclr => \inst8|count[7]_paclr_bus\,
	pena => \inst8|count[7]_pena_bus\,
	dataout => \inst8|count[7]~dataout\);

\inst8|Equal3~37\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~37_pterm0_bus\,
	pterm1 => \inst8|Equal3~37_pterm1_bus\,
	pterm2 => \inst8|Equal3~37_pterm2_bus\,
	pterm3 => \inst8|Equal3~37_pterm3_bus\,
	pterm4 => \inst8|Equal3~37_pterm4_bus\,
	pterm5 => \inst8|Equal3~37_pterm5_bus\,
	pxor => \inst8|Equal3~37_pxor_bus\,
	pclk => \inst8|Equal3~37_pclk_bus\,
	papre => \inst8|Equal3~37_papre_bus\,
	paclr => \inst8|Equal3~37_paclr_bus\,
	pena => \inst8|Equal3~37_pena_bus\,
	dataout => \inst8|Equal3~37_dataout\);

\inst8|count~136\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~136_pterm0_bus\,
	pterm1 => \inst8|count~136_pterm1_bus\,
	pterm2 => \inst8|count~136_pterm2_bus\,
	pterm3 => \inst8|count~136_pterm3_bus\,
	pterm4 => \inst8|count~136_pterm4_bus\,
	pterm5 => \inst8|count~136_pterm5_bus\,
	pxor => \inst8|count~136_pxor_bus\,
	pclk => \inst8|count~136_pclk_bus\,
	papre => \inst8|count~136_papre_bus\,
	paclr => \inst8|count~136_paclr_bus\,
	pena => \inst8|count~136_pena_bus\,
	dataout => \inst8|count~136_dataout\);

\inst8|count~142\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~142_pterm0_bus\,
	pterm1 => \inst8|count~142_pterm1_bus\,
	pterm2 => \inst8|count~142_pterm2_bus\,
	pterm3 => \inst8|count~142_pterm3_bus\,
	pterm4 => \inst8|count~142_pterm4_bus\,
	pterm5 => \inst8|count~142_pterm5_bus\,
	pxor => \inst8|count~142_pxor_bus\,
	pclk => \inst8|count~142_pclk_bus\,
	papre => \inst8|count~142_papre_bus\,
	paclr => \inst8|count~142_paclr_bus\,
	pena => \inst8|count~142_pena_bus\,
	dataout => \inst8|count~142_dataout\);

\inst8|count[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[6]_pterm0_bus\,
	pterm1 => \inst8|count[6]_pterm1_bus\,
	pterm2 => \inst8|count[6]_pterm2_bus\,
	pterm3 => \inst8|count[6]_pterm3_bus\,
	pterm4 => \inst8|count[6]_pterm4_bus\,
	pterm5 => \inst8|count[6]_pterm5_bus\,
	pxor => \inst8|count[6]_pxor_bus\,
	pclk => \inst8|count[6]_pclk_bus\,
	papre => \inst8|count[6]_papre_bus\,
	paclr => \inst8|count[6]_paclr_bus\,
	pena => \inst8|count[6]_pena_bus\,
	dataout => \inst8|count[6]~dataout\);

\inst8|Equal3~33\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~33_pterm0_bus\,
	pterm1 => \inst8|Equal3~33_pterm1_bus\,
	pterm2 => \inst8|Equal3~33_pterm2_bus\,
	pterm3 => \inst8|Equal3~33_pterm3_bus\,
	pterm4 => \inst8|Equal3~33_pterm4_bus\,
	pterm5 => \inst8|Equal3~33_pterm5_bus\,
	pxor => \inst8|Equal3~33_pxor_bus\,
	pclk => \inst8|Equal3~33_pclk_bus\,
	papre => \inst8|Equal3~33_papre_bus\,
	paclr => \inst8|Equal3~33_paclr_bus\,
	pena => \inst8|Equal3~33_pena_bus\,
	dataout => \inst8|Equal3~33_dataout\);

\inst8|count~122\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~122_pterm0_bus\,
	pterm1 => \inst8|count~122_pterm1_bus\,
	pterm2 => \inst8|count~122_pterm2_bus\,
	pterm3 => \inst8|count~122_pterm3_bus\,
	pterm4 => \inst8|count~122_pterm4_bus\,
	pterm5 => \inst8|count~122_pterm5_bus\,
	pxor => \inst8|count~122_pxor_bus\,
	pclk => \inst8|count~122_pclk_bus\,
	papre => \inst8|count~122_papre_bus\,
	paclr => \inst8|count~122_paclr_bus\,
	pena => \inst8|count~122_pena_bus\,
	dataout => \inst8|count~122_dataout\);

\inst8|count~128\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~128_pterm0_bus\,
	pterm1 => \inst8|count~128_pterm1_bus\,
	pterm2 => \inst8|count~128_pterm2_bus\,
	pterm3 => \inst8|count~128_pterm3_bus\,
	pterm4 => \inst8|count~128_pterm4_bus\,
	pterm5 => \inst8|count~128_pterm5_bus\,
	pxor => \inst8|count~128_pxor_bus\,
	pclk => \inst8|count~128_pclk_bus\,
	papre => \inst8|count~128_papre_bus\,
	paclr => \inst8|count~128_paclr_bus\,
	pena => \inst8|count~128_pena_bus\,
	dataout => \inst8|count~128_dataout\);

\inst8|count[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[5]_pterm0_bus\,
	pterm1 => \inst8|count[5]_pterm1_bus\,
	pterm2 => \inst8|count[5]_pterm2_bus\,
	pterm3 => \inst8|count[5]_pterm3_bus\,
	pterm4 => \inst8|count[5]_pterm4_bus\,
	pterm5 => \inst8|count[5]_pterm5_bus\,
	pxor => \inst8|count[5]_pxor_bus\,
	pclk => \inst8|count[5]_pclk_bus\,
	papre => \inst8|count[5]_papre_bus\,
	paclr => \inst8|count[5]_paclr_bus\,
	pena => \inst8|count[5]_pena_bus\,
	dataout => \inst8|count[5]~dataout\);

\inst8|Equal3~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~29_pterm0_bus\,
	pterm1 => \inst8|Equal3~29_pterm1_bus\,
	pterm2 => \inst8|Equal3~29_pterm2_bus\,
	pterm3 => \inst8|Equal3~29_pterm3_bus\,
	pterm4 => \inst8|Equal3~29_pterm4_bus\,
	pterm5 => \inst8|Equal3~29_pterm5_bus\,
	pxor => \inst8|Equal3~29_pxor_bus\,
	pclk => \inst8|Equal3~29_pclk_bus\,
	papre => \inst8|Equal3~29_papre_bus\,
	paclr => \inst8|Equal3~29_paclr_bus\,
	pena => \inst8|Equal3~29_pena_bus\,
	dataout => \inst8|Equal3~29_dataout\);

\inst8|count~108\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~108_pterm0_bus\,
	pterm1 => \inst8|count~108_pterm1_bus\,
	pterm2 => \inst8|count~108_pterm2_bus\,
	pterm3 => \inst8|count~108_pterm3_bus\,
	pterm4 => \inst8|count~108_pterm4_bus\,
	pterm5 => \inst8|count~108_pterm5_bus\,
	pxor => \inst8|count~108_pxor_bus\,
	pclk => \inst8|count~108_pclk_bus\,
	papre => \inst8|count~108_papre_bus\,
	paclr => \inst8|count~108_paclr_bus\,
	pena => \inst8|count~108_pena_bus\,
	dataout => \inst8|count~108_dataout\);

\inst8|count~114\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count~114_pterm0_bus\,
	pterm1 => \inst8|count~114_pterm1_bus\,
	pterm2 => \inst8|count~114_pterm2_bus\,
	pterm3 => \inst8|count~114_pterm3_bus\,
	pterm4 => \inst8|count~114_pterm4_bus\,
	pterm5 => \inst8|count~114_pterm5_bus\,
	pxor => \inst8|count~114_pxor_bus\,
	pclk => \inst8|count~114_pclk_bus\,
	papre => \inst8|count~114_papre_bus\,
	paclr => \inst8|count~114_paclr_bus\,
	pena => \inst8|count~114_pena_bus\,
	dataout => \inst8|count~114_dataout\);

\inst8|count[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[4]_pterm0_bus\,
	pterm1 => \inst8|count[4]_pterm1_bus\,
	pterm2 => \inst8|count[4]_pterm2_bus\,
	pterm3 => \inst8|count[4]_pterm3_bus\,
	pterm4 => \inst8|count[4]_pterm4_bus\,
	pterm5 => \inst8|count[4]_pterm5_bus\,
	pxor => \inst8|count[4]_pxor_bus\,
	pclk => \inst8|count[4]_pclk_bus\,
	papre => \inst8|count[4]_papre_bus\,
	paclr => \inst8|count[4]_paclr_bus\,
	pena => \inst8|count[4]_pena_bus\,
	dataout => \inst8|count[4]~dataout\);

\inst8|Equal3~25\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~25_pterm0_bus\,
	pterm1 => \inst8|Equal3~25_pterm1_bus\,
	pterm2 => \inst8|Equal3~25_pterm2_bus\,
	pterm3 => \inst8|Equal3~25_pterm3_bus\,
	pterm4 => \inst8|Equal3~25_pterm4_bus\,
	pterm5 => \inst8|Equal3~25_pterm5_bus\,
	pxor => \inst8|Equal3~25_pxor_bus\,
	pclk => \inst8|Equal3~25_pclk_bus\,
	papre => \inst8|Equal3~25_papre_bus\,
	paclr => \inst8|Equal3~25_paclr_bus\,
	pena => \inst8|Equal3~25_pena_bus\,
	dataout => \inst8|Equal3~25_dataout\);

\inst8|Equal3~43\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~43_datain_bus\,
	dataout => \inst8|Equal3~43_dataout\);

\inst8|Equal3~44\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~44_datain_bus\,
	dataout => \inst8|Equal3~44_dataout\);

\inst8|count[2]~164\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[2]~164_pterm0_bus\,
	pterm1 => \inst8|count[2]~164_pterm1_bus\,
	pterm2 => \inst8|count[2]~164_pterm2_bus\,
	pterm3 => \inst8|count[2]~164_pterm3_bus\,
	pterm4 => \inst8|count[2]~164_pterm4_bus\,
	pterm5 => \inst8|count[2]~164_pterm5_bus\,
	pxor => \inst8|count[2]~164_pxor_bus\,
	pclk => \inst8|count[2]~164_pclk_bus\,
	papre => \inst8|count[2]~164_papre_bus\,
	paclr => \inst8|count[2]~164_paclr_bus\,
	pena => \inst8|count[2]~164_pena_bus\,
	pexpout => \inst8|count[2]~164_pexpout\);

\inst8|process_0~9sexp\ : max_sexp
PORT MAP (
	datain => \inst8|process_0~9sexp_datain_bus\,
	dataout => \inst8|process_0~9sexp_dataout\);

\inst8|count[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|count[2]~164_pexpout\,
	pterm0 => \inst8|count[2]_pterm0_bus\,
	pterm1 => \inst8|count[2]_pterm1_bus\,
	pterm2 => \inst8|count[2]_pterm2_bus\,
	pterm3 => \inst8|count[2]_pterm3_bus\,
	pterm4 => \inst8|count[2]_pterm4_bus\,
	pterm5 => \inst8|count[2]_pterm5_bus\,
	pxor => \inst8|count[2]_pxor_bus\,
	pclk => \inst8|count[2]_pclk_bus\,
	papre => \inst8|count[2]_papre_bus\,
	paclr => \inst8|count[2]_paclr_bus\,
	pena => \inst8|count[2]_pena_bus\,
	dataout => \inst8|count[2]~dataout\);

\inst8|Equal3~17\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~17_pterm0_bus\,
	pterm1 => \inst8|Equal3~17_pterm1_bus\,
	pterm2 => \inst8|Equal3~17_pterm2_bus\,
	pterm3 => \inst8|Equal3~17_pterm3_bus\,
	pterm4 => \inst8|Equal3~17_pterm4_bus\,
	pterm5 => \inst8|Equal3~17_pterm5_bus\,
	pxor => \inst8|Equal3~17_pxor_bus\,
	pclk => \inst8|Equal3~17_pclk_bus\,
	papre => \inst8|Equal3~17_papre_bus\,
	paclr => \inst8|Equal3~17_paclr_bus\,
	pena => \inst8|Equal3~17_pena_bus\,
	dataout => \inst8|Equal3~17_dataout\);

\inst8|cb[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[0]_pterm0_bus\,
	pterm1 => \inst8|cb[0]_pterm1_bus\,
	pterm2 => \inst8|cb[0]_pterm2_bus\,
	pterm3 => \inst8|cb[0]_pterm3_bus\,
	pterm4 => \inst8|cb[0]_pterm4_bus\,
	pterm5 => \inst8|cb[0]_pterm5_bus\,
	pxor => \inst8|cb[0]_pxor_bus\,
	pclk => \inst8|cb[0]_pclk_bus\,
	papre => \inst8|cb[0]_papre_bus\,
	paclr => \inst8|cb[0]_paclr_bus\,
	pena => \inst8|cb[0]_pena_bus\,
	dataout => \inst8|cb[0]~dataout\);

\inst8|cb[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[3]_pterm0_bus\,
	pterm1 => \inst8|cb[3]_pterm1_bus\,
	pterm2 => \inst8|cb[3]_pterm2_bus\,
	pterm3 => \inst8|cb[3]_pterm3_bus\,
	pterm4 => \inst8|cb[3]_pterm4_bus\,
	pterm5 => \inst8|cb[3]_pterm5_bus\,
	pxor => \inst8|cb[3]_pxor_bus\,
	pclk => \inst8|cb[3]_pclk_bus\,
	papre => \inst8|cb[3]_papre_bus\,
	paclr => \inst8|cb[3]_paclr_bus\,
	pena => \inst8|cb[3]_pena_bus\,
	dataout => \inst8|cb[3]~dataout\);

\inst8|Equal3~47\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~47_datain_bus\,
	dataout => \inst8|Equal3~47_dataout\);

\inst8|Equal3~48\ : max_sexp
PORT MAP (
	datain => \inst8|Equal3~48_datain_bus\,
	dataout => \inst8|Equal3~48_dataout\);

\inst8|cb[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[1]_pterm0_bus\,
	pterm1 => \inst8|cb[1]_pterm1_bus\,
	pterm2 => \inst8|cb[1]_pterm2_bus\,
	pterm3 => \inst8|cb[1]_pterm3_bus\,
	pterm4 => \inst8|cb[1]_pterm4_bus\,
	pterm5 => \inst8|cb[1]_pterm5_bus\,
	pxor => \inst8|cb[1]_pxor_bus\,
	pclk => \inst8|cb[1]_pclk_bus\,
	papre => \inst8|cb[1]_papre_bus\,
	paclr => \inst8|cb[1]_paclr_bus\,
	pena => \inst8|cb[1]_pena_bus\,
	dataout => \inst8|cb[1]~dataout\);

\inst8|cb[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[2]_pterm0_bus\,
	pterm1 => \inst8|cb[2]_pterm1_bus\,
	pterm2 => \inst8|cb[2]_pterm2_bus\,
	pterm3 => \inst8|cb[2]_pterm3_bus\,
	pterm4 => \inst8|cb[2]_pterm4_bus\,
	pterm5 => \inst8|cb[2]_pterm5_bus\,
	pxor => \inst8|cb[2]_pxor_bus\,
	pclk => \inst8|cb[2]_pclk_bus\,
	papre => \inst8|cb[2]_papre_bus\,
	paclr => \inst8|cb[2]_paclr_bus\,
	pena => \inst8|cb[2]_pena_bus\,
	dataout => \inst8|cb[2]~dataout\);

\inst8|cb[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[4]_pterm0_bus\,
	pterm1 => \inst8|cb[4]_pterm1_bus\,
	pterm2 => \inst8|cb[4]_pterm2_bus\,
	pterm3 => \inst8|cb[4]_pterm3_bus\,
	pterm4 => \inst8|cb[4]_pterm4_bus\,
	pterm5 => \inst8|cb[4]_pterm5_bus\,
	pxor => \inst8|cb[4]_pxor_bus\,
	pclk => \inst8|cb[4]_pclk_bus\,
	papre => \inst8|cb[4]_papre_bus\,
	paclr => \inst8|cb[4]_paclr_bus\,
	pena => \inst8|cb[4]_pena_bus\,
	dataout => \inst8|cb[4]~dataout\);

\inst8|cb[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[5]_pterm0_bus\,
	pterm1 => \inst8|cb[5]_pterm1_bus\,
	pterm2 => \inst8|cb[5]_pterm2_bus\,
	pterm3 => \inst8|cb[5]_pterm3_bus\,
	pterm4 => \inst8|cb[5]_pterm4_bus\,
	pterm5 => \inst8|cb[5]_pterm5_bus\,
	pxor => \inst8|cb[5]_pxor_bus\,
	pclk => \inst8|cb[5]_pclk_bus\,
	papre => \inst8|cb[5]_papre_bus\,
	paclr => \inst8|cb[5]_paclr_bus\,
	pena => \inst8|cb[5]_pena_bus\,
	dataout => \inst8|cb[5]~dataout\);

\inst8|cb[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[6]_pterm0_bus\,
	pterm1 => \inst8|cb[6]_pterm1_bus\,
	pterm2 => \inst8|cb[6]_pterm2_bus\,
	pterm3 => \inst8|cb[6]_pterm3_bus\,
	pterm4 => \inst8|cb[6]_pterm4_bus\,
	pterm5 => \inst8|cb[6]_pterm5_bus\,
	pxor => \inst8|cb[6]_pxor_bus\,
	pclk => \inst8|cb[6]_pclk_bus\,
	papre => \inst8|cb[6]_papre_bus\,
	paclr => \inst8|cb[6]_paclr_bus\,
	pena => \inst8|cb[6]_pena_bus\,
	dataout => \inst8|cb[6]~dataout\);

\inst8|Equal3~42\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~42_pterm0_bus\,
	pterm1 => \inst8|Equal3~42_pterm1_bus\,
	pterm2 => \inst8|Equal3~42_pterm2_bus\,
	pterm3 => \inst8|Equal3~42_pterm3_bus\,
	pterm4 => \inst8|Equal3~42_pterm4_bus\,
	pterm5 => \inst8|Equal3~42_pterm5_bus\,
	pxor => \inst8|Equal3~42_pxor_bus\,
	pclk => \inst8|Equal3~42_pclk_bus\,
	papre => \inst8|Equal3~42_papre_bus\,
	paclr => \inst8|Equal3~42_paclr_bus\,
	pena => \inst8|Equal3~42_pena_bus\,
	dataout => \inst8|Equal3~42_dataout\);

\inst8|cb[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cb[7]_pterm0_bus\,
	pterm1 => \inst8|cb[7]_pterm1_bus\,
	pterm2 => \inst8|cb[7]_pterm2_bus\,
	pterm3 => \inst8|cb[7]_pterm3_bus\,
	pterm4 => \inst8|cb[7]_pterm4_bus\,
	pterm5 => \inst8|cb[7]_pterm5_bus\,
	pxor => \inst8|cb[7]_pxor_bus\,
	pclk => \inst8|cb[7]_pclk_bus\,
	papre => \inst8|cb[7]_papre_bus\,
	paclr => \inst8|cb[7]_paclr_bus\,
	pena => \inst8|cb[7]_pena_bus\,
	dataout => \inst8|cb[7]~dataout\);

\inst8|warn_light_m~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|warn_light_m~26_pterm0_bus\,
	pterm1 => \inst8|warn_light_m~26_pterm1_bus\,
	pterm2 => \inst8|warn_light_m~26_pterm2_bus\,
	pterm3 => \inst8|warn_light_m~26_pterm3_bus\,
	pterm4 => \inst8|warn_light_m~26_pterm4_bus\,
	pterm5 => \inst8|warn_light_m~26_pterm5_bus\,
	pxor => \inst8|warn_light_m~26_pxor_bus\,
	pclk => \inst8|warn_light_m~26_pclk_bus\,
	papre => \inst8|warn_light_m~26_papre_bus\,
	paclr => \inst8|warn_light_m~26_paclr_bus\,
	pena => \inst8|warn_light_m~26_pena_bus\,
	pexpout => \inst8|warn_light_m~26_pexpout\);

\inst8|warn_light_m~30\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|warn_light_m~26_pexpout\,
	pterm0 => \inst8|warn_light_m~30_pterm0_bus\,
	pterm1 => \inst8|warn_light_m~30_pterm1_bus\,
	pterm2 => \inst8|warn_light_m~30_pterm2_bus\,
	pterm3 => \inst8|warn_light_m~30_pterm3_bus\,
	pterm4 => \inst8|warn_light_m~30_pterm4_bus\,
	pterm5 => \inst8|warn_light_m~30_pterm5_bus\,
	pxor => \inst8|warn_light_m~30_pxor_bus\,
	pclk => \inst8|warn_light_m~30_pclk_bus\,
	papre => \inst8|warn_light_m~30_papre_bus\,
	paclr => \inst8|warn_light_m~30_paclr_bus\,
	pena => \inst8|warn_light_m~30_pena_bus\,
	pexpout => \inst8|warn_light_m~30_pexpout\);

\inst8|warn_light_m~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|warn_light_m~30_pexpout\,
	pterm0 => \inst8|warn_light_m~18_pterm0_bus\,
	pterm1 => \inst8|warn_light_m~18_pterm1_bus\,
	pterm2 => \inst8|warn_light_m~18_pterm2_bus\,
	pterm3 => \inst8|warn_light_m~18_pterm3_bus\,
	pterm4 => \inst8|warn_light_m~18_pterm4_bus\,
	pterm5 => \inst8|warn_light_m~18_pterm5_bus\,
	pxor => \inst8|warn_light_m~18_pxor_bus\,
	pclk => \inst8|warn_light_m~18_pclk_bus\,
	papre => \inst8|warn_light_m~18_papre_bus\,
	paclr => \inst8|warn_light_m~18_paclr_bus\,
	pena => \inst8|warn_light_m~18_pena_bus\,
	dataout => \inst8|warn_light_m~18_dataout\);

\inst8|process_0~12\ : max_sexp
PORT MAP (
	datain => \inst8|process_0~12_datain_bus\,
	dataout => \inst8|process_0~12_dataout\);

\inst8|warn_light_m~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|warn_light_m~9_pterm0_bus\,
	pterm1 => \inst8|warn_light_m~9_pterm1_bus\,
	pterm2 => \inst8|warn_light_m~9_pterm2_bus\,
	pterm3 => \inst8|warn_light_m~9_pterm3_bus\,
	pterm4 => \inst8|warn_light_m~9_pterm4_bus\,
	pterm5 => \inst8|warn_light_m~9_pterm5_bus\,
	pxor => \inst8|warn_light_m~9_pxor_bus\,
	pclk => \inst8|warn_light_m~9_pclk_bus\,
	papre => \inst8|warn_light_m~9_papre_bus\,
	paclr => \inst8|warn_light_m~9_paclr_bus\,
	pena => \inst8|warn_light_m~9_pena_bus\,
	dataout => \inst8|warn_light_m~9_dataout\);

\inst8|stop~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|stop~9_pterm0_bus\,
	pterm1 => \inst8|stop~9_pterm1_bus\,
	pterm2 => \inst8|stop~9_pterm2_bus\,
	pterm3 => \inst8|stop~9_pterm3_bus\,
	pterm4 => \inst8|stop~9_pterm4_bus\,
	pterm5 => \inst8|stop~9_pterm5_bus\,
	pxor => \inst8|stop~9_pxor_bus\,
	pclk => \inst8|stop~9_pclk_bus\,
	papre => \inst8|stop~9_papre_bus\,
	paclr => \inst8|stop~9_paclr_bus\,
	pena => \inst8|stop~9_pena_bus\,
	dataout => \inst8|stop~9_dataout\);

\inst8|count[3]~171\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|count[3]~169_pexpout\,
	pterm0 => \inst8|count[3]~171_pterm0_bus\,
	pterm1 => \inst8|count[3]~171_pterm1_bus\,
	pterm2 => \inst8|count[3]~171_pterm2_bus\,
	pterm3 => \inst8|count[3]~171_pterm3_bus\,
	pterm4 => \inst8|count[3]~171_pterm4_bus\,
	pterm5 => \inst8|count[3]~171_pterm5_bus\,
	pxor => \inst8|count[3]~171_pxor_bus\,
	pclk => \inst8|count[3]~171_pclk_bus\,
	papre => \inst8|count[3]~171_papre_bus\,
	paclr => \inst8|count[3]~171_paclr_bus\,
	pena => \inst8|count[3]~171_pena_bus\,
	pexpout => \inst8|count[3]~171_pexpout\);

\inst8|count[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|count[3]~171_pexpout\,
	pterm0 => \inst8|count[3]_pterm0_bus\,
	pterm1 => \inst8|count[3]_pterm1_bus\,
	pterm2 => \inst8|count[3]_pterm2_bus\,
	pterm3 => \inst8|count[3]_pterm3_bus\,
	pterm4 => \inst8|count[3]_pterm4_bus\,
	pterm5 => \inst8|count[3]_pterm5_bus\,
	pxor => \inst8|count[3]_pxor_bus\,
	pclk => \inst8|count[3]_pclk_bus\,
	papre => \inst8|count[3]_papre_bus\,
	paclr => \inst8|count[3]_paclr_bus\,
	pena => \inst8|count[3]_pena_bus\,
	dataout => \inst8|count[3]~dataout\);

\inst8|count[1]~177\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|count[1]~177_pterm0_bus\,
	pterm1 => \inst8|count[1]~177_pterm1_bus\,
	pterm2 => \inst8|count[1]~177_pterm2_bus\,
	pterm3 => \inst8|count[1]~177_pterm3_bus\,
	pterm4 => \inst8|count[1]~177_pterm4_bus\,
	pterm5 => \inst8|count[1]~177_pterm5_bus\,
	pxor => \inst8|count[1]~177_pxor_bus\,
	pclk => \inst8|count[1]~177_pclk_bus\,
	papre => \inst8|count[1]~177_papre_bus\,
	paclr => \inst8|count[1]~177_paclr_bus\,
	pena => \inst8|count[1]~177_pena_bus\,
	pexpout => \inst8|count[1]~177_pexpout\);

\inst8|count[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|count[1]~177_pexpout\,
	pterm0 => \inst8|count[1]_pterm0_bus\,
	pterm1 => \inst8|count[1]_pterm1_bus\,
	pterm2 => \inst8|count[1]_pterm2_bus\,
	pterm3 => \inst8|count[1]_pterm3_bus\,
	pterm4 => \inst8|count[1]_pterm4_bus\,
	pterm5 => \inst8|count[1]_pterm5_bus\,
	pxor => \inst8|count[1]_pxor_bus\,
	pclk => \inst8|count[1]_pclk_bus\,
	papre => \inst8|count[1]_papre_bus\,
	paclr => \inst8|count[1]_paclr_bus\,
	pena => \inst8|count[1]_pena_bus\,
	dataout => \inst8|count[1]~dataout\);

\inst8|Equal3~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|Equal3~13_pterm0_bus\,
	pterm1 => \inst8|Equal3~13_pterm1_bus\,
	pterm2 => \inst8|Equal3~13_pterm2_bus\,
	pterm3 => \inst8|Equal3~13_pterm3_bus\,
	pterm4 => \inst8|Equal3~13_pterm4_bus\,
	pterm5 => \inst8|Equal3~13_pterm5_bus\,
	pxor => \inst8|Equal3~13_pxor_bus\,
	pclk => \inst8|Equal3~13_pclk_bus\,
	papre => \inst8|Equal3~13_papre_bus\,
	paclr => \inst8|Equal3~13_paclr_bus\,
	pena => \inst8|Equal3~13_pena_bus\,
	dataout => \inst8|Equal3~13_dataout\);

\inst8|cp[0]~135bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[0]~135bal_pterm0_bus\,
	pterm1 => \inst8|cp[0]~135bal_pterm1_bus\,
	pterm2 => \inst8|cp[0]~135bal_pterm2_bus\,
	pterm3 => \inst8|cp[0]~135bal_pterm3_bus\,
	pterm4 => \inst8|cp[0]~135bal_pterm4_bus\,
	pterm5 => \inst8|cp[0]~135bal_pterm5_bus\,
	pxor => \inst8|cp[0]~135bal_pxor_bus\,
	pclk => \inst8|cp[0]~135bal_pclk_bus\,
	papre => \inst8|cp[0]~135bal_papre_bus\,
	paclr => \inst8|cp[0]~135bal_paclr_bus\,
	pena => \inst8|cp[0]~135bal_pena_bus\,
	dataout => \inst8|cp[0]~135bal_dataout\);

\inst8|cp[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[0]_pterm0_bus\,
	pterm1 => \inst8|cp[0]_pterm1_bus\,
	pterm2 => \inst8|cp[0]_pterm2_bus\,
	pterm3 => \inst8|cp[0]_pterm3_bus\,
	pterm4 => \inst8|cp[0]_pterm4_bus\,
	pterm5 => \inst8|cp[0]_pterm5_bus\,
	pxor => \inst8|cp[0]_pxor_bus\,
	pclk => \inst8|cp[0]_pclk_bus\,
	papre => \inst8|cp[0]_papre_bus\,
	paclr => \inst8|cp[0]_paclr_bus\,
	pena => \inst8|cp[0]_pena_bus\,
	dataout => \inst8|cp[0]~dataout\);

\inst8|cp[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[2]_pterm0_bus\,
	pterm1 => \inst8|cp[2]_pterm1_bus\,
	pterm2 => \inst8|cp[2]_pterm2_bus\,
	pterm3 => \inst8|cp[2]_pterm3_bus\,
	pterm4 => \inst8|cp[2]_pterm4_bus\,
	pterm5 => \inst8|cp[2]_pterm5_bus\,
	pxor => \inst8|cp[2]_pxor_bus\,
	pclk => \inst8|cp[2]_pclk_bus\,
	papre => \inst8|cp[2]_papre_bus\,
	paclr => \inst8|cp[2]_paclr_bus\,
	pena => \inst8|cp[2]_pena_bus\,
	dataout => \inst8|cp[2]~dataout\);

\inst8|cp[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[3]_pterm0_bus\,
	pterm1 => \inst8|cp[3]_pterm1_bus\,
	pterm2 => \inst8|cp[3]_pterm2_bus\,
	pterm3 => \inst8|cp[3]_pterm3_bus\,
	pterm4 => \inst8|cp[3]_pterm4_bus\,
	pterm5 => \inst8|cp[3]_pterm5_bus\,
	pxor => \inst8|cp[3]_pxor_bus\,
	pclk => \inst8|cp[3]_pclk_bus\,
	papre => \inst8|cp[3]_papre_bus\,
	paclr => \inst8|cp[3]_paclr_bus\,
	pena => \inst8|cp[3]_pena_bus\,
	dataout => \inst8|cp[3]~dataout\);

\inst8|cp~145\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp~145_pterm0_bus\,
	pterm1 => \inst8|cp~145_pterm1_bus\,
	pterm2 => \inst8|cp~145_pterm2_bus\,
	pterm3 => \inst8|cp~145_pterm3_bus\,
	pterm4 => \inst8|cp~145_pterm4_bus\,
	pterm5 => \inst8|cp~145_pterm5_bus\,
	pxor => \inst8|cp~145_pxor_bus\,
	pclk => \inst8|cp~145_pclk_bus\,
	papre => \inst8|cp~145_papre_bus\,
	paclr => \inst8|cp~145_paclr_bus\,
	pena => \inst8|cp~145_pena_bus\,
	dataout => \inst8|cp~145_dataout\);

\inst8|cp[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[1]_pterm0_bus\,
	pterm1 => \inst8|cp[1]_pterm1_bus\,
	pterm2 => \inst8|cp[1]_pterm2_bus\,
	pterm3 => \inst8|cp[1]_pterm3_bus\,
	pterm4 => \inst8|cp[1]_pterm4_bus\,
	pterm5 => \inst8|cp[1]_pterm5_bus\,
	pxor => \inst8|cp[1]_pxor_bus\,
	pclk => \inst8|cp[1]_pclk_bus\,
	papre => \inst8|cp[1]_papre_bus\,
	paclr => \inst8|cp[1]_paclr_bus\,
	pena => \inst8|cp[1]_pena_bus\,
	dataout => \inst8|cp[1]~dataout\);

\inst6|Mux0~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux0~6_pterm0_bus\,
	pterm1 => \inst6|Mux0~6_pterm1_bus\,
	pterm2 => \inst6|Mux0~6_pterm2_bus\,
	pterm3 => \inst6|Mux0~6_pterm3_bus\,
	pterm4 => \inst6|Mux0~6_pterm4_bus\,
	pterm5 => \inst6|Mux0~6_pterm5_bus\,
	pxor => \inst6|Mux0~6_pxor_bus\,
	pclk => \inst6|Mux0~6_pclk_bus\,
	papre => \inst6|Mux0~6_papre_bus\,
	paclr => \inst6|Mux0~6_paclr_bus\,
	pena => \inst6|Mux0~6_pena_bus\,
	dataout => \inst6|Mux0~6_dataout\);

\inst6|Mux1~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux1~14_pterm0_bus\,
	pterm1 => \inst6|Mux1~14_pterm1_bus\,
	pterm2 => \inst6|Mux1~14_pterm2_bus\,
	pterm3 => \inst6|Mux1~14_pterm3_bus\,
	pterm4 => \inst6|Mux1~14_pterm4_bus\,
	pterm5 => \inst6|Mux1~14_pterm5_bus\,
	pxor => \inst6|Mux1~14_pxor_bus\,
	pclk => \inst6|Mux1~14_pclk_bus\,
	papre => \inst6|Mux1~14_papre_bus\,
	paclr => \inst6|Mux1~14_paclr_bus\,
	pena => \inst6|Mux1~14_pena_bus\,
	pexpout => \inst6|Mux1~14_pexpout\);

\inst6|Mux1~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst6|Mux1~14_pexpout\,
	pterm0 => \inst6|Mux1~13_pterm0_bus\,
	pterm1 => \inst6|Mux1~13_pterm1_bus\,
	pterm2 => \inst6|Mux1~13_pterm2_bus\,
	pterm3 => \inst6|Mux1~13_pterm3_bus\,
	pterm4 => \inst6|Mux1~13_pterm4_bus\,
	pterm5 => \inst6|Mux1~13_pterm5_bus\,
	pxor => \inst6|Mux1~13_pxor_bus\,
	pclk => \inst6|Mux1~13_pclk_bus\,
	papre => \inst6|Mux1~13_papre_bus\,
	paclr => \inst6|Mux1~13_paclr_bus\,
	pena => \inst6|Mux1~13_pena_bus\,
	dataout => \inst6|Mux1~13_dataout\);

\inst6|Mux5~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux5~8_pterm0_bus\,
	pterm1 => \inst6|Mux5~8_pterm1_bus\,
	pterm2 => \inst6|Mux5~8_pterm2_bus\,
	pterm3 => \inst6|Mux5~8_pterm3_bus\,
	pterm4 => \inst6|Mux5~8_pterm4_bus\,
	pterm5 => \inst6|Mux5~8_pterm5_bus\,
	pxor => \inst6|Mux5~8_pxor_bus\,
	pclk => \inst6|Mux5~8_pclk_bus\,
	papre => \inst6|Mux5~8_papre_bus\,
	paclr => \inst6|Mux5~8_paclr_bus\,
	pena => \inst6|Mux5~8_pena_bus\,
	pexpout => \inst6|Mux5~8_pexpout\);

\inst6|Mux5~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst6|Mux5~8_pexpout\,
	pterm0 => \inst6|Mux5~6_pterm0_bus\,
	pterm1 => \inst6|Mux5~6_pterm1_bus\,
	pterm2 => \inst6|Mux5~6_pterm2_bus\,
	pterm3 => \inst6|Mux5~6_pterm3_bus\,
	pterm4 => \inst6|Mux5~6_pterm4_bus\,
	pterm5 => \inst6|Mux5~6_pterm5_bus\,
	pxor => \inst6|Mux5~6_pxor_bus\,
	pclk => \inst6|Mux5~6_pclk_bus\,
	papre => \inst6|Mux5~6_papre_bus\,
	paclr => \inst6|Mux5~6_paclr_bus\,
	pena => \inst6|Mux5~6_pena_bus\,
	dataout => \inst6|Mux5~6_dataout\);

\inst6|Mux6~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux6~11_pterm0_bus\,
	pterm1 => \inst6|Mux6~11_pterm1_bus\,
	pterm2 => \inst6|Mux6~11_pterm2_bus\,
	pterm3 => \inst6|Mux6~11_pterm3_bus\,
	pterm4 => \inst6|Mux6~11_pterm4_bus\,
	pterm5 => \inst6|Mux6~11_pterm5_bus\,
	pxor => \inst6|Mux6~11_pxor_bus\,
	pclk => \inst6|Mux6~11_pclk_bus\,
	papre => \inst6|Mux6~11_papre_bus\,
	paclr => \inst6|Mux6~11_paclr_bus\,
	pena => \inst6|Mux6~11_pena_bus\,
	pexpout => \inst6|Mux6~11_pexpout\);

\inst6|Mux6~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst6|Mux6~11_pexpout\,
	pterm0 => \inst6|Mux6~9_pterm0_bus\,
	pterm1 => \inst6|Mux6~9_pterm1_bus\,
	pterm2 => \inst6|Mux6~9_pterm2_bus\,
	pterm3 => \inst6|Mux6~9_pterm3_bus\,
	pterm4 => \inst6|Mux6~9_pterm4_bus\,
	pterm5 => \inst6|Mux6~9_pterm5_bus\,
	pxor => \inst6|Mux6~9_pxor_bus\,
	pclk => \inst6|Mux6~9_pclk_bus\,
	papre => \inst6|Mux6~9_papre_bus\,
	paclr => \inst6|Mux6~9_paclr_bus\,
	pena => \inst6|Mux6~9_pena_bus\,
	dataout => \inst6|Mux6~9_dataout\);

\inst6|Mux2~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux2~24_pterm0_bus\,
	pterm1 => \inst6|Mux2~24_pterm1_bus\,
	pterm2 => \inst6|Mux2~24_pterm2_bus\,
	pterm3 => \inst6|Mux2~24_pterm3_bus\,
	pterm4 => \inst6|Mux2~24_pterm4_bus\,
	pterm5 => \inst6|Mux2~24_pterm5_bus\,
	pxor => \inst6|Mux2~24_pxor_bus\,
	pclk => \inst6|Mux2~24_pclk_bus\,
	papre => \inst6|Mux2~24_papre_bus\,
	paclr => \inst6|Mux2~24_paclr_bus\,
	pena => \inst6|Mux2~24_pena_bus\,
	pexpout => \inst6|Mux2~24_pexpout\);

\inst6|Mux2~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst6|Mux2~24_pexpout\,
	pterm0 => \inst6|Mux2~22_pterm0_bus\,
	pterm1 => \inst6|Mux2~22_pterm1_bus\,
	pterm2 => \inst6|Mux2~22_pterm2_bus\,
	pterm3 => \inst6|Mux2~22_pterm3_bus\,
	pterm4 => \inst6|Mux2~22_pterm4_bus\,
	pterm5 => \inst6|Mux2~22_pterm5_bus\,
	pxor => \inst6|Mux2~22_pxor_bus\,
	pclk => \inst6|Mux2~22_pclk_bus\,
	papre => \inst6|Mux2~22_papre_bus\,
	paclr => \inst6|Mux2~22_paclr_bus\,
	pena => \inst6|Mux2~22_pena_bus\,
	dataout => \inst6|Mux2~22_dataout\);

\inst6|Mux4~4\ : max_sexp
PORT MAP (
	datain => \inst6|Mux4~4_datain_bus\,
	dataout => \inst6|Mux4~4_dataout\);

\inst6|Mux4~5\ : max_sexp
PORT MAP (
	datain => \inst6|Mux4~5_datain_bus\,
	dataout => \inst6|Mux4~5_dataout\);

\inst6|Mux4~6\ : max_sexp
PORT MAP (
	datain => \inst6|Mux4~6_datain_bus\,
	dataout => \inst6|Mux4~6_dataout\);

\inst6|Mux4~7\ : max_sexp
PORT MAP (
	datain => \inst6|Mux4~7_datain_bus\,
	dataout => \inst6|Mux4~7_dataout\);

\inst6|Mux4~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux4~12_pterm0_bus\,
	pterm1 => \inst6|Mux4~12_pterm1_bus\,
	pterm2 => \inst6|Mux4~12_pterm2_bus\,
	pterm3 => \inst6|Mux4~12_pterm3_bus\,
	pterm4 => \inst6|Mux4~12_pterm4_bus\,
	pterm5 => \inst6|Mux4~12_pterm5_bus\,
	pxor => \inst6|Mux4~12_pxor_bus\,
	pclk => \inst6|Mux4~12_pclk_bus\,
	papre => \inst6|Mux4~12_papre_bus\,
	paclr => \inst6|Mux4~12_paclr_bus\,
	pena => \inst6|Mux4~12_pena_bus\,
	dataout => \inst6|Mux4~12_dataout\);

\inst6|Mux3~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux3~9_pterm0_bus\,
	pterm1 => \inst6|Mux3~9_pterm1_bus\,
	pterm2 => \inst6|Mux3~9_pterm2_bus\,
	pterm3 => \inst6|Mux3~9_pterm3_bus\,
	pterm4 => \inst6|Mux3~9_pterm4_bus\,
	pterm5 => \inst6|Mux3~9_pterm5_bus\,
	pxor => \inst6|Mux3~9_pxor_bus\,
	pclk => \inst6|Mux3~9_pclk_bus\,
	papre => \inst6|Mux3~9_papre_bus\,
	paclr => \inst6|Mux3~9_paclr_bus\,
	pena => \inst6|Mux3~9_pena_bus\,
	dataout => \inst6|Mux3~9_dataout\);

\inst6|Mux4~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst6|Mux4~22_pterm0_bus\,
	pterm1 => \inst6|Mux4~22_pterm1_bus\,
	pterm2 => \inst6|Mux4~22_pterm2_bus\,
	pterm3 => \inst6|Mux4~22_pterm3_bus\,
	pterm4 => \inst6|Mux4~22_pterm4_bus\,
	pterm5 => \inst6|Mux4~22_pterm5_bus\,
	pxor => \inst6|Mux4~22_pxor_bus\,
	pclk => \inst6|Mux4~22_pclk_bus\,
	papre => \inst6|Mux4~22_papre_bus\,
	paclr => \inst6|Mux4~22_paclr_bus\,
	pena => \inst6|Mux4~22_pena_bus\,
	pexpout => \inst6|Mux4~22_pexpout\);

\inst6|Mux4~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst6|Mux4~22_pexpout\,
	pterm0 => \inst6|Mux4~20_pterm0_bus\,
	pterm1 => \inst6|Mux4~20_pterm1_bus\,
	pterm2 => \inst6|Mux4~20_pterm2_bus\,
	pterm3 => \inst6|Mux4~20_pterm3_bus\,
	pterm4 => \inst6|Mux4~20_pterm4_bus\,
	pterm5 => \inst6|Mux4~20_pterm5_bus\,
	pxor => \inst6|Mux4~20_pxor_bus\,
	pclk => \inst6|Mux4~20_pclk_bus\,
	papre => \inst6|Mux4~20_papre_bus\,
	paclr => \inst6|Mux4~20_paclr_bus\,
	pena => \inst6|Mux4~20_pena_bus\,
	dataout => \inst6|Mux4~20_dataout\);

\inst8|cp[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[4]_pterm0_bus\,
	pterm1 => \inst8|cp[4]_pterm1_bus\,
	pterm2 => \inst8|cp[4]_pterm2_bus\,
	pterm3 => \inst8|cp[4]_pterm3_bus\,
	pterm4 => \inst8|cp[4]_pterm4_bus\,
	pterm5 => \inst8|cp[4]_pterm5_bus\,
	pxor => \inst8|cp[4]_pxor_bus\,
	pclk => \inst8|cp[4]_pclk_bus\,
	papre => \inst8|cp[4]_papre_bus\,
	paclr => \inst8|cp[4]_paclr_bus\,
	pena => \inst8|cp[4]_pena_bus\,
	dataout => \inst8|cp[4]~dataout\);

\inst8|cur_bot_m[4]~34\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cur_bot_m[4]~34_pterm0_bus\,
	pterm1 => \inst8|cur_bot_m[4]~34_pterm1_bus\,
	pterm2 => \inst8|cur_bot_m[4]~34_pterm2_bus\,
	pterm3 => \inst8|cur_bot_m[4]~34_pterm3_bus\,
	pterm4 => \inst8|cur_bot_m[4]~34_pterm4_bus\,
	pterm5 => \inst8|cur_bot_m[4]~34_pterm5_bus\,
	pxor => \inst8|cur_bot_m[4]~34_pxor_bus\,
	pclk => \inst8|cur_bot_m[4]~34_pclk_bus\,
	papre => \inst8|cur_bot_m[4]~34_papre_bus\,
	paclr => \inst8|cur_bot_m[4]~34_paclr_bus\,
	pena => \inst8|cur_bot_m[4]~34_pena_bus\,
	dataout => \inst8|cur_bot_m[4]~34_dataout\);

\inst8|cp[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[6]_pterm0_bus\,
	pterm1 => \inst8|cp[6]_pterm1_bus\,
	pterm2 => \inst8|cp[6]_pterm2_bus\,
	pterm3 => \inst8|cp[6]_pterm3_bus\,
	pterm4 => \inst8|cp[6]_pterm4_bus\,
	pterm5 => \inst8|cp[6]_pterm5_bus\,
	pxor => \inst8|cp[6]_pxor_bus\,
	pclk => \inst8|cp[6]_pclk_bus\,
	papre => \inst8|cp[6]_papre_bus\,
	paclr => \inst8|cp[6]_paclr_bus\,
	pena => \inst8|cp[6]_pena_bus\,
	dataout => \inst8|cp[6]~dataout\);

\inst8|cp[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[7]_pterm0_bus\,
	pterm1 => \inst8|cp[7]_pterm1_bus\,
	pterm2 => \inst8|cp[7]_pterm2_bus\,
	pterm3 => \inst8|cp[7]_pterm3_bus\,
	pterm4 => \inst8|cp[7]_pterm4_bus\,
	pterm5 => \inst8|cp[7]_pterm5_bus\,
	pxor => \inst8|cp[7]_pxor_bus\,
	pclk => \inst8|cp[7]_pclk_bus\,
	papre => \inst8|cp[7]_papre_bus\,
	paclr => \inst8|cp[7]_paclr_bus\,
	pena => \inst8|cp[7]_pena_bus\,
	dataout => \inst8|cp[7]~dataout\);

\inst8|cp~169\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp~169_pterm0_bus\,
	pterm1 => \inst8|cp~169_pterm1_bus\,
	pterm2 => \inst8|cp~169_pterm2_bus\,
	pterm3 => \inst8|cp~169_pterm3_bus\,
	pterm4 => \inst8|cp~169_pterm4_bus\,
	pterm5 => \inst8|cp~169_pterm5_bus\,
	pxor => \inst8|cp~169_pxor_bus\,
	pclk => \inst8|cp~169_pclk_bus\,
	papre => \inst8|cp~169_papre_bus\,
	paclr => \inst8|cp~169_paclr_bus\,
	pena => \inst8|cp~169_pena_bus\,
	dataout => \inst8|cp~169_dataout\);

\inst8|cp[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[5]_pterm0_bus\,
	pterm1 => \inst8|cp[5]_pterm1_bus\,
	pterm2 => \inst8|cp[5]_pterm2_bus\,
	pterm3 => \inst8|cp[5]_pterm3_bus\,
	pterm4 => \inst8|cp[5]_pterm4_bus\,
	pterm5 => \inst8|cp[5]_pterm5_bus\,
	pxor => \inst8|cp[5]_pxor_bus\,
	pclk => \inst8|cp[5]_pclk_bus\,
	papre => \inst8|cp[5]_papre_bus\,
	paclr => \inst8|cp[5]_paclr_bus\,
	pena => \inst8|cp[5]_pena_bus\,
	dataout => \inst8|cp[5]~dataout\);

\inst8|cur_bot_m[5]~37\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cur_bot_m[5]~37_pterm0_bus\,
	pterm1 => \inst8|cur_bot_m[5]~37_pterm1_bus\,
	pterm2 => \inst8|cur_bot_m[5]~37_pterm2_bus\,
	pterm3 => \inst8|cur_bot_m[5]~37_pterm3_bus\,
	pterm4 => \inst8|cur_bot_m[5]~37_pterm4_bus\,
	pterm5 => \inst8|cur_bot_m[5]~37_pterm5_bus\,
	pxor => \inst8|cur_bot_m[5]~37_pxor_bus\,
	pclk => \inst8|cur_bot_m[5]~37_pclk_bus\,
	papre => \inst8|cur_bot_m[5]~37_papre_bus\,
	paclr => \inst8|cur_bot_m[5]~37_paclr_bus\,
	pena => \inst8|cur_bot_m[5]~37_pena_bus\,
	dataout => \inst8|cur_bot_m[5]~37_dataout\);

\inst8|cur_bot_m[6]~40\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cur_bot_m[6]~40_pterm0_bus\,
	pterm1 => \inst8|cur_bot_m[6]~40_pterm1_bus\,
	pterm2 => \inst8|cur_bot_m[6]~40_pterm2_bus\,
	pterm3 => \inst8|cur_bot_m[6]~40_pterm3_bus\,
	pterm4 => \inst8|cur_bot_m[6]~40_pterm4_bus\,
	pterm5 => \inst8|cur_bot_m[6]~40_pterm5_bus\,
	pxor => \inst8|cur_bot_m[6]~40_pxor_bus\,
	pclk => \inst8|cur_bot_m[6]~40_pclk_bus\,
	papre => \inst8|cur_bot_m[6]~40_papre_bus\,
	paclr => \inst8|cur_bot_m[6]~40_paclr_bus\,
	pena => \inst8|cur_bot_m[6]~40_pena_bus\,
	dataout => \inst8|cur_bot_m[6]~40_dataout\);

\inst8|cur_bot_m[7]~43\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cur_bot_m[7]~43_pterm0_bus\,
	pterm1 => \inst8|cur_bot_m[7]~43_pterm1_bus\,
	pterm2 => \inst8|cur_bot_m[7]~43_pterm2_bus\,
	pterm3 => \inst8|cur_bot_m[7]~43_pterm3_bus\,
	pterm4 => \inst8|cur_bot_m[7]~43_pterm4_bus\,
	pterm5 => \inst8|cur_bot_m[7]~43_pterm5_bus\,
	pxor => \inst8|cur_bot_m[7]~43_pxor_bus\,
	pclk => \inst8|cur_bot_m[7]~43_pclk_bus\,
	papre => \inst8|cur_bot_m[7]~43_papre_bus\,
	paclr => \inst8|cur_bot_m[7]~43_paclr_bus\,
	pena => \inst8|cur_bot_m[7]~43_pena_bus\,
	dataout => \inst8|cur_bot_m[7]~43_dataout\);

\inst8|process_0~13\ : max_sexp
PORT MAP (
	datain => \inst8|process_0~13_datain_bus\,
	dataout => \inst8|process_0~13_dataout\);

\inst8|warn_light_m~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|warn_light_m~24_pterm0_bus\,
	pterm1 => \inst8|warn_light_m~24_pterm1_bus\,
	pterm2 => \inst8|warn_light_m~24_pterm2_bus\,
	pterm3 => \inst8|warn_light_m~24_pterm3_bus\,
	pterm4 => \inst8|warn_light_m~24_pterm4_bus\,
	pterm5 => \inst8|warn_light_m~24_pterm5_bus\,
	pxor => \inst8|warn_light_m~24_pxor_bus\,
	pclk => \inst8|warn_light_m~24_pclk_bus\,
	papre => \inst8|warn_light_m~24_papre_bus\,
	paclr => \inst8|warn_light_m~24_paclr_bus\,
	pena => \inst8|warn_light_m~24_pena_bus\,
	dataout => \inst8|warn_light_m~24_dataout\);

\inst8|work_light_m~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|work_light_m~14_pterm0_bus\,
	pterm1 => \inst8|work_light_m~14_pterm1_bus\,
	pterm2 => \inst8|work_light_m~14_pterm2_bus\,
	pterm3 => \inst8|work_light_m~14_pterm3_bus\,
	pterm4 => \inst8|work_light_m~14_pterm4_bus\,
	pterm5 => \inst8|work_light_m~14_pterm5_bus\,
	pxor => \inst8|work_light_m~14_pxor_bus\,
	pclk => \inst8|work_light_m~14_pclk_bus\,
	papre => \inst8|work_light_m~14_papre_bus\,
	paclr => \inst8|work_light_m~14_paclr_bus\,
	pena => \inst8|work_light_m~14_pena_bus\,
	dataout => \inst8|work_light_m~14_dataout\);

\inst8|cp[8]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[8]_pterm0_bus\,
	pterm1 => \inst8|cp[8]_pterm1_bus\,
	pterm2 => \inst8|cp[8]_pterm2_bus\,
	pterm3 => \inst8|cp[8]_pterm3_bus\,
	pterm4 => \inst8|cp[8]_pterm4_bus\,
	pterm5 => \inst8|cp[8]_pterm5_bus\,
	pxor => \inst8|cp[8]_pxor_bus\,
	pclk => \inst8|cp[8]_pclk_bus\,
	papre => \inst8|cp[8]_papre_bus\,
	paclr => \inst8|cp[8]_paclr_bus\,
	pena => \inst8|cp[8]_pena_bus\,
	dataout => \inst8|cp[8]~dataout\);

\inst8|stop_light_m~7sexpand1\ : max_sexp
PORT MAP (
	datain => \inst8|stop_light_m~7sexpand1_datain_bus\,
	dataout => \inst8|stop_light_m~7sexpand1_dataout\);

\inst8|comb~3sexpand2\ : max_sexp
PORT MAP (
	datain => \inst8|comb~3sexpand2_datain_bus\,
	dataout => \inst8|comb~3sexpand2_dataout\);

\inst8|comb~3sexpand3\ : max_sexp
PORT MAP (
	datain => \inst8|comb~3sexpand3_datain_bus\,
	dataout => \inst8|comb~3sexpand3_dataout\);

\inst8|stop_light_m~30\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|stop_light_m~30_pterm0_bus\,
	pterm1 => \inst8|stop_light_m~30_pterm1_bus\,
	pterm2 => \inst8|stop_light_m~30_pterm2_bus\,
	pterm3 => \inst8|stop_light_m~30_pterm3_bus\,
	pterm4 => \inst8|stop_light_m~30_pterm4_bus\,
	pterm5 => \inst8|stop_light_m~30_pterm5_bus\,
	pxor => \inst8|stop_light_m~30_pxor_bus\,
	pclk => \inst8|stop_light_m~30_pclk_bus\,
	papre => \inst8|stop_light_m~30_papre_bus\,
	paclr => \inst8|stop_light_m~30_paclr_bus\,
	pena => \inst8|stop_light_m~30_pena_bus\,
	pexpout => \inst8|stop_light_m~30_pexpout\);

\inst8|stop_light_m~15\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \inst8|stop_light_m~30_pexpout\,
	pterm0 => \inst8|stop_light_m~15_pterm0_bus\,
	pterm1 => \inst8|stop_light_m~15_pterm1_bus\,
	pterm2 => \inst8|stop_light_m~15_pterm2_bus\,
	pterm3 => \inst8|stop_light_m~15_pterm3_bus\,
	pterm4 => \inst8|stop_light_m~15_pterm4_bus\,
	pterm5 => \inst8|stop_light_m~15_pterm5_bus\,
	pxor => \inst8|stop_light_m~15_pxor_bus\,
	pclk => \inst8|stop_light_m~15_pclk_bus\,
	papre => \inst8|stop_light_m~15_papre_bus\,
	paclr => \inst8|stop_light_m~15_paclr_bus\,
	pena => \inst8|stop_light_m~15_pena_bus\,
	dataout => \inst8|stop_light_m~15_dataout\);

\inst8|cp[9]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[9]_pterm0_bus\,
	pterm1 => \inst8|cp[9]_pterm1_bus\,
	pterm2 => \inst8|cp[9]_pterm2_bus\,
	pterm3 => \inst8|cp[9]_pterm3_bus\,
	pterm4 => \inst8|cp[9]_pterm4_bus\,
	pterm5 => \inst8|cp[9]_pterm5_bus\,
	pxor => \inst8|cp[9]_pxor_bus\,
	pclk => \inst8|cp[9]_pclk_bus\,
	papre => \inst8|cp[9]_papre_bus\,
	paclr => \inst8|cp[9]_paclr_bus\,
	pena => \inst8|cp[9]_pena_bus\,
	dataout => \inst8|cp[9]~dataout\);

\inst8|cp[10]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[10]_pterm0_bus\,
	pterm1 => \inst8|cp[10]_pterm1_bus\,
	pterm2 => \inst8|cp[10]_pterm2_bus\,
	pterm3 => \inst8|cp[10]_pterm3_bus\,
	pterm4 => \inst8|cp[10]_pterm4_bus\,
	pterm5 => \inst8|cp[10]_pterm5_bus\,
	pxor => \inst8|cp[10]_pxor_bus\,
	pclk => \inst8|cp[10]_pclk_bus\,
	papre => \inst8|cp[10]_papre_bus\,
	paclr => \inst8|cp[10]_paclr_bus\,
	pena => \inst8|cp[10]_pena_bus\,
	dataout => \inst8|cp[10]~dataout\);

\inst8|cp[11]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \inst8|cp[11]_pterm0_bus\,
	pterm1 => \inst8|cp[11]_pterm1_bus\,
	pterm2 => \inst8|cp[11]_pterm2_bus\,
	pterm3 => \inst8|cp[11]_pterm3_bus\,
	pterm4 => \inst8|cp[11]_pterm4_bus\,
	pterm5 => \inst8|cp[11]_pterm5_bus\,
	pxor => \inst8|cp[11]_pxor_bus\,
	pclk => \inst8|cp[11]_pclk_bus\,
	papre => \inst8|cp[11]_papre_bus\,
	paclr => \inst8|cp[11]_paclr_bus\,
	pena => \inst8|cp[11]_pena_bus\,
	dataout => \inst8|cp[11]~dataout\);

\cur_pill[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[0]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(0));

\cur_pill[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[1]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(1));

\cur_pill[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[2]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(2));

\cur_pill[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[3]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(3));

\cur_bot_first[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux0~6_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(7));

\cur_bot_first[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux1~13_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(6));

\cur_bot_first[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux5~6_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(2));

\cur_bot_first[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux6~9_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(1));

\cur_bot_first[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux2~22_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(5));

\cur_bot_first[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux4~12_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(0));

\cur_bot_first[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux3~9_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(4));

\cur_bot_first[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux4~20_dataout\,
	oe => VCC,
	padio => ww_cur_bot_first(3));

\cur_pill[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[4]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(4));

\cur_bot_second[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cur_bot_m[4]~34_dataout\,
	oe => VCC,
	padio => ww_cur_bot_second(0));

\cur_pill[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[5]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(5));

\cur_bot_second[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cur_bot_m[5]~37_dataout\,
	oe => VCC,
	padio => ww_cur_bot_second(1));

\cur_pill[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[6]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(6));

\cur_bot_second[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cur_bot_m[6]~40_dataout\,
	oe => VCC,
	padio => ww_cur_bot_second(2));

\cur_bot_second[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cur_bot_m[7]~43_dataout\,
	oe => VCC,
	padio => ww_cur_bot_second(3));

\cur_pill[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[7]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(7));

\warn_light~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|warn_light_m~24_dataout\,
	oe => VCC,
	padio => ww_warn_light);

\work_light~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|work_light_m~14_dataout\,
	oe => VCC,
	padio => ww_work_light);

\cur_pill[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[8]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(8));

\stop_light~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|stop_light_m~15_dataout\,
	oe => VCC,
	padio => ww_stop_light);

\cur_pill[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[9]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(9));

\cur_pill[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[10]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(10));

\cur_pill[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \inst8|cp[11]~dataout\,
	oe => VCC,
	padio => ww_cur_pill(11));
END structure;


