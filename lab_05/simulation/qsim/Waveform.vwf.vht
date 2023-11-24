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
-- Generated on "10/20/2023 02:24:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compare_12bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compare_12bit_vhd_vec_tst IS
END compare_12bit_vhd_vec_tst;
ARCHITECTURE compare_12bit_arch OF compare_12bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cmp : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL outp : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(11 DOWNTO 0);
COMPONENT compare_12bit
	PORT (
	clk : IN STD_LOGIC;
	cmp : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	outp : OUT STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : compare_12bit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cmp => cmp,
	outp => outp,
	S => S
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
-- cmp[11]
t_prcs_cmp_11: PROCESS
BEGIN
	cmp(11) <= '0';
WAIT;
END PROCESS t_prcs_cmp_11;
-- cmp[10]
t_prcs_cmp_10: PROCESS
BEGIN
	cmp(10) <= '0';
WAIT;
END PROCESS t_prcs_cmp_10;
-- cmp[9]
t_prcs_cmp_9: PROCESS
BEGIN
	cmp(9) <= '0';
	WAIT FOR 540000 ps;
	cmp(9) <= '1';
	WAIT FOR 240000 ps;
	cmp(9) <= '0';
WAIT;
END PROCESS t_prcs_cmp_9;
-- cmp[8]
t_prcs_cmp_8: PROCESS
BEGIN
	cmp(8) <= '0';
WAIT;
END PROCESS t_prcs_cmp_8;
-- cmp[7]
t_prcs_cmp_7: PROCESS
BEGIN
	cmp(7) <= '0';
WAIT;
END PROCESS t_prcs_cmp_7;
-- cmp[6]
t_prcs_cmp_6: PROCESS
BEGIN
	cmp(6) <= '0';
WAIT;
END PROCESS t_prcs_cmp_6;
-- cmp[5]
t_prcs_cmp_5: PROCESS
BEGIN
	cmp(5) <= '0';
WAIT;
END PROCESS t_prcs_cmp_5;
-- cmp[4]
t_prcs_cmp_4: PROCESS
BEGIN
	cmp(4) <= '0';
WAIT;
END PROCESS t_prcs_cmp_4;
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
-- S[11]
t_prcs_S_11: PROCESS
BEGIN
	S(11) <= '0';
	WAIT FOR 230000 ps;
	S(11) <= '1';
	WAIT FOR 10000 ps;
	S(11) <= '0';
WAIT;
END PROCESS t_prcs_S_11;
-- S[10]
t_prcs_S_10: PROCESS
BEGIN
	S(10) <= '0';
WAIT;
END PROCESS t_prcs_S_10;
-- S[9]
t_prcs_S_9: PROCESS
BEGIN
	S(9) <= '0';
	WAIT FOR 570000 ps;
	S(9) <= '1';
	WAIT FOR 130000 ps;
	S(9) <= '0';
WAIT;
END PROCESS t_prcs_S_9;
-- S[8]
t_prcs_S_8: PROCESS
BEGIN
	S(8) <= '0';
WAIT;
END PROCESS t_prcs_S_8;
-- S[7]
t_prcs_S_7: PROCESS
BEGIN
	S(7) <= '0';
WAIT;
END PROCESS t_prcs_S_7;
-- S[6]
t_prcs_S_6: PROCESS
BEGIN
	S(6) <= '0';
WAIT;
END PROCESS t_prcs_S_6;
-- S[5]
t_prcs_S_5: PROCESS
BEGIN
	S(5) <= '0';
WAIT;
END PROCESS t_prcs_S_5;
-- S[4]
t_prcs_S_4: PROCESS
BEGIN
	S(4) <= '0';
WAIT;
END PROCESS t_prcs_S_4;
-- S[3]
t_prcs_S_3: PROCESS
BEGIN
	S(3) <= '0';
WAIT;
END PROCESS t_prcs_S_3;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '0';
	WAIT FOR 190000 ps;
	S(2) <= '1';
	WAIT FOR 40000 ps;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '0';
	WAIT FOR 20000 ps;
	S(1) <= '1';
	WAIT FOR 140000 ps;
	S(1) <= '0';
	WAIT FOR 30000 ps;
	S(1) <= '1';
	WAIT FOR 60000 ps;
	S(1) <= '0';
	WAIT FOR 320000 ps;
	S(1) <= '1';
	WAIT FOR 90000 ps;
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
END compare_12bit_arch;
