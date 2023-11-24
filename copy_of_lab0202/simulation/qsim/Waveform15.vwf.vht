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
-- Generated on "09/26/2023 15:11:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab_02_02
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab_02_02_vhd_vec_tst IS
END lab_02_02_vhd_vec_tst;
ARCHITECTURE lab_02_02_arch OF lab_02_02_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_PB0 : STD_LOGIC;
SIGNAL ctrl_SW_4 : STD_LOGIC;
SIGNAL DEC0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEC1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEC2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEC3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEC4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEC5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL plse_PB1 : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT lab_02_02
	PORT (
	clk_PB0 : IN STD_LOGIC;
	ctrl_SW_4 : IN STD_LOGIC;
	DEC0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEC1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEC2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEC3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEC4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEC5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	plse_PB1 : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab_02_02
	PORT MAP (
-- list connections between master ports and signals
	clk_PB0 => clk_PB0,
	ctrl_SW_4 => ctrl_SW_4,
	DEC0 => DEC0,
	DEC1 => DEC1,
	DEC2 => DEC2,
	DEC3 => DEC3,
	DEC4 => DEC4,
	DEC5 => DEC5,
	plse_PB1 => plse_PB1,
	SW => SW
	);

-- clk_PB0
t_prcs_clk_PB0: PROCESS
BEGIN
	clk_PB0 <= '1';
	WAIT FOR 80000 ps;
	clk_PB0 <= '0';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 5
	LOOP
		clk_PB0 <= '1';
		WAIT FOR 80000 ps;
		clk_PB0 <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	clk_PB0 <= '1';
WAIT;
END PROCESS t_prcs_clk_PB0;

-- ctrl_SW_4
t_prcs_ctrl_SW_4: PROCESS
BEGIN
	ctrl_SW_4 <= '0';
WAIT;
END PROCESS t_prcs_ctrl_SW_4;

-- plse_PB1
t_prcs_plse_PB1: PROCESS
BEGIN
	plse_PB1 <= '1';
WAIT;
END PROCESS t_prcs_plse_PB1;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 3
	LOOP
		SW(3) <= '0';
		WAIT FOR 160000 ps;
		SW(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 6
	LOOP
		SW(2) <= '0';
		WAIT FOR 80000 ps;
		SW(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 12
	LOOP
		SW(1) <= '0';
		WAIT FOR 40000 ps;
		SW(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '1';
	WAIT FOR 20000 ps;
	SW(0) <= '0';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;
END lab_02_02_arch;
