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

-- DATE "06/03/2022 17:37:55"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, stratixii;
USE IEEE.std_logic_1164.all;
USE stratixii.stratixii_components.all;

ENTITY 	clock IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	qd : IN std_logic;
	en : IN std_logic;
	d : IN std_logic_vector(1 DOWNTO 0);
	ring : OUT std_logic;
	ledout1 : OUT std_logic_vector(6 DOWNTO 0);
	ledout2 : OUT std_logic_vector(19 DOWNTO 0);
	setled : OUT std_logic
	);
END clock;

ARCHITECTURE structure OF clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_qd : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_d : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ring : std_logic;
SIGNAL ww_ledout1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledout2 : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_setled : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|m_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|m_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|m_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u2|num0[0]~7_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \clr~clkctrl_outclk\ : std_logic;
SIGNAL \u2|num0[2]~6_combout\ : std_logic;
SIGNAL \u2|num0~4_combout\ : std_logic;
SIGNAL \u2|num0[0]~7DUPLICATE_combout\ : std_logic;
SIGNAL \u2|num0[0]~DUPLICATE_regout\ : std_logic;
SIGNAL \u6|Equal7~0_combout\ : std_logic;
SIGNAL \u2|num0~5_combout\ : std_logic;
SIGNAL \u2|num0[2]~6DUPLICATE_combout\ : std_logic;
SIGNAL \u2|num0[2]~DUPLICATE_regout\ : std_logic;
SIGNAL \u7|Mux6~0_combout\ : std_logic;
SIGNAL \u12|count~0_combout\ : std_logic;
SIGNAL \u12|count~regout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \u5|s[0]~0_combout\ : std_logic;
SIGNAL \u8|temp[6]~6_combout\ : std_logic;
SIGNAL \u7|Mux5~0_combout\ : std_logic;
SIGNAL \u7|Mux4~0_combout\ : std_logic;
SIGNAL \u7|Mux3~0_combout\ : std_logic;
SIGNAL \u7|Mux2~0_combout\ : std_logic;
SIGNAL \u7|Mux1~0_combout\ : std_logic;
SIGNAL \u7|Mux0~0_combout\ : std_logic;
SIGNAL \u1|Add0~1_sumout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Add0~2\ : std_logic;
SIGNAL \u1|Add0~5_sumout\ : std_logic;
SIGNAL \u1|Add0~6\ : std_logic;
SIGNAL \u1|Add0~9_sumout\ : std_logic;
SIGNAL \u1|Add0~10\ : std_logic;
SIGNAL \u1|Add0~13_sumout\ : std_logic;
SIGNAL \u1|Add0~14\ : std_logic;
SIGNAL \u1|Add0~17_sumout\ : std_logic;
SIGNAL \u1|Add0~18\ : std_logic;
SIGNAL \u1|Add0~21_sumout\ : std_logic;
SIGNAL \u1|Add0~22\ : std_logic;
SIGNAL \u1|Add0~25_sumout\ : std_logic;
SIGNAL \u1|Add0~26\ : std_logic;
SIGNAL \u1|Add0~29_sumout\ : std_logic;
SIGNAL \u1|Add0~30\ : std_logic;
SIGNAL \u1|Add0~33_sumout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Add0~34\ : std_logic;
SIGNAL \u1|Add0~37_sumout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|cp~regout\ : std_logic;
SIGNAL \qd~combout\ : std_logic;
SIGNAL \u2|m_clk~combout\ : std_logic;
SIGNAL \u2|m_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u2|num1[0]~7_combout\ : std_logic;
SIGNAL \u2|num1[3]~5_combout\ : std_logic;
SIGNAL \u2|num1~4_combout\ : std_logic;
SIGNAL \u2|Equal1~0_combout\ : std_logic;
SIGNAL \u2|num1~6_combout\ : std_logic;
SIGNAL \u5|s[1]~1_combout\ : std_logic;
SIGNAL \u2|process_1~1_combout\ : std_logic;
SIGNAL \u2|cout~regout\ : std_logic;
SIGNAL \u3|m_clk~combout\ : std_logic;
SIGNAL \u3|m_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u3|num0[0]~7_combout\ : std_logic;
SIGNAL \u10|temp[3]~3_combout\ : std_logic;
SIGNAL \u3|num0[2]~6_combout\ : std_logic;
SIGNAL \u3|Equal0~0_combout\ : std_logic;
SIGNAL \u3|num0~5_combout\ : std_logic;
SIGNAL \u3|num0~4_combout\ : std_logic;
SIGNAL \u3|num1[0]~7_combout\ : std_logic;
SIGNAL \u3|num1~4_combout\ : std_logic;
SIGNAL \u3|num1[3]~5_combout\ : std_logic;
SIGNAL \u3|num1~6_combout\ : std_logic;
SIGNAL \u5|s[2]~2_combout\ : std_logic;
SIGNAL \u6|ring~7_combout\ : std_logic;
SIGNAL \u3|process_1~1_combout\ : std_logic;
SIGNAL \u3|cout~regout\ : std_logic;
SIGNAL \u4|m_clk~combout\ : std_logic;
SIGNAL \u4|m_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u4|num0[0]~11_combout\ : std_logic;
SIGNAL \u12|temp[3]~3_combout\ : std_logic;
SIGNAL \u4|num0~10_combout\ : std_logic;
SIGNAL \u4|Add0~1_sumout\ : std_logic;
SIGNAL \u4|Add0~2\ : std_logic;
SIGNAL \u4|Add0~5_sumout\ : std_logic;
SIGNAL \u4|num1~8_combout\ : std_logic;
SIGNAL \u4|num0~8_combout\ : std_logic;
SIGNAL \u4|process_2~1_combout\ : std_logic;
SIGNAL \u4|Add0~6\ : std_logic;
SIGNAL \u4|Add0~9_sumout\ : std_logic;
SIGNAL \u4|Add0~10\ : std_logic;
SIGNAL \u4|Add0~13_sumout\ : std_logic;
SIGNAL \u4|process_2~0_combout\ : std_logic;
SIGNAL \u4|num0~9_combout\ : std_logic;
SIGNAL \u4|Equal2~0_combout\ : std_logic;
SIGNAL \u4|num0~8DUPLICATE_combout\ : std_logic;
SIGNAL \u4|num0[1]~DUPLICATE_regout\ : std_logic;
SIGNAL \u4|num0~9DUPLICATE_combout\ : std_logic;
SIGNAL \u4|num0[2]~DUPLICATE_regout\ : std_logic;
SIGNAL \u6|ring~8_combout\ : std_logic;
SIGNAL \u4|num0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|num1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|num0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|num1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|temp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \d~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|num1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|num0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_temp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u2|ALT_INV_num0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u6|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_num1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_num1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|ALT_INV_num0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u6|ALT_INV_ring~7_combout\ : std_logic;
SIGNAL \u4|ALT_INV_num1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u12|ALT_INV_count~regout\ : std_logic;
SIGNAL \u5|ALT_INV_s[0]~0_combout\ : std_logic;
SIGNAL \u5|ALT_INV_s[1]~1_combout\ : std_logic;
SIGNAL \u4|ALT_INV_num0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|ALT_INV_s[2]~2_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_process_2~1_combout\ : std_logic;
SIGNAL \u4|ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_cp~regout\ : std_logic;
SIGNAL \u2|ALT_INV_cout~regout\ : std_logic;
SIGNAL \u3|ALT_INV_cout~regout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_d~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_en~combout\ : std_logic;
SIGNAL \ALT_INV_qd~combout\ : std_logic;
SIGNAL \ALT_INV_clr~clkctrl_outclk\ : std_logic;
SIGNAL \u2|ALT_INV_num0[0]~DUPLICATE_regout\ : std_logic;
SIGNAL \u2|ALT_INV_num0[2]~DUPLICATE_regout\ : std_logic;
SIGNAL \u4|ALT_INV_num0[1]~DUPLICATE_regout\ : std_logic;
SIGNAL \u4|ALT_INV_num0[2]~DUPLICATE_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
ww_qd <= qd;
ww_en <= en;
ww_d <= d;
ring <= ww_ring;
ledout1 <= ww_ledout1;
ledout2 <= ww_ledout2;
setled <= ww_setled;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\u4|m_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u4|m_clk~combout\);

\clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clr~combout\);

\u2|m_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u2|m_clk~combout\);

\u3|m_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u3|m_clk~combout\);
\u4|ALT_INV_Add0~5_sumout\ <= NOT \u4|Add0~5_sumout\;
\u1|ALT_INV_temp\(9) <= NOT \u1|temp\(9);
\u1|ALT_INV_temp\(8) <= NOT \u1|temp\(8);
\u1|ALT_INV_temp\(6) <= NOT \u1|temp\(6);
\u1|ALT_INV_temp\(7) <= NOT \u1|temp\(7);
\u1|ALT_INV_temp\(5) <= NOT \u1|temp\(5);
\u1|ALT_INV_temp\(4) <= NOT \u1|temp\(4);
\u1|ALT_INV_temp\(2) <= NOT \u1|temp\(2);
\u1|ALT_INV_temp\(3) <= NOT \u1|temp\(3);
\u1|ALT_INV_temp\(1) <= NOT \u1|temp\(1);
\u1|ALT_INV_temp\(0) <= NOT \u1|temp\(0);
\u2|ALT_INV_num0\(3) <= NOT \u2|num0\(3);
\u2|ALT_INV_num0\(0) <= NOT \u2|num0\(0);
\u2|ALT_INV_num0\(1) <= NOT \u2|num0\(1);
\u2|ALT_INV_num0\(2) <= NOT \u2|num0\(2);
\u6|ALT_INV_Equal7~0_combout\ <= NOT \u6|Equal7~0_combout\;
\u2|ALT_INV_num1\(0) <= NOT \u2|num1\(0);
\u2|ALT_INV_num1\(2) <= NOT \u2|num1\(2);
\u2|ALT_INV_num1\(3) <= NOT \u2|num1\(3);
\u2|ALT_INV_num1\(1) <= NOT \u2|num1\(1);
\u2|ALT_INV_Equal1~0_combout\ <= NOT \u2|Equal1~0_combout\;
\u3|ALT_INV_num1\(0) <= NOT \u3|num1\(0);
\u3|ALT_INV_num1\(2) <= NOT \u3|num1\(2);
\u3|ALT_INV_num1\(3) <= NOT \u3|num1\(3);
\u3|ALT_INV_num1\(1) <= NOT \u3|num1\(1);
\u3|ALT_INV_num0\(3) <= NOT \u3|num0\(3);
\u3|ALT_INV_num0\(1) <= NOT \u3|num0\(1);
\u3|ALT_INV_num0\(2) <= NOT \u3|num0\(2);
\u3|ALT_INV_num0\(0) <= NOT \u3|num0\(0);
\u3|ALT_INV_Equal0~0_combout\ <= NOT \u3|Equal0~0_combout\;
\u6|ALT_INV_ring~7_combout\ <= NOT \u6|ring~7_combout\;
\u4|ALT_INV_num1\(0) <= NOT \u4|num1\(0);
\u4|ALT_INV_num1\(1) <= NOT \u4|num1\(1);
\u4|ALT_INV_num1\(2) <= NOT \u4|num1\(2);
\u4|ALT_INV_num1\(3) <= NOT \u4|num1\(3);
\u12|ALT_INV_count~regout\ <= NOT \u12|count~regout\;
\u5|ALT_INV_s[0]~0_combout\ <= NOT \u5|s[0]~0_combout\;
\u5|ALT_INV_s[1]~1_combout\ <= NOT \u5|s[1]~1_combout\;
\u4|ALT_INV_num0\(0) <= NOT \u4|num0\(0);
\u5|ALT_INV_s[2]~2_combout\ <= NOT \u5|s[2]~2_combout\;
\u4|ALT_INV_num0\(1) <= NOT \u4|num0\(1);
\u4|ALT_INV_num0\(2) <= NOT \u4|num0\(2);
\u4|ALT_INV_num0\(3) <= NOT \u4|num0\(3);
\u4|ALT_INV_Equal2~0_combout\ <= NOT \u4|Equal2~0_combout\;
\u4|ALT_INV_process_2~1_combout\ <= NOT \u4|process_2~1_combout\;
\u4|ALT_INV_process_2~0_combout\ <= NOT \u4|process_2~0_combout\;
\u1|ALT_INV_cp~regout\ <= NOT \u1|cp~regout\;
\u2|ALT_INV_cout~regout\ <= NOT \u2|cout~regout\;
\u3|ALT_INV_cout~regout\ <= NOT \u3|cout~regout\;
\u1|ALT_INV_Equal0~0_combout\ <= NOT \u1|Equal0~0_combout\;
\u1|ALT_INV_Equal0~1_combout\ <= NOT \u1|Equal0~1_combout\;
\ALT_INV_d~combout\(1) <= NOT \d~combout\(1);
\ALT_INV_d~combout\(0) <= NOT \d~combout\(0);
\ALT_INV_en~combout\ <= NOT \en~combout\;
\ALT_INV_qd~combout\ <= NOT \qd~combout\;
\ALT_INV_clr~clkctrl_outclk\ <= NOT \clr~clkctrl_outclk\;
\u2|ALT_INV_num0[0]~DUPLICATE_regout\ <= NOT \u2|num0[0]~DUPLICATE_regout\;
\u2|ALT_INV_num0[2]~DUPLICATE_regout\ <= NOT \u2|num0[2]~DUPLICATE_regout\;
\u4|ALT_INV_num0[1]~DUPLICATE_regout\ <= NOT \u4|num0[1]~DUPLICATE_regout\;
\u4|ALT_INV_num0[2]~DUPLICATE_regout\ <= NOT \u4|num0[2]~DUPLICATE_regout\;

\clk~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

\u2|num0[0]~7\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num0[0]~7_combout\ = !\u2|num0\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u2|ALT_INV_num0\(0),
	combout => \u2|num0[0]~7_combout\);

\clr~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

\clr~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~clkctrl_outclk\);

\u2|num0[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num0[0]~7_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num0\(0));

\u2|num0[2]~6\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num0[2]~6_combout\ = \u2|num0\(2) & ( !\u2|num0\(1) # !\u2|num0\(0) ) # !\u2|num0\(2) & ( \u2|num0\(1) & \u2|num0\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num0\(1),
	datac => \u2|ALT_INV_num0\(0),
	datae => \u2|ALT_INV_num0\(2),
	combout => \u2|num0[2]~6_combout\);

\u2|num0[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num0[2]~6_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num0\(2));

\u2|num0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num0~4_combout\ = \u2|num0\(3) & ( !\u2|num0\(0) # !\u2|num0\(1) $ !\u2|num0\(2) ) # !\u2|num0\(3) & ( \u2|num0\(0) & \u2|num0\(1) & \u2|num0\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011110011111111110000000000000000111100111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num0\(0),
	datac => \u2|ALT_INV_num0\(1),
	datad => \u2|ALT_INV_num0\(2),
	datae => \u2|ALT_INV_num0\(3),
	combout => \u2|num0~4_combout\);

\u2|num0[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num0~4_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num0\(3));

\u2|num0[0]~7DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num0[0]~7DUPLICATE_combout\ = !\u2|num0[0]~DUPLICATE_regout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	combout => \u2|num0[0]~7DUPLICATE_combout\);

\u2|num0[0]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num0[0]~7DUPLICATE_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num0[0]~DUPLICATE_regout\);

\u6|Equal7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u6|Equal7~0_combout\ = \u2|num0[0]~DUPLICATE_regout\ & ( !\u2|num0\(1) & !\u2|num0\(2) & \u2|num0\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0\(1),
	datac => \u2|ALT_INV_num0\(2),
	datad => \u2|ALT_INV_num0\(3),
	dataf => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	combout => \u6|Equal7~0_combout\);

\u2|num0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num0~5_combout\ = \u2|num0\(1) & ( !\u2|num0\(0) & !\u6|Equal7~0_combout\ ) # !\u2|num0\(1) & ( \u2|num0\(0) & !\u6|Equal7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num0\(0),
	datac => \u6|ALT_INV_Equal7~0_combout\,
	datae => \u2|ALT_INV_num0\(1),
	combout => \u2|num0~5_combout\);

\u2|num0[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num0~5_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num0\(1));

\u2|num0[2]~6DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num0[2]~6DUPLICATE_combout\ = \u2|num0[2]~DUPLICATE_regout\ & ( !\u2|num0\(1) # !\u2|num0\(0) ) # !\u2|num0[2]~DUPLICATE_regout\ & ( \u2|num0\(1) & \u2|num0\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111100110000000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num0\(1),
	datad => \u2|ALT_INV_num0\(0),
	datae => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	combout => \u2|num0[2]~6DUPLICATE_combout\);

\u2|num0[2]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num0[2]~6DUPLICATE_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num0[2]~DUPLICATE_regout\);

\u7|Mux6~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux6~0_combout\ = \u2|num0\(3) # !\u2|num0\(3) & ( !\u2|num0[2]~DUPLICATE_regout\ $ \u2|num0[0]~DUPLICATE_regout\ # \u2|num0\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010111111111101001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	datac => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datad => \u2|ALT_INV_num0\(1),
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux6~0_combout\);

\u12|count~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u12|count~0_combout\ = !\u12|count~regout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u12|ALT_INV_count~regout\,
	combout => \u12|count~0_combout\);

\u12|count\ : stratixii_lcell_ff
PORT MAP (
	clk => \u1|cp~regout\,
	datain => \u12|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u12|count~regout\);

\d[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_d(0),
	combout => \d~combout\(0));

\en~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

\d[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_d(1),
	combout => \d~combout\(1));

\u5|s[0]~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u5|s[0]~0_combout\ = !\d~combout\(1) & ( !\d~combout\(0) & \en~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d~combout\(0),
	datad => \ALT_INV_en~combout\,
	dataf => \ALT_INV_d~combout\(1),
	combout => \u5|s[0]~0_combout\);

\u8|temp[6]~6\ : stratixii_lcell_comb
-- Equation(s):
-- \u8|temp[6]~6_combout\ = \u5|s[0]~0_combout\ & ( \u12|count~regout\ ) # !\u5|s[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u12|ALT_INV_count~regout\,
	dataf => \u5|ALT_INV_s[0]~0_combout\,
	combout => \u8|temp[6]~6_combout\);

\u7|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux5~0_combout\ = \u2|num0\(3) # !\u2|num0\(3) & ( !\u2|num0[2]~DUPLICATE_regout\ # !\u2|num0[0]~DUPLICATE_regout\ $ \u2|num0\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111111001111110011111100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datab => \u2|ALT_INV_num0\(1),
	datac => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux5~0_combout\);

\u7|Mux4~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux4~0_combout\ = \u2|num0\(3) # !\u2|num0\(3) & ( !\u2|num0\(1) # \u2|num0[2]~DUPLICATE_regout\ # \u2|num0[0]~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datab => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	datac => \u2|ALT_INV_num0\(1),
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux4~0_combout\);

\u7|Mux3~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux3~0_combout\ = \u2|num0\(3) # !\u2|num0\(3) & ( !\u2|num0[0]~DUPLICATE_regout\ & (!\u2|num0[2]~DUPLICATE_regout\ # \u2|num0\(1)) # \u2|num0[0]~DUPLICATE_regout\ & (!\u2|num0[2]~DUPLICATE_regout\ $ !\u2|num0\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111101110100110011110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datab => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	datad => \u2|ALT_INV_num0\(1),
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux3~0_combout\);

\u7|Mux2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux2~0_combout\ = \u2|num0\(3) & ( !\u2|num0[0]~DUPLICATE_regout\ & !\u2|num0[2]~DUPLICATE_regout\ & !\u2|num0\(1) ) # !\u2|num0\(3) & ( !\u2|num0[0]~DUPLICATE_regout\ & (!\u2|num0[2]~DUPLICATE_regout\ # \u2|num0\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datab => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	datad => \u2|ALT_INV_num0\(1),
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux2~0_combout\);

\u7|Mux1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux1~0_combout\ = \u2|num0\(3) # !\u2|num0\(3) & ( !\u2|num0[0]~DUPLICATE_regout\ & (!\u2|num0\(1) # \u2|num0[2]~DUPLICATE_regout\) # \u2|num0[0]~DUPLICATE_regout\ & \u2|num0[2]~DUPLICATE_regout\ & !\u2|num0\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010101100101011001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datab => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	datac => \u2|ALT_INV_num0\(1),
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux1~0_combout\);

\u7|Mux0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u7|Mux0~0_combout\ = \u2|num0\(3) # !\u2|num0\(3) & ( !\u2|num0[2]~DUPLICATE_regout\ & (\u2|num0\(1)) # \u2|num0[2]~DUPLICATE_regout\ & (!\u2|num0[0]~DUPLICATE_regout\ # !\u2|num0\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111100001100111111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num0[2]~DUPLICATE_regout\,
	datac => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	datad => \u2|ALT_INV_num0\(1),
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u7|Mux0~0_combout\);

\u1|Add0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~1_sumout\ = SUM(( \u1|temp\(0) ) + ( VCC ) + ( !VCC ))
-- \u1|Add0~2\ = CARRY(( \u1|temp\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(0),
	cin => GND,
	sumout => \u1|Add0~1_sumout\,
	cout => \u1|Add0~2\);

\u1|Equal0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = !\u1|temp\(4) & \u1|temp\(1) & ( \u1|temp\(0) & !\u1|temp\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_temp\(0),
	datad => \u1|ALT_INV_temp\(3),
	datae => \u1|ALT_INV_temp\(4),
	dataf => \u1|ALT_INV_temp\(1),
	combout => \u1|Equal0~1_combout\);

\u1|Equal0~2\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = \u1|Equal0~1_combout\ & ( \u1|temp\(9) & \u1|temp\(2) & \u1|Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_temp\(9),
	datac => \u1|ALT_INV_temp\(2),
	datad => \u1|ALT_INV_Equal0~0_combout\,
	dataf => \u1|ALT_INV_Equal0~1_combout\,
	combout => \u1|Equal0~2_combout\);

\u1|temp[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~1_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(0));

\u1|Add0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~5_sumout\ = SUM(( \u1|temp\(1) ) + ( GND ) + ( \u1|Add0~2\ ))
-- \u1|Add0~6\ = CARRY(( \u1|temp\(1) ) + ( GND ) + ( \u1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(1),
	cin => \u1|Add0~2\,
	sumout => \u1|Add0~5_sumout\,
	cout => \u1|Add0~6\);

\u1|temp[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~5_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(1));

\u1|Add0~9\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~9_sumout\ = SUM(( \u1|temp\(2) ) + ( GND ) + ( \u1|Add0~6\ ))
-- \u1|Add0~10\ = CARRY(( \u1|temp\(2) ) + ( GND ) + ( \u1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(2),
	cin => \u1|Add0~6\,
	sumout => \u1|Add0~9_sumout\,
	cout => \u1|Add0~10\);

\u1|temp[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~9_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(2));

\u1|Add0~13\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~13_sumout\ = SUM(( \u1|temp\(3) ) + ( GND ) + ( \u1|Add0~10\ ))
-- \u1|Add0~14\ = CARRY(( \u1|temp\(3) ) + ( GND ) + ( \u1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(3),
	cin => \u1|Add0~10\,
	sumout => \u1|Add0~13_sumout\,
	cout => \u1|Add0~14\);

\u1|temp[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~13_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(3));

\u1|Add0~17\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~17_sumout\ = SUM(( \u1|temp\(4) ) + ( GND ) + ( \u1|Add0~14\ ))
-- \u1|Add0~18\ = CARRY(( \u1|temp\(4) ) + ( GND ) + ( \u1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(4),
	cin => \u1|Add0~14\,
	sumout => \u1|Add0~17_sumout\,
	cout => \u1|Add0~18\);

\u1|temp[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~17_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(4));

\u1|Add0~21\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~21_sumout\ = SUM(( \u1|temp\(5) ) + ( GND ) + ( \u1|Add0~18\ ))
-- \u1|Add0~22\ = CARRY(( \u1|temp\(5) ) + ( GND ) + ( \u1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(5),
	cin => \u1|Add0~18\,
	sumout => \u1|Add0~21_sumout\,
	cout => \u1|Add0~22\);

\u1|temp[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~21_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(5));

\u1|Add0~25\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~25_sumout\ = SUM(( \u1|temp\(6) ) + ( GND ) + ( \u1|Add0~22\ ))
-- \u1|Add0~26\ = CARRY(( \u1|temp\(6) ) + ( GND ) + ( \u1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(6),
	cin => \u1|Add0~22\,
	sumout => \u1|Add0~25_sumout\,
	cout => \u1|Add0~26\);

\u1|temp[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~25_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(6));

\u1|Add0~29\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~29_sumout\ = SUM(( \u1|temp\(7) ) + ( GND ) + ( \u1|Add0~26\ ))
-- \u1|Add0~30\ = CARRY(( \u1|temp\(7) ) + ( GND ) + ( \u1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(7),
	cin => \u1|Add0~26\,
	sumout => \u1|Add0~29_sumout\,
	cout => \u1|Add0~30\);

\u1|temp[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~29_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(7));

\u1|Add0~33\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~33_sumout\ = SUM(( \u1|temp\(8) ) + ( GND ) + ( \u1|Add0~30\ ))
-- \u1|Add0~34\ = CARRY(( \u1|temp\(8) ) + ( GND ) + ( \u1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(8),
	cin => \u1|Add0~30\,
	sumout => \u1|Add0~33_sumout\,
	cout => \u1|Add0~34\);

\u1|temp[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~33_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(8));

\u1|Equal0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = \u1|temp\(5) & ( \u1|temp\(7) & \u1|temp\(8) & \u1|temp\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_temp\(7),
	datac => \u1|ALT_INV_temp\(8),
	datad => \u1|ALT_INV_temp\(6),
	dataf => \u1|ALT_INV_temp\(5),
	combout => \u1|Equal0~0_combout\);

\u1|Add0~37\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|Add0~37_sumout\ = SUM(( \u1|temp\(9) ) + ( GND ) + ( \u1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_temp\(9),
	cin => \u1|Add0~34\,
	sumout => \u1|Add0~37_sumout\);

\u1|temp[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|Add0~37_sumout\,
	sclr => \u1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|temp\(9));

\u1|LessThan0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = \u1|temp\(4) & \u1|temp\(2) & ( !\u1|Equal0~0_combout\ & !\u1|temp\(9) ) # !\u1|temp\(4) & \u1|temp\(2) & ( !\u1|temp\(9) ) # \u1|temp\(4) & !\u1|temp\(2) & ( !\u1|temp\(9) & (!\u1|temp\(3) # !\u1|Equal0~0_combout\) ) # 
-- !\u1|temp\(4) & !\u1|temp\(2) & ( !\u1|temp\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110100000000011111111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_temp\(3),
	datac => \u1|ALT_INV_Equal0~0_combout\,
	datad => \u1|ALT_INV_temp\(9),
	datae => \u1|ALT_INV_temp\(4),
	dataf => \u1|ALT_INV_temp\(2),
	combout => \u1|LessThan0~0_combout\);

\u1|cp\ : stratixii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \u1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|cp~regout\);

\qd~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_qd,
	combout => \qd~combout\);

\u2|m_clk\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|m_clk~combout\ = LCELL(\qd~combout\ & ( \u5|s[0]~0_combout\ # \u1|cp~regout\ ) # !\qd~combout\ & ( \u1|cp~regout\ & !\u5|s[0]~0_combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_cp~regout\,
	datad => \u5|ALT_INV_s[0]~0_combout\,
	dataf => \ALT_INV_qd~combout\,
	combout => \u2|m_clk~combout\);

\u2|m_clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \u2|m_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|m_clk~clkctrl_outclk\);

\u2|num1[0]~7\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num1[0]~7_combout\ = !\u2|num1\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u2|ALT_INV_num1\(0),
	combout => \u2|num1[0]~7_combout\);

\u2|num1[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num1[0]~7_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	ena => \u6|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num1\(0));

\u2|num1[3]~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num1[3]~5_combout\ = \u2|num1\(3) & \u2|num1\(2) & ( !\u2|num1\(0) # !\u2|num1\(1) # !\u6|Equal7~0_combout\ ) # !\u2|num1\(3) & \u2|num1\(2) & ( \u2|num1\(0) & \u2|num1\(1) & \u6|Equal7~0_combout\ ) # \u2|num1\(3) & !\u2|num1\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_num1\(0),
	datac => \u2|ALT_INV_num1\(1),
	datad => \u6|ALT_INV_Equal7~0_combout\,
	datae => \u2|ALT_INV_num1\(3),
	dataf => \u2|ALT_INV_num1\(2),
	combout => \u2|num1[3]~5_combout\);

\u2|num1[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num1[3]~5_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num1\(3));

\u2|num1~4\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num1~4_combout\ = \u2|num1\(2) & \u2|num1\(0) & ( !\u2|num1\(1) & \u2|num1\(3) ) # !\u2|num1\(2) & \u2|num1\(0) & ( \u2|num1\(1) ) # \u2|num1\(2) & !\u2|num1\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num1\(1),
	datad => \u2|ALT_INV_num1\(3),
	datae => \u2|ALT_INV_num1\(2),
	dataf => \u2|ALT_INV_num1\(0),
	combout => \u2|num1~4_combout\);

\u2|num1[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num1~4_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	ena => \u6|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num1\(2));

\u2|Equal1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|Equal1~0_combout\ = !\u2|num1\(1) & ( \u2|num1\(2) & !\u2|num1\(3) & \u2|num1\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_num1\(2),
	datac => \u2|ALT_INV_num1\(3),
	datad => \u2|ALT_INV_num1\(0),
	dataf => \u2|ALT_INV_num1\(1),
	combout => \u2|Equal1~0_combout\);

\u2|num1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|num1~6_combout\ = !\u2|num1\(1) & \u2|num1\(0) & ( !\u2|Equal1~0_combout\ ) # \u2|num1\(1) & !\u2|num1\(0) & ( !\u2|Equal1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_Equal1~0_combout\,
	datae => \u2|ALT_INV_num1\(1),
	dataf => \u2|ALT_INV_num1\(0),
	combout => \u2|num1~6_combout\);

\u2|num1[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~clkctrl_outclk\,
	datain => \u2|num1~6_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	ena => \u6|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|num1\(1));

\u5|s[1]~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u5|s[1]~1_combout\ = !\d~combout\(1) & ( \d~combout\(0) & \en~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d~combout\(0),
	datad => \ALT_INV_en~combout\,
	dataf => \ALT_INV_d~combout\(1),
	combout => \u5|s[1]~1_combout\);

\u2|process_1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u2|process_1~1_combout\ = \u2|Equal1~0_combout\ & ( !\u5|s[0]~0_combout\ & \u6|Equal7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|ALT_INV_s[0]~0_combout\,
	datad => \u6|ALT_INV_Equal7~0_combout\,
	dataf => \u2|ALT_INV_Equal1~0_combout\,
	combout => \u2|process_1~1_combout\);

\u2|cout\ : stratixii_lcell_ff
PORT MAP (
	clk => \u2|m_clk~combout\,
	datain => \u2|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|cout~regout\);

\u3|m_clk\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|m_clk~combout\ = LCELL(\u2|cout~regout\ & ( !\u5|s[1]~1_combout\ # \qd~combout\ ) # !\u2|cout~regout\ & ( \qd~combout\ & \u5|s[1]~1_combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_qd~combout\,
	datad => \u5|ALT_INV_s[1]~1_combout\,
	dataf => \u2|ALT_INV_cout~regout\,
	combout => \u3|m_clk~combout\);

\u3|m_clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \u3|m_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|m_clk~clkctrl_outclk\);

\u3|num0[0]~7\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num0[0]~7_combout\ = !\u3|num0\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|ALT_INV_num0\(0),
	combout => \u3|num0[0]~7_combout\);

\u3|num0[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num0[0]~7_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num0\(0));

\u10|temp[3]~3\ : stratixii_lcell_comb
-- Equation(s):
-- \u10|temp[3]~3_combout\ = !\u5|s[1]~1_combout\ # \u12|count~regout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|ALT_INV_s[1]~1_combout\,
	datad => \u12|ALT_INV_count~regout\,
	combout => \u10|temp[3]~3_combout\);

\u3|num0[2]~6\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num0[2]~6_combout\ = \u3|num0\(0) & ( !\u3|num0\(1) $ !\u3|num0\(2) ) # !\u3|num0\(0) & ( \u3|num0\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_num0\(1),
	datad => \u3|ALT_INV_num0\(2),
	dataf => \u3|ALT_INV_num0\(0),
	combout => \u3|num0[2]~6_combout\);

\u3|num0[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num0[2]~6_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num0\(2));

\u3|Equal0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|Equal0~0_combout\ = !\u3|num0\(2) & ( \u3|num0\(3) & \u3|num0\(0) & !\u3|num0\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_num0\(3),
	datac => \u3|ALT_INV_num0\(0),
	datad => \u3|ALT_INV_num0\(1),
	dataf => \u3|ALT_INV_num0\(2),
	combout => \u3|Equal0~0_combout\);

\u3|num0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num0~5_combout\ = \u3|num0\(0) & ( !\u3|Equal0~0_combout\ & !\u3|num0\(1) ) # !\u3|num0\(0) & ( !\u3|Equal0~0_combout\ & \u3|num0\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Equal0~0_combout\,
	datad => \u3|ALT_INV_num0\(1),
	dataf => \u3|ALT_INV_num0\(0),
	combout => \u3|num0~5_combout\);

\u3|num0[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num0~5_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num0\(1));

\u3|num0~4\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num0~4_combout\ = \u3|num0\(2) & ( !\u3|num0\(3) $ (!\u3|num0\(1) # !\u3|num0\(0)) ) # !\u3|num0\(2) & ( \u3|num0\(3) & (!\u3|num0\(0) # \u3|num0\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_num0\(1),
	datac => \u3|ALT_INV_num0\(0),
	datad => \u3|ALT_INV_num0\(3),
	dataf => \u3|ALT_INV_num0\(2),
	combout => \u3|num0~4_combout\);

\u3|num0[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num0~4_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num0\(3));

\u3|num1[0]~7\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num1[0]~7_combout\ = !\u3|num1\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|ALT_INV_num1\(0),
	combout => \u3|num1[0]~7_combout\);

\u3|num1[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num1[0]~7_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	ena => \u3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num1\(0));

\u3|num1~4\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num1~4_combout\ = \u3|num1\(3) & ( !\u3|num1\(2) $ (!\u3|num1\(0) # !\u3|num1\(1)) ) # !\u3|num1\(3) & ( !\u3|num1\(0) & (\u3|num1\(2)) # \u3|num1\(0) & \u3|num1\(1) & !\u3|num1\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100000000111100110000000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_num1\(0),
	datac => \u3|ALT_INV_num1\(1),
	datad => \u3|ALT_INV_num1\(2),
	dataf => \u3|ALT_INV_num1\(3),
	combout => \u3|num1~4_combout\);

\u3|num1[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num1~4_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	ena => \u3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num1\(2));

\u3|num1[3]~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num1[3]~5_combout\ = \u3|num1\(2) & ( !\u3|num1\(3) $ (!\u3|num1\(0) # !\u3|Equal0~0_combout\ # !\u3|num1\(1)) ) # !\u3|num1\(2) & ( \u3|num1\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_num1\(0),
	datab => \u3|ALT_INV_Equal0~0_combout\,
	datac => \u3|ALT_INV_num1\(1),
	datad => \u3|ALT_INV_num1\(3),
	dataf => \u3|ALT_INV_num1\(2),
	combout => \u3|num1[3]~5_combout\);

\u3|num1[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num1[3]~5_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num1\(3));

\u3|num1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|num1~6_combout\ = \u3|num1\(3) & ( !\u3|num1\(0) $ !\u3|num1\(1) ) # !\u3|num1\(3) & ( !\u3|num1\(0) & (\u3|num1\(1)) # \u3|num1\(0) & !\u3|num1\(2) & !\u3|num1\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011001100001000101100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_num1\(2),
	datab => \u3|ALT_INV_num1\(0),
	datad => \u3|ALT_INV_num1\(1),
	dataf => \u3|ALT_INV_num1\(3),
	combout => \u3|num1~6_combout\);

\u3|num1[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~clkctrl_outclk\,
	datain => \u3|num1~6_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	ena => \u3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|num1\(1));

\u5|s[2]~2\ : stratixii_lcell_comb
-- Equation(s):
-- \u5|s[2]~2_combout\ = \d~combout\(1) & ( !\d~combout\(0) & \en~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d~combout\(0),
	datad => \ALT_INV_en~combout\,
	dataf => \ALT_INV_d~combout\(1),
	combout => \u5|s[2]~2_combout\);

\u6|ring~7\ : stratixii_lcell_comb
-- Equation(s):
-- \u6|ring~7_combout\ = \u3|Equal0~0_combout\ & ( \u3|num1\(0) & !\u3|num1\(3) & !\u3|num1\(1) & \u3|num1\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_num1\(0),
	datab => \u3|ALT_INV_num1\(3),
	datac => \u3|ALT_INV_num1\(1),
	datad => \u3|ALT_INV_num1\(2),
	dataf => \u3|ALT_INV_Equal0~0_combout\,
	combout => \u6|ring~7_combout\);

\u3|process_1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u3|process_1~1_combout\ = \u6|ring~7_combout\ & ( !\u5|s[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|ALT_INV_s[1]~1_combout\,
	dataf => \u6|ALT_INV_ring~7_combout\,
	combout => \u3|process_1~1_combout\);

\u3|cout\ : stratixii_lcell_ff
PORT MAP (
	clk => \u3|m_clk~combout\,
	datain => \u3|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|cout~regout\);

\u4|m_clk\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|m_clk~combout\ = LCELL(\u3|cout~regout\ & ( !\u5|s[2]~2_combout\ # \qd~combout\ ) # !\u3|cout~regout\ & ( \qd~combout\ & \u5|s[2]~2_combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_qd~combout\,
	datad => \u5|ALT_INV_s[2]~2_combout\,
	dataf => \u3|ALT_INV_cout~regout\,
	combout => \u4|m_clk~combout\);

\u4|m_clk~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \u4|m_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4|m_clk~clkctrl_outclk\);

\u4|num0[0]~11\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num0[0]~11_combout\ = !\u4|num0\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|ALT_INV_num0\(0),
	combout => \u4|num0[0]~11_combout\);

\u4|num0[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num0[0]~11_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num0\(0));

\u12|temp[3]~3\ : stratixii_lcell_comb
-- Equation(s):
-- \u12|temp[3]~3_combout\ = !\u5|s[2]~2_combout\ # \u12|count~regout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ALT_INV_s[2]~2_combout\,
	datac => \u12|ALT_INV_count~regout\,
	combout => \u12|temp[3]~3_combout\);

\u4|num0~10\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num0~10_combout\ = \u4|num0\(0) & ( !\u4|num0[2]~DUPLICATE_regout\ & \u4|num0\(3) & (!\u4|process_2~0_combout\ $ !\u4|num0[1]~DUPLICATE_regout\) # \u4|num0[2]~DUPLICATE_regout\ & !\u4|process_2~0_combout\ & (!\u4|num0[1]~DUPLICATE_regout\ $ 
-- !\u4|num0\(3)) ) # !\u4|num0\(0) & ( !\u4|process_2~0_combout\ & \u4|num0\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000100011010000000010001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_num0[2]~DUPLICATE_regout\,
	datab => \u4|ALT_INV_process_2~0_combout\,
	datac => \u4|ALT_INV_num0[1]~DUPLICATE_regout\,
	datad => \u4|ALT_INV_num0\(3),
	dataf => \u4|ALT_INV_num0\(0),
	combout => \u4|num0~10_combout\);

\u4|num0[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num0~10_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num0\(3));

\u4|Add0~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|Add0~1_sumout\ = SUM(( \u4|num1\(0) ) + ( \u4|Equal2~0_combout\ ) + ( !VCC ))
-- \u4|Add0~2\ = CARRY(( \u4|num1\(0) ) + ( \u4|Equal2~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|ALT_INV_num1\(0),
	dataf => \u4|ALT_INV_Equal2~0_combout\,
	cin => GND,
	sumout => \u4|Add0~1_sumout\,
	cout => \u4|Add0~2\);

\u4|num1[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|Add0~1_sumout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num1\(0));

\u4|Add0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|Add0~5_sumout\ = SUM(( GND ) + ( \u4|num1\(1) ) + ( \u4|Add0~2\ ))
-- \u4|Add0~6\ = CARRY(( GND ) + ( \u4|num1\(1) ) + ( \u4|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u4|ALT_INV_num1\(1),
	cin => \u4|Add0~2\,
	sumout => \u4|Add0~5_sumout\,
	cout => \u4|Add0~6\);

\u4|num1~8\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num1~8_combout\ = \u4|Add0~5_sumout\ & ( !\u4|process_2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|ALT_INV_process_2~0_combout\,
	dataf => \u4|ALT_INV_Add0~5_sumout\,
	combout => \u4|num1~8_combout\);

\u4|num1[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num1~8_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num1\(1));

\u4|num0~8\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num0~8_combout\ = \u4|num0\(1) & \u4|process_2~0_combout\ & ( !\u4|num0\(0) & \u4|Equal2~0_combout\ ) # !\u4|num0\(1) & \u4|process_2~0_combout\ & ( \u4|num0\(0) & \u4|Equal2~0_combout\ ) # \u4|num0\(1) & !\u4|process_2~0_combout\ & ( !\u4|num0\(0) & 
-- !\u4|Equal2~0_combout\ ) # !\u4|num0\(1) & !\u4|process_2~0_combout\ & ( \u4|num0\(0) & !\u4|Equal2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000000000000000000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|ALT_INV_num0\(0),
	datad => \u4|ALT_INV_Equal2~0_combout\,
	datae => \u4|ALT_INV_num0\(1),
	dataf => \u4|ALT_INV_process_2~0_combout\,
	combout => \u4|num0~8_combout\);

\u4|num0[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num0~8_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num0\(1));

\u4|process_2~1\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|process_2~1_combout\ = \u4|num0\(1) & \u4|num0\(0) & ( \u4|num1\(1) & !\u4|num0\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|ALT_INV_num1\(1),
	datad => \u4|ALT_INV_num0\(2),
	datae => \u4|ALT_INV_num0\(1),
	dataf => \u4|ALT_INV_num0\(0),
	combout => \u4|process_2~1_combout\);

\u4|Add0~9\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|Add0~9_sumout\ = SUM(( \u4|num1\(2) ) + ( GND ) + ( \u4|Add0~6\ ))
-- \u4|Add0~10\ = CARRY(( \u4|num1\(2) ) + ( GND ) + ( \u4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|ALT_INV_num1\(2),
	cin => \u4|Add0~6\,
	sumout => \u4|Add0~9_sumout\,
	cout => \u4|Add0~10\);

\u4|num1[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|Add0~9_sumout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num1\(2));

\u4|Add0~13\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|Add0~13_sumout\ = SUM(( \u4|num1\(3) ) + ( GND ) + ( \u4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|ALT_INV_num1\(3),
	cin => \u4|Add0~10\,
	sumout => \u4|Add0~13_sumout\);

\u4|num1[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|Add0~13_sumout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num1\(3));

\u4|process_2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|process_2~0_combout\ = !\u4|num1\(2) & ( !\u4|num1\(0) & !\u4|num0\(3) & \u4|process_2~1_combout\ & !\u4|num1\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_num1\(0),
	datab => \u4|ALT_INV_num0\(3),
	datac => \u4|ALT_INV_process_2~1_combout\,
	datad => \u4|ALT_INV_num1\(3),
	dataf => \u4|ALT_INV_num1\(2),
	combout => \u4|process_2~0_combout\);

\u4|num0~9\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num0~9_combout\ = \u4|num0\(2) & !\u4|process_2~0_combout\ & ( !\u4|num0\(0) # !\u4|num0[1]~DUPLICATE_regout\ ) # !\u4|num0\(2) & !\u4|process_2~0_combout\ & ( \u4|num0\(0) & \u4|num0[1]~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_num0\(0),
	datac => \u4|ALT_INV_num0[1]~DUPLICATE_regout\,
	datae => \u4|ALT_INV_num0\(2),
	dataf => \u4|ALT_INV_process_2~0_combout\,
	combout => \u4|num0~9_combout\);

\u4|num0[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num0~9_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num0\(2));

\u4|Equal2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|Equal2~0_combout\ = !\u4|num0\(1) & \u4|num0\(0) & ( !\u4|num0\(2) & \u4|num0\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|ALT_INV_num0\(2),
	datad => \u4|ALT_INV_num0\(3),
	datae => \u4|ALT_INV_num0\(1),
	dataf => \u4|ALT_INV_num0\(0),
	combout => \u4|Equal2~0_combout\);

\u4|num0~8DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num0~8DUPLICATE_combout\ = \u4|num0[1]~DUPLICATE_regout\ & \u4|process_2~0_combout\ & ( \u4|Equal2~0_combout\ & !\u4|num0\(0) ) # !\u4|num0[1]~DUPLICATE_regout\ & \u4|process_2~0_combout\ & ( \u4|Equal2~0_combout\ & \u4|num0\(0) ) # 
-- \u4|num0[1]~DUPLICATE_regout\ & !\u4|process_2~0_combout\ & ( !\u4|Equal2~0_combout\ & !\u4|num0\(0) ) # !\u4|num0[1]~DUPLICATE_regout\ & !\u4|process_2~0_combout\ & ( !\u4|Equal2~0_combout\ & \u4|num0\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111100000000000000000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|ALT_INV_Equal2~0_combout\,
	datad => \u4|ALT_INV_num0\(0),
	datae => \u4|ALT_INV_num0[1]~DUPLICATE_regout\,
	dataf => \u4|ALT_INV_process_2~0_combout\,
	combout => \u4|num0~8DUPLICATE_combout\);

\u4|num0[1]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num0~8DUPLICATE_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num0[1]~DUPLICATE_regout\);

\u4|num0~9DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \u4|num0~9DUPLICATE_combout\ = \u4|num0[2]~DUPLICATE_regout\ & !\u4|process_2~0_combout\ & ( !\u4|num0\(0) # !\u4|num0[1]~DUPLICATE_regout\ ) # !\u4|num0[2]~DUPLICATE_regout\ & !\u4|process_2~0_combout\ & ( \u4|num0\(0) & \u4|num0[1]~DUPLICATE_regout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_num0\(0),
	datad => \u4|ALT_INV_num0[1]~DUPLICATE_regout\,
	datae => \u4|ALT_INV_num0[2]~DUPLICATE_regout\,
	dataf => \u4|ALT_INV_process_2~0_combout\,
	combout => \u4|num0~9DUPLICATE_combout\);

\u4|num0[2]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \u4|m_clk~clkctrl_outclk\,
	datain => \u4|num0~9DUPLICATE_combout\,
	aclr => \ALT_INV_clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|num0[2]~DUPLICATE_regout\);

\u6|ring~8\ : stratixii_lcell_comb
-- Equation(s):
-- \u6|ring~8_combout\ = \u2|num0\(3) & ( \u6|Equal7~0_combout\ & \u6|ring~7_combout\ & \u2|Equal1~0_combout\ ) # !\u2|num0\(3) & ( \u6|ring~7_combout\ & \u2|Equal1~0_combout\ & (\u2|num0[0]~DUPLICATE_regout\ # \u6|Equal7~0_combout\) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|ALT_INV_Equal7~0_combout\,
	datab => \u6|ALT_INV_ring~7_combout\,
	datac => \u2|ALT_INV_Equal1~0_combout\,
	datad => \u2|ALT_INV_num0[0]~DUPLICATE_regout\,
	dataf => \u2|ALT_INV_num0\(3),
	combout => \u6|ring~8_combout\);

\ledout1[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux6~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(0));

\ledout1[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux5~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(1));

\ledout1[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux4~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(2));

\ledout1[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux3~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(3));

\ledout1[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux2~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(4));

\ledout1[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux1~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(5));

\ledout1[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u7|Mux0~0_combout\,
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout1(6));

\ledout2[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u2|num1\(0),
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(0));

\ledout2[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u2|num1\(1),
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(1));

\ledout2[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u2|num1\(2),
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(2));

\ledout2[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u2|num1\(3),
	oe => \u8|temp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(3));

\ledout2[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num0\(0),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(4));

\ledout2[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num0\(1),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(5));

\ledout2[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num0\(2),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(6));

\ledout2[7]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num0\(3),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(7));

\ledout2[8]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num1\(0),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(8));

\ledout2[9]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num1\(1),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(9));

\ledout2[10]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num1\(2),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(10));

\ledout2[11]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u3|num1\(3),
	oe => \u10|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(11));

\ledout2[12]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num0\(0),
	oe => \u12|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(12));

\ledout2[13]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num0[1]~DUPLICATE_regout\,
	oe => \u12|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(13));

\ledout2[14]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num0[2]~DUPLICATE_regout\,
	oe => \u12|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(14));

\ledout2[15]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num0\(3),
	oe => \u12|temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledout2(15));

\ring~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u6|ring~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ring);

\ledout2[16]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledout2(16));

\ledout2[17]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledout2(17));

\ledout2[18]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledout2(18));

\ledout2[19]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \u4|num1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledout2(19));

\setled~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_setled);
END structure;


