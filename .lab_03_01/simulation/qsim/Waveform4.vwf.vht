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
-- Generated on "09/27/2023 20:33:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SIPOreg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SIPOreg_vhd_vec_tst IS
END SIPOreg_vhd_vec_tst;
ARCHITECTURE SIPOreg_arch OF SIPOreg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL OE : STD_LOGIC;
SIGNAL Q_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S_in : STD_LOGIC;
COMPONENT SIPOreg
	PORT (
	clk : IN STD_LOGIC;
	OE : IN STD_LOGIC;
	Q_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	S_in : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SIPOreg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	OE => OE,
	Q_out => Q_out,
	S_in => S_in
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

-- OE
t_prcs_OE: PROCESS
BEGIN
	OE <= '1';
WAIT;
END PROCESS t_prcs_OE;

-- S_in
t_prcs_S_in: PROCESS
BEGIN
	S_in <= '1';
	WAIT FOR 20000 ps;
	S_in <= '0';
	WAIT FOR 40000 ps;
	S_in <= '1';
	WAIT FOR 20000 ps;
	S_in <= '0';
	WAIT FOR 60000 ps;
	S_in <= '1';
	WAIT FOR 20000 ps;
	S_in <= '0';
WAIT;
END PROCESS t_prcs_S_in;
END SIPOreg_arch;
