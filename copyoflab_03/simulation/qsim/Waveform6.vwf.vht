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
-- Generated on "09/28/2023 14:52:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PISOtoSIPOmod8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PISOtoSIPOmod8_vhd_vec_tst IS
END PISOtoSIPOmod8_vhd_vec_tst;
ARCHITECTURE PISOtoSIPOmod8_arch OF PISOtoSIPOmod8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL ctindbg : STD_LOGIC;
SIGNAL ctoutdbg : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dbgdff0 : STD_LOGIC;
SIGNAL dbgff1 : STD_LOGIC;
SIGNAL N_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PB0 : STD_LOGIC;
SIGNAL PB1 : STD_LOGIC;
SIGNAL piso_dbg : STD_LOGIC;
SIGNAL sipo_dbg : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT PISOtoSIPOmod8
	PORT (
	A_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	ctindbg : OUT STD_LOGIC;
	ctoutdbg : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	dbgdff0 : OUT STD_LOGIC;
	dbgff1 : OUT STD_LOGIC;
	N_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	PB0 : IN STD_LOGIC;
	PB1 : IN STD_LOGIC;
	piso_dbg : OUT STD_LOGIC;
	sipo_dbg : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PISOtoSIPOmod8
	PORT MAP (
-- list connections between master ports and signals
	A_out => A_out,
	B_out => B_out,
	clk => clk,
	ctindbg => ctindbg,
	ctoutdbg => ctoutdbg,
	dbgdff0 => dbgdff0,
	dbgff1 => dbgff1,
	N_in => N_in,
	PB0 => PB0,
	PB1 => PB1,
	piso_dbg => piso_dbg,
	sipo_dbg => sipo_dbg
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- N_in[7]
t_prcs_N_in_7: PROCESS
BEGIN
	N_in(7) <= '1';
	WAIT FOR 160000 ps;
	N_in(7) <= '0';
	WAIT FOR 830000 ps;
	N_in(7) <= '1';
WAIT;
END PROCESS t_prcs_N_in_7;
-- N_in[6]
t_prcs_N_in_6: PROCESS
BEGIN
	N_in(6) <= '0';
WAIT;
END PROCESS t_prcs_N_in_6;
-- N_in[5]
t_prcs_N_in_5: PROCESS
BEGIN
	N_in(5) <= '1';
	WAIT FOR 160000 ps;
	N_in(5) <= '0';
	WAIT FOR 830000 ps;
	N_in(5) <= '1';
WAIT;
END PROCESS t_prcs_N_in_5;
-- N_in[4]
t_prcs_N_in_4: PROCESS
BEGIN
	N_in(4) <= '1';
	WAIT FOR 160000 ps;
	N_in(4) <= '0';
	WAIT FOR 830000 ps;
	N_in(4) <= '1';
WAIT;
END PROCESS t_prcs_N_in_4;
-- N_in[3]
t_prcs_N_in_3: PROCESS
BEGIN
	N_in(3) <= '0';
WAIT;
END PROCESS t_prcs_N_in_3;
-- N_in[2]
t_prcs_N_in_2: PROCESS
BEGIN
	N_in(2) <= '1';
	WAIT FOR 160000 ps;
	N_in(2) <= '0';
	WAIT FOR 830000 ps;
	N_in(2) <= '1';
WAIT;
END PROCESS t_prcs_N_in_2;
-- N_in[1]
t_prcs_N_in_1: PROCESS
BEGIN
	N_in(1) <= '0';
WAIT;
END PROCESS t_prcs_N_in_1;
-- N_in[0]
t_prcs_N_in_0: PROCESS
BEGIN
	N_in(0) <= '1';
	WAIT FOR 160000 ps;
	N_in(0) <= '0';
	WAIT FOR 830000 ps;
	N_in(0) <= '1';
WAIT;
END PROCESS t_prcs_N_in_0;

-- PB0
t_prcs_PB0: PROCESS
BEGIN
	PB0 <= '1';
	WAIT FOR 20000 ps;
	PB0 <= '0';
	WAIT FOR 20000 ps;
	PB0 <= '1';
WAIT;
END PROCESS t_prcs_PB0;

-- PB1
t_prcs_PB1: PROCESS
BEGIN
	PB1 <= '1';
	WAIT FOR 90000 ps;
	PB1 <= '0';
	WAIT FOR 40000 ps;
	PB1 <= '1';
WAIT;
END PROCESS t_prcs_PB1;
END PISOtoSIPOmod8_arch;
