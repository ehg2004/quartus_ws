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
-- Generated on "10/20/2023 10:39:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          seq_detector_3bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seq_detector_3bit_vhd_vec_tst IS
END seq_detector_3bit_vhd_vec_tst;
ARCHITECTURE seq_detector_3bit_arch OF seq_detector_3bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RSTN : STD_LOGIC;
SIGNAL SW_i : STD_LOGIC;
COMPONENT seq_detector_3bit
	PORT (
	clk : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RSTN : IN STD_LOGIC;
	SW_i : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : seq_detector_3bit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Q => Q,
	RSTN => RSTN,
	SW_i => SW_i
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

-- RSTN
t_prcs_RSTN: PROCESS
BEGIN
	RSTN <= '0';
	WAIT FOR 10000 ps;
	RSTN <= '1';
WAIT;
END PROCESS t_prcs_RSTN;

-- SW_i
t_prcs_SW_i: PROCESS
BEGIN
	SW_i <= '0';
	WAIT FOR 60000 ps;
	SW_i <= '1';
	WAIT FOR 20000 ps;
	SW_i <= '0';
	WAIT FOR 40000 ps;
	SW_i <= '1';
	WAIT FOR 40000 ps;
	SW_i <= '0';
WAIT;
END PROCESS t_prcs_SW_i;
END seq_detector_3bit_arch;
