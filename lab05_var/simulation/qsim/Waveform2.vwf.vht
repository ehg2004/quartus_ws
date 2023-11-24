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
-- Generated on "11/09/2023 14:44:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compare_4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compare_4bit_vhd_vec_tst IS
END compare_4bit_vhd_vec_tst;
ARCHITECTURE compare_4bit_arch OF compare_4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cmp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outp : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT compare_4bit
	PORT (
	cmp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outp : OUT STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : compare_4bit
	PORT MAP (
-- list connections between master ports and signals
	cmp => cmp,
	outp => outp,
	S => S
	);
-- cmp[3]
t_prcs_cmp_3: PROCESS
BEGIN
	cmp(3) <= '0';
WAIT;
END PROCESS t_prcs_cmp_3;
-- cmp[2]
t_prcs_cmp_2: PROCESS
BEGIN
	cmp(2) <= '0';
WAIT;
END PROCESS t_prcs_cmp_2;
-- cmp[1]
t_prcs_cmp_1: PROCESS
BEGIN
	cmp(1) <= '1';
WAIT;
END PROCESS t_prcs_cmp_1;
-- cmp[0]
t_prcs_cmp_0: PROCESS
BEGIN
	cmp(0) <= '0';
WAIT;
END PROCESS t_prcs_cmp_0;
-- S[3]
t_prcs_S_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		S(3) <= '0';
		WAIT FOR 80000 ps;
		S(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	S(3) <= '0';
WAIT;
END PROCESS t_prcs_S_3;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		S(2) <= '0';
		WAIT FOR 40000 ps;
		S(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
LOOP
	S(1) <= '0';
	WAIT FOR 20000 ps;
	S(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
LOOP
	S(0) <= '0';
	WAIT FOR 10000 ps;
	S(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_0;
END compare_4bit_arch;
