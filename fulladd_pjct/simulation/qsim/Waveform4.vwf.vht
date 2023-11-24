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
-- Generated on "08/30/2023 21:44:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          four_bit_inv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY four_bit_inv_vhd_vec_tst IS
END four_bit_inv_vhd_vec_tst;
ARCHITECTURE four_bit_inv_arch OF four_bit_inv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ctrl : STD_LOGIC;
SIGNAL ctrl_o : STD_LOGIC;
SIGNAL X_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL X_o : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT four_bit_inv
	PORT (
	ctrl : IN STD_LOGIC;
	ctrl_o : OUT STD_LOGIC;
	X_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	X_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : four_bit_inv
	PORT MAP (
-- list connections between master ports and signals
	ctrl => ctrl,
	ctrl_o => ctrl_o,
	X_i => X_i,
	X_o => X_o
	);

-- ctrl
t_prcs_ctrl: PROCESS
BEGIN
	ctrl <= '1';
WAIT;
END PROCESS t_prcs_ctrl;
-- X_i[3]
t_prcs_X_i_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		X_i(3) <= '0';
		WAIT FOR 80000 ps;
		X_i(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	X_i(3) <= '0';
WAIT;
END PROCESS t_prcs_X_i_3;
-- X_i[2]
t_prcs_X_i_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		X_i(2) <= '0';
		WAIT FOR 40000 ps;
		X_i(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	X_i(2) <= '0';
WAIT;
END PROCESS t_prcs_X_i_2;
-- X_i[1]
t_prcs_X_i_1: PROCESS
BEGIN
LOOP
	X_i(1) <= '0';
	WAIT FOR 20000 ps;
	X_i(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_i_1;
-- X_i[0]
t_prcs_X_i_0: PROCESS
BEGIN
LOOP
	X_i(0) <= '0';
	WAIT FOR 10000 ps;
	X_i(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_i_0;
END four_bit_inv_arch;
