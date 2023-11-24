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
-- Generated on "10/26/2023 15:23:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sync_9_count
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sync_9_count_vhd_vec_tst IS
END sync_9_count_vhd_vec_tst;
ARCHITECTURE sync_9_count_arch OF sync_9_count_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bool_test : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clk_a : STD_LOGIC;
SIGNAL cmp_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL cmp_oo : STD_LOGIC;
SIGNAL Co : STD_LOGIC;
SIGNAL outp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pause_ant : STD_LOGIC;
SIGNAL pb_pause : STD_LOGIC;
SIGNAL pb_rst : STD_LOGIC;
SIGNAL psed_o : STD_LOGIC;
COMPONENT sync_9_count
	PORT (
	bool_test : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	clk_a : IN STD_LOGIC;
	cmp_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	cmp_oo : OUT STD_LOGIC;
	Co : OUT STD_LOGIC;
	outp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	pause_ant : IN STD_LOGIC;
	pb_pause : IN STD_LOGIC;
	pb_rst : IN STD_LOGIC;
	psed_o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sync_9_count
	PORT MAP (
-- list connections between master ports and signals
	bool_test => bool_test,
	clk => clk,
	clk_a => clk_a,
	cmp_in => cmp_in,
	cmp_oo => cmp_oo,
	Co => Co,
	outp => outp,
	pause_ant => pause_ant,
	pb_pause => pb_pause,
	pb_rst => pb_rst,
	psed_o => psed_o
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

-- clk_a
t_prcs_clk_a: PROCESS
BEGIN
LOOP
	clk_a <= '0';
	WAIT FOR 2500 ps;
	clk_a <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_a;
-- cmp_in[3]
t_prcs_cmp_in_3: PROCESS
BEGIN
	cmp_in(3) <= '0';
WAIT;
END PROCESS t_prcs_cmp_in_3;
-- cmp_in[2]
t_prcs_cmp_in_2: PROCESS
BEGIN
	cmp_in(2) <= '0';
WAIT;
END PROCESS t_prcs_cmp_in_2;
-- cmp_in[1]
t_prcs_cmp_in_1: PROCESS
BEGIN
	cmp_in(1) <= '0';
WAIT;
END PROCESS t_prcs_cmp_in_1;
-- cmp_in[0]
t_prcs_cmp_in_0: PROCESS
BEGIN
	cmp_in(0) <= '0';
WAIT;
END PROCESS t_prcs_cmp_in_0;

-- pause_ant
t_prcs_pause_ant: PROCESS
BEGIN
	pause_ant <= '0';
WAIT;
END PROCESS t_prcs_pause_ant;

-- pb_pause
t_prcs_pb_pause: PROCESS
BEGIN
	pb_pause <= '1';
WAIT;
END PROCESS t_prcs_pb_pause;

-- pb_rst
t_prcs_pb_rst: PROCESS
BEGIN
	pb_rst <= '1';
WAIT;
END PROCESS t_prcs_pb_rst;
END sync_9_count_arch;
