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
-- Generated on "09/26/2023 15:21:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fourBitRegSixSumTest
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fourBitRegSixSumTest_vhd_vec_tst IS
END fourBitRegSixSumTest_vhd_vec_tst;
ARCHITECTURE fourBitRegSixSumTest_arch OF fourBitRegSixSumTest_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL ctrl : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL plse : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT fourBitRegSixSumTest
	PORT (
	clk : IN STD_LOGIC;
	ctrl : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	plse : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fourBitRegSixSumTest
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	ctrl => ctrl,
	D => D,
	plse => plse,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4,
	Q5 => Q5
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		clk <= '1';
		WAIT FOR 40000 ps;
		clk <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '1';
	WAIT FOR 200000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 6
	LOOP
		clk <= '1';
		WAIT FOR 40000 ps;
		clk <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- ctrl
t_prcs_ctrl: PROCESS
BEGIN
	ctrl <= '0';
WAIT;
END PROCESS t_prcs_ctrl;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		D(3) <= '0';
		WAIT FOR 160000 ps;
		D(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D(2) <= '0';
		WAIT FOR 80000 ps;
		D(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		D(1) <= '0';
		WAIT FOR 40000 ps;
		D(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
LOOP
	D(0) <= '0';
	WAIT FOR 20000 ps;
	D(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_0;

-- plse
t_prcs_plse: PROCESS
BEGIN
	plse <= '1';
	WAIT FOR 310000 ps;
	plse <= '0';
	WAIT FOR 90000 ps;
	plse <= '1';
WAIT;
END PROCESS t_prcs_plse;
END fourBitRegSixSumTest_arch;
