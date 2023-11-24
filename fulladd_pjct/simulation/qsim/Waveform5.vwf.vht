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
-- Generated on "08/31/2023 11:55:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          four_bit_add_sub
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY four_bit_add_sub_vhd_vec_tst IS
END four_bit_add_sub_vhd_vec_tst;
ARCHITECTURE four_bit_add_sub_arch OF four_bit_add_sub_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cout : STD_LOGIC;
SIGNAL Ctrl : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT four_bit_add_sub
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cout : OUT STD_LOGIC;
	Ctrl : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : four_bit_add_sub
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cout => Cout,
	Ctrl => Ctrl,
	S => S
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		A(3) <= '0';
		WAIT FOR 80000 ps;
		A(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
LOOP
	A(2) <= '0';
	WAIT FOR 40000 ps;
	A(2) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 20000 ps;
	A(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 10000 ps;
	A(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B(3) <= '0';
		WAIT FOR 1280000 ps;
		B(3) <= '1';
		WAIT FOR 1280000 ps;
	END LOOP;
	B(3) <= '0';
	WAIT FOR 1280000 ps;
	B(3) <= '1';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		B(2) <= '0';
		WAIT FOR 640000 ps;
		B(2) <= '1';
		WAIT FOR 640000 ps;
	END LOOP;
	B(2) <= '0';
	WAIT FOR 640000 ps;
	B(2) <= '1';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		B(1) <= '0';
		WAIT FOR 320000 ps;
		B(1) <= '1';
		WAIT FOR 320000 ps;
	END LOOP;
	B(1) <= '0';
	WAIT FOR 320000 ps;
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		B(0) <= '0';
		WAIT FOR 160000 ps;
		B(0) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;

-- Ctrl
t_prcs_Ctrl: PROCESS
BEGIN
	Ctrl <= '1';
WAIT;
END PROCESS t_prcs_Ctrl;
END four_bit_add_sub_arch;
