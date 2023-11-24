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
-- Generated on "11/23/2023 13:32:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab_07_dec
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab_07_dec_vhd_vec_tst IS
END lab_07_dec_vhd_vec_tst;
ARCHITECTURE lab_07_dec_arch OF lab_07_dec_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL A1dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B0dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B1dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL C0dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk_ref : STD_LOGIC;
SIGNAL LED0 : STD_LOGIC;
SIGNAL PB0 : STD_LOGIC;
SIGNAL PB1 : STD_LOGIC;
SIGNAL Q0dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW0 : STD_LOGIC;
COMPONENT lab_07_dec
	PORT (
	A0dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	A1dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	B0dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	B1dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	C0dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk_ref : IN STD_LOGIC;
	LED0 : BUFFER STD_LOGIC;
	PB0 : IN STD_LOGIC;
	PB1 : IN STD_LOGIC;
	Q0dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW0 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab_07_dec
	PORT MAP (
-- list connections between master ports and signals
	A0dec => A0dec,
	A1dec => A1dec,
	B0dec => B0dec,
	B1dec => B1dec,
	C0dec => C0dec,
	clk_ref => clk_ref,
	LED0 => LED0,
	PB0 => PB0,
	PB1 => PB1,
	Q0dec => Q0dec,
	SW0 => SW0
	);

-- clk_ref
t_prcs_clk_ref: PROCESS
BEGIN
	clk_ref <= '0';
WAIT;
END PROCESS t_prcs_clk_ref;

-- PB0
t_prcs_PB0: PROCESS
BEGIN
	PB0 <= '1';
	WAIT FOR 32560000 ps;
	PB0 <= '0';
	WAIT FOR 80000 ps;
	PB0 <= '1';
	WAIT FOR 11360000 ps;
	PB0 <= '0';
	WAIT FOR 160000 ps;
	PB0 <= '1';
	WAIT FOR 44620000 ps;
	PB0 <= '0';
	WAIT FOR 10000 ps;
	PB0 <= '1';
	WAIT FOR 4780000 ps;
	PB0 <= '0';
	WAIT FOR 10000 ps;
	PB0 <= '1';
WAIT;
END PROCESS t_prcs_PB0;

-- PB1
t_prcs_PB1: PROCESS
BEGIN
	PB1 <= '1';
WAIT;
END PROCESS t_prcs_PB1;
END lab_07_dec_arch;
