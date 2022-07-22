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
-- Generated on "05/13/2022 19:07:14"
                                                            
-- Vhdl Test Bench template for design  :  clock
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_vhd_tst IS
END clock_vhd_tst;
ARCHITECTURE clock_arch OF clock_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL ledout1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ledout2 : STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL qd : STD_LOGIC;
SIGNAL ring : STD_LOGIC;
COMPONENT clock
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	en : IN STD_LOGIC;
	ledout1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ledout2 : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	qd : IN STD_LOGIC;
	ring : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clock
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	d => d,
	en => en,
	ledout1 => ledout1,
	ledout2 => ledout2,
	qd => qd,
	ring => ring
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END clock_arch;
