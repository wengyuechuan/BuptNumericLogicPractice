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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/28/2022 17:39:14"
                                                            
-- Vhdl Test Bench template for design  :  total
-- 
-- Simulation tool : Custom VHDL
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.std_logic_unsigned.all;

ENTITY total_vhd_tst IS
END total_vhd_tst;
ARCHITECTURE total_arch OF total_vhd_tst IS
-- constants                    
constant clk_period:time :=200us;                               
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cur_bot : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL cur_pill : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL max_bottle : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pnpb : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL stop_light : STD_LOGIC;
SIGNAL warn_light : STD_LOGIC;
SIGNAL work_light : STD_LOGIC;
COMPONENT total
	PORT (
	clk : IN STD_LOGIC;
	cur_bot : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	cur_pill : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	enable : IN STD_LOGIC;
	max_bottle : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pnpb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	stop_light : OUT STD_LOGIC;
	warn_light : OUT STD_LOGIC;
	work_light : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : total
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cur_bot => cur_bot,
	cur_pill => cur_pill,
	enable => enable,
	max_bottle => max_bottle,
	pnpb => pnpb,
	reset => reset,
	stop_light => stop_light,
	warn_light => warn_light,
	work_light => work_light
	);
init : PROCESS                                               
-- variable declarations        
BEGIN                                                        
        -- code that executes only once 
        max_bottle<="00000100";
        pnpb<="00000010";
        enable <='1';   
        reset<='1';
        wait for 200us;
        reset<='0';
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list 
        clk<='0';
        wait for clk_period/2;
        clk<='1';
        wait for clk_period/2;
                                                     
END PROCESS always;                                          
END total_arch;
