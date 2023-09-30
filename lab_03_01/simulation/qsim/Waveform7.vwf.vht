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
-- Generated on "09/28/2023 14:55:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PISOtoSIPOmod8dec
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PISOtoSIPOmod8dec_vhd_vec_tst IS
END PISOtoSIPOmod8dec_vhd_vec_tst;
ARCHITECTURE PISOtoSIPOmod8dec_arch OF PISOtoSIPOmod8dec_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL A1_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B0_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B1_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clk_led : STD_LOGIC;
SIGNAL N_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PB0 : STD_LOGIC;
SIGNAL PB1 : STD_LOGIC;
COMPONENT PISOtoSIPOmod8dec
	PORT (
	A0_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	A1_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B0_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B1_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	clk_led : OUT STD_LOGIC;
	N_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	PB0 : IN STD_LOGIC;
	PB1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PISOtoSIPOmod8dec
	PORT MAP (
-- list connections between master ports and signals
	A0_out => A0_out,
	A1_out => A1_out,
	B0_out => B0_out,
	B1_out => B1_out,
	clk => clk,
	clk_led => clk_led,
	N_in => N_in,
	PB0 => PB0,
	PB1 => PB1
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- N_in[7]
t_prcs_N_in_7: PROCESS
BEGIN
	N_in(7) <= '0';
WAIT;
END PROCESS t_prcs_N_in_7;
-- N_in[6]
t_prcs_N_in_6: PROCESS
BEGIN
	N_in(6) <= '0';
WAIT;
END PROCESS t_prcs_N_in_6;
-- N_in[5]
t_prcs_N_in_5: PROCESS
BEGIN
	N_in(5) <= '0';
WAIT;
END PROCESS t_prcs_N_in_5;
-- N_in[4]
t_prcs_N_in_4: PROCESS
BEGIN
	N_in(4) <= '0';
WAIT;
END PROCESS t_prcs_N_in_4;
-- N_in[3]
t_prcs_N_in_3: PROCESS
BEGIN
	N_in(3) <= '0';
WAIT;
END PROCESS t_prcs_N_in_3;
-- N_in[2]
t_prcs_N_in_2: PROCESS
BEGIN
	N_in(2) <= '0';
WAIT;
END PROCESS t_prcs_N_in_2;
-- N_in[1]
t_prcs_N_in_1: PROCESS
BEGIN
	N_in(1) <= '0';
WAIT;
END PROCESS t_prcs_N_in_1;
-- N_in[0]
t_prcs_N_in_0: PROCESS
BEGIN
	N_in(0) <= '0';
WAIT;
END PROCESS t_prcs_N_in_0;

-- PB0
t_prcs_PB0: PROCESS
BEGIN
	PB0 <= '0';
WAIT;
END PROCESS t_prcs_PB0;

-- PB1
t_prcs_PB1: PROCESS
BEGIN
	PB1 <= '0';
WAIT;
END PROCESS t_prcs_PB1;
END PISOtoSIPOmod8dec_arch;
