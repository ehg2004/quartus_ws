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
-- Generated on "11/15/2023 15:01:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab_07
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab_07_vhd_vec_tst IS
END lab_07_vhd_vec_tst;
ARCHITECTURE lab_07_arch OF lab_07_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL A1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk_dbg : STD_LOGIC;
SIGNAL clk_ref : STD_LOGIC;
SIGNAL PB0 : STD_LOGIC;
SIGNAL PB1 : STD_LOGIC;
SIGNAL Q0det : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL QSIPO : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL regDete : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seqDetout : STD_LOGIC;
SIGNAL SSo : STD_LOGIC;
COMPONENT lab_07
	PORT (
	A0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	A1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	C0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk_dbg : IN STD_LOGIC;
	clk_ref : IN STD_LOGIC;
	PB0 : IN STD_LOGIC;
	PB1 : IN STD_LOGIC;
	Q0det : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	QSIPO : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	regDete : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seqDetout : OUT STD_LOGIC;
	SSo : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab_07
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	B0 => B0,
	B1 => B1,
	C0 => C0,
	clk_dbg => clk_dbg,
	clk_ref => clk_ref,
	PB0 => PB0,
	PB1 => PB1,
	Q0det => Q0det,
	QSIPO => QSIPO,
	regDete => regDete,
	seqDetout => seqDetout,
	SSo => SSo
	);

-- clk_dbg
t_prcs_clk_dbg: PROCESS
BEGIN
LOOP
	clk_dbg <= '0';
	WAIT FOR 5000 ps;
	clk_dbg <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_dbg;

-- clk_ref
t_prcs_clk_ref: PROCESS
BEGIN
	clk_ref <= '0';
WAIT;
END PROCESS t_prcs_clk_ref;

-- PB0
t_prcs_PB0: PROCESS
BEGIN
	PB0 <= '0';
WAIT;
END PROCESS t_prcs_PB0;

-- PB1
t_prcs_PB1: PROCESS
BEGIN
	PB1 <= '1';
WAIT;
END PROCESS t_prcs_PB1;
END lab_07_arch;
