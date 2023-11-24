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
-- Generated on "09/26/2023 22:14:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PISOreg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PISOreg_vhd_vec_tst IS
END PISOreg_vhd_vec_tst;
ARCHITECTURE PISOreg_arch OF PISOreg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL D_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL L_SN : STD_LOGIC;
SIGNAL Os : STD_LOGIC;
COMPONENT PISOreg
	PORT (
	clk : IN STD_LOGIC;
	D_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	L_SN : IN STD_LOGIC;
	Os : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PISOreg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	D_in => D_in,
	L_SN => L_SN,
	Os => Os
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- D_in[7]
t_prcs_D_in_7: PROCESS
BEGIN
	D_in(7) <= '1';
WAIT;
END PROCESS t_prcs_D_in_7;
-- D_in[6]
t_prcs_D_in_6: PROCESS
BEGIN
	D_in(6) <= '0';
WAIT;
END PROCESS t_prcs_D_in_6;
-- D_in[5]
t_prcs_D_in_5: PROCESS
BEGIN
	D_in(5) <= '1';
WAIT;
END PROCESS t_prcs_D_in_5;
-- D_in[4]
t_prcs_D_in_4: PROCESS
BEGIN
	D_in(4) <= '0';
	WAIT FOR 480000 ps;
	D_in(4) <= '1';
WAIT;
END PROCESS t_prcs_D_in_4;
-- D_in[3]
t_prcs_D_in_3: PROCESS
BEGIN
	D_in(3) <= '1';
	WAIT FOR 480000 ps;
	D_in(3) <= '0';
WAIT;
END PROCESS t_prcs_D_in_3;
-- D_in[2]
t_prcs_D_in_2: PROCESS
BEGIN
	D_in(2) <= '0';
	WAIT FOR 160000 ps;
	D_in(2) <= '1';
	WAIT FOR 320000 ps;
	D_in(2) <= '0';
	WAIT FOR 320000 ps;
	D_in(2) <= '1';
WAIT;
END PROCESS t_prcs_D_in_2;
-- D_in[1]
t_prcs_D_in_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		D_in(1) <= '1';
		WAIT FOR 160000 ps;
		D_in(1) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
	D_in(1) <= '1';
WAIT;
END PROCESS t_prcs_D_in_1;
-- D_in[0]
t_prcs_D_in_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D_in(0) <= '0';
		WAIT FOR 80000 ps;
		D_in(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D_in(0) <= '0';
WAIT;
END PROCESS t_prcs_D_in_0;

-- L_SN
t_prcs_L_SN: PROCESS
BEGIN
LOOP
	L_SN <= '0';
	WAIT FOR 10000 ps;
	L_SN <= '1';
	WAIT FOR 30000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_L_SN;
END PISOreg_arch;
