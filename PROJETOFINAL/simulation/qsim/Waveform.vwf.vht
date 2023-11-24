-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/17/2023 10:18:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          VGASyncEnt
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY VGASyncEnt_vhd_vec_tst IS
END VGASyncEnt_vhd_vec_tst;
ARCHITECTURE VGASyncEnt_arch OF VGASyncEnt_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_20Hz : STD_LOGIC;
SIGNAL hPos : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL hSync : STD_LOGIC;
SIGNAL rgbEn : STD_LOGIC;
SIGNAL vPos : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL vSync : STD_LOGIC;
COMPONENT VGASyncEnt
	PORT (
	clk : IN STD_LOGIC;
	clk_20Hz : OUT STD_LOGIC;
	hPos : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	hSync : OUT STD_LOGIC;
	rgbEn : OUT STD_LOGIC;
	vPos : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	vSync : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : VGASyncEnt
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_20Hz => clk_20Hz,
	hPos => hPos,
	hSync => hSync,
	rgbEn => rgbEn,
	vPos => vPos,
	vSync => vSync
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END VGASyncEnt_arch;
