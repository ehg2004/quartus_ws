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
-- Generated on "09/21/2023 22:54:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          detVerDec
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY detVerDec_vhd_vec_tst IS
END detVerDec_vhd_vec_tst;
ARCHITECTURE detVerDec_arch OF detVerDec_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Co : STD_LOGIC;
SIGNAL PRSN_o : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RSTN_o : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Si : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT detVerDec
	PORT (
	Co : OUT STD_LOGIC;
	PRSN_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RSTN_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Si : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : detVerDec
	PORT MAP (
-- list connections between master ports and signals
	Co => Co,
	PRSN_o => PRSN_o,
	RSTN_o => RSTN_o,
	Si => Si
	);
-- Si[3]
t_prcs_Si_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Si(3) <= '0';
		WAIT FOR 80000 ps;
		Si(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Si(3) <= '0';
WAIT;
END PROCESS t_prcs_Si_3;
-- Si[2]
t_prcs_Si_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Si(2) <= '0';
		WAIT FOR 40000 ps;
		Si(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Si(2) <= '0';
WAIT;
END PROCESS t_prcs_Si_2;
-- Si[1]
t_prcs_Si_1: PROCESS
BEGIN
LOOP
	Si(1) <= '0';
	WAIT FOR 20000 ps;
	Si(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Si_1;
-- Si[0]
t_prcs_Si_0: PROCESS
BEGIN
LOOP
	Si(0) <= '0';
	WAIT FOR 10000 ps;
	Si(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Si_0;
END detVerDec_arch;
