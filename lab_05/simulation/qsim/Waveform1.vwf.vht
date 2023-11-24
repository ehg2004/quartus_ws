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
-- Generated on "10/20/2023 00:23:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sync_999ms_count
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sync_999ms_count_vhd_vec_tst IS
END sync_999ms_count_vhd_vec_tst;
ARCHITECTURE sync_999ms_count_arch OF sync_999ms_count_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Co : STD_LOGIC;
SIGNAL outp : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL pause_ant : STD_LOGIC;
SIGNAL pb_pause : STD_LOGIC;
SIGNAL pb_rst : STD_LOGIC;
COMPONENT sync_999ms_count
	PORT (
	clk : IN STD_LOGIC;
	Co : OUT STD_LOGIC;
	outp : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	pause_ant : IN STD_LOGIC;
	pb_pause : IN STD_LOGIC;
	pb_rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sync_999ms_count
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Co => Co,
	outp => outp,
	pause_ant => pause_ant,
	pb_pause => pb_pause,
	pb_rst => pb_rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 250 ps;
	clk <= '1';
	WAIT FOR 250 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

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
	WAIT FOR 464000 ps;
	pb_pause <= '0';
	WAIT FOR 80000 ps;
	pb_pause <= '1';
WAIT;
END PROCESS t_prcs_pb_pause;

-- pb_rst
t_prcs_pb_rst: PROCESS
BEGIN
	pb_rst <= '1';
	WAIT FOR 112000 ps;
	pb_rst <= '0';
	WAIT FOR 16000 ps;
	pb_rst <= '1';
WAIT;
END PROCESS t_prcs_pb_rst;
END sync_999ms_count_arch;
