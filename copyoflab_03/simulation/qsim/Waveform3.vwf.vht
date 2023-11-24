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
-- Generated on "09/27/2023 20:16:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          countMOD8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY countMOD8_vhd_vec_tst IS
END countMOD8_vhd_vec_tst;
ARCHITECTURE countMOD8_arch OF countMOD8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT countMOD8
	PORT (
	clk : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : countMOD8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Q => Q
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
END countMOD8_arch;
