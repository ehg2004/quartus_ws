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
-- Generated on "11/09/2023 15:16:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab_05
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab_05_vhd_vec_tst IS
END lab_05_vhd_vec_tst;
ARCHITECTURE lab_05_arch OF lab_05_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL An : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL auto_ps : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk_dbg : STD_LOGIC;
SIGNAL clk_ref : STD_LOGIC;
SIGNAL clk_sw : STD_LOGIC;
SIGNAL Cn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Dn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL E : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL En : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Fn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL led_clk : STD_LOGIC;
SIGNAL pb_pause : STD_LOGIC;
SIGNAL pb_rst : STD_LOGIC;
COMPONENT lab_05
	PORT (
	A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	An : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	auto_ps : IN STD_LOGIC;
	B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	C : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk_dbg : IN STD_LOGIC;
	clk_ref : IN STD_LOGIC;
	clk_sw : IN STD_LOGIC;
	Cn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Dn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	E : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	En : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Fn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	led_clk : OUT STD_LOGIC;
	pb_pause : IN STD_LOGIC;
	pb_rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab_05
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	An => An,
	auto_ps => auto_ps,
	B => B,
	Bn => Bn,
	C => C,
	clk_dbg => clk_dbg,
	clk_ref => clk_ref,
	clk_sw => clk_sw,
	Cn => Cn,
	D => D,
	Dn => Dn,
	E => E,
	En => En,
	F => F,
	Fn => Fn,
	led_clk => led_clk,
	pb_pause => pb_pause,
	pb_rst => pb_rst
	);

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

-- auto_ps
t_prcs_auto_ps: PROCESS
BEGIN
	auto_ps <= '1';
WAIT;
END PROCESS t_prcs_auto_ps;

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
WAIT;
END PROCESS t_prcs_pb_pause;

-- pb_rst
t_prcs_pb_rst: PROCESS
BEGIN
	pb_rst <= '1';
WAIT;
END PROCESS t_prcs_pb_rst;

-- clk_dbg
t_prcs_clk_dbg: PROCESS
BEGIN
LOOP
	clk_dbg <= '0';
	WAIT FOR 10000 ps;
	clk_dbg <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_dbg;
END lab_05_arch;
