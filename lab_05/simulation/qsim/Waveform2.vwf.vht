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
-- Generated on "10/20/2023 02:01:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          async_9_count
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY async_9_count_vhd_vec_tst IS
END async_9_count_vhd_vec_tst;
ARCHITECTURE async_9_count_arch OF async_9_count_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cmp_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Co : STD_LOGIC;
SIGNAL outp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pause_ant : STD_LOGIC;
SIGNAL pb_pause : STD_LOGIC;
SIGNAL pb_rst : STD_LOGIC;
SIGNAL psed_o : STD_LOGIC;
COMPONENT async_9_count
	PORT (
	clk : IN STD_LOGIC;
	cmp_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Co : BUFFER STD_LOGIC;
	outp : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	pause_ant : IN STD_LOGIC;
	pb_pause : IN STD_LOGIC;
	pb_rst : IN STD_LOGIC;
	psed_o : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : async_9_count
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cmp_in => cmp_in,
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
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
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
	cmp_in(1) <= '1';
WAIT;
END PROCESS t_prcs_cmp_in_1;
-- cmp_in[0]
t_prcs_cmp_in_0: PROCESS
BEGIN
	cmp_in(0) <= '1';
WAIT;
END PROCESS t_prcs_cmp_in_0;

-- pause_ant
t_prcs_pause_ant: PROCESS
BEGIN
	pause_ant <= '1';
WAIT;
END PROCESS t_prcs_pause_ant;

-- pb_pause
t_prcs_pb_pause: PROCESS
BEGIN
	pb_pause <= '1';
	WAIT FOR 600000 ps;
	pb_pause <= '0';
	WAIT FOR 60000 ps;
	pb_pause <= '1';
WAIT;
END PROCESS t_prcs_pb_pause;

-- pb_rst
t_prcs_pb_rst: PROCESS
BEGIN
	pb_rst <= '1';
	WAIT FOR 260000 ps;
	pb_rst <= '0';
	WAIT FOR 100000 ps;
	pb_rst <= '1';
WAIT;
END PROCESS t_prcs_pb_rst;
END async_9_count_arch;
