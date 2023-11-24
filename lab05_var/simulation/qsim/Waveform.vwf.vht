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
-- Generated on "10/27/2023 20:05:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test02
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test02_vhd_vec_tst IS
END test02_vhd_vec_tst;
ARCHITECTURE test02_arch OF test02_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL auto_ps : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk_ref : STD_LOGIC;
SIGNAL clk_sw : STD_LOGIC;
SIGNAL led_clk : STD_LOGIC;
SIGNAL pb_pause : STD_LOGIC;
SIGNAL pb_rst : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT test02
	PORT (
	A : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	auto_ps : IN STD_LOGIC;
	B : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk_ref : IN STD_LOGIC;
	clk_sw : IN STD_LOGIC;
	led_clk : BUFFER STD_LOGIC;
	pb_pause : IN STD_LOGIC;
	pb_rst : IN STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test02
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	auto_ps => auto_ps,
	B => B,
	clk_ref => clk_ref,
	clk_sw => clk_sw,
	led_clk => led_clk,
	pb_pause => pb_pause,
	pb_rst => pb_rst,
	X => X
	);

-- auto_ps
t_prcs_auto_ps: PROCESS
BEGIN
	auto_ps <= '1';
WAIT;
END PROCESS t_prcs_auto_ps;

-- clk_ref
t_prcs_clk_ref: PROCESS
BEGIN
LOOP
	clk_ref <= '0';
	WAIT FOR 10000 ps;
	clk_ref <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_ref;

-- clk_sw
t_prcs_clk_sw: PROCESS
BEGIN
	clk_sw <= '0';
WAIT;
END PROCESS t_prcs_clk_sw;

-- pb_pause
t_prcs_pb_pause: PROCESS
BEGIN
	pb_pause <= '1';
	WAIT FOR 770000 ps;
	pb_pause <= '0';
	WAIT FOR 20000 ps;
	pb_pause <= '1';
WAIT;
END PROCESS t_prcs_pb_pause;

-- pb_rst
t_prcs_pb_rst: PROCESS
BEGIN
	pb_rst <= '1';
WAIT;
END PROCESS t_prcs_pb_rst;
-- X[3]
t_prcs_X_3: PROCESS
BEGIN
	X(3) <= '0';
WAIT;
END PROCESS t_prcs_X_3;
-- X[2]
t_prcs_X_2: PROCESS
BEGIN
	X(2) <= '0';
WAIT;
END PROCESS t_prcs_X_2;
-- X[1]
t_prcs_X_1: PROCESS
BEGIN
	X(1) <= '0';
WAIT;
END PROCESS t_prcs_X_1;
-- X[0]
t_prcs_X_0: PROCESS
BEGIN
	X(0) <= '0';
WAIT;
END PROCESS t_prcs_X_0;
END test02_arch;
