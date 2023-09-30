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
-- Generated on "09/21/2023 21:40:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          twoDigcountInc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY twoDigcountInc_vhd_vec_tst IS
END twoDigcountInc_vhd_vec_tst;
ARCHITECTURE twoDigcountInc_arch OF twoDigcountInc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Co : STD_LOGIC;
SIGNAL D0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT twoDigcountInc
	PORT (
	clk : IN STD_LOGIC;
	Co : OUT STD_LOGIC;
	D0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	D1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : twoDigcountInc
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Co => Co,
	D0 => D0,
	D1 => D1
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
END twoDigcountInc_arch;
