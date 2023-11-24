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
-- Generated on "09/21/2023 16:14:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          twoDigCount
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY twoDigCount_vhd_vec_tst IS
END twoDigCount_vhd_vec_tst;
ARCHITECTURE twoDigCount_arch OF twoDigCount_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk2 : STD_LOGIC;
SIGNAL Co : STD_LOGIC;
SIGNAL ctrl : STD_LOGIC;
SIGNAL D0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT twoDigCount
	PORT (
	clk : IN STD_LOGIC;
	clk2 : IN STD_LOGIC;
	Co : OUT STD_LOGIC;
	ctrl : IN STD_LOGIC;
	D0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	D1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : twoDigCount
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk2 => clk2,
	Co => Co,
	ctrl => ctrl,
	D0 => D0,
	D1 => D1
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clk2
t_prcs_clk2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		clk2 <= '0';
		WAIT FOR 200000 ps;
		clk2 <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	clk2 <= '0';
WAIT;
END PROCESS t_prcs_clk2;

-- ctrl
t_prcs_ctrl: PROCESS
BEGIN
	ctrl <= '0';
WAIT;
END PROCESS t_prcs_ctrl;
END twoDigCount_arch;
