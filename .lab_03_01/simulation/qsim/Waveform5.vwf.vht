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
-- Generated on "09/28/2023 10:05:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reg8bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg8bit_vhd_vec_tst IS
END reg8bit_vhd_vec_tst;
ARCHITECTURE reg8bit_arch OF reg8bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLRN : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PRN : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT reg8bit
	PORT (
	CLK : IN STD_LOGIC;
	CLRN : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	PRN : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : reg8bit
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLRN => CLRN,
	D => D,
	PRN => PRN,
	Q => Q
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 60000 ps;
	CLK <= '0';
	WAIT FOR 100000 ps;
	CLK <= '1';
WAIT;
END PROCESS t_prcs_CLK;

-- CLRN
t_prcs_CLRN: PROCESS
BEGIN
	CLRN <= '1';
WAIT;
END PROCESS t_prcs_CLRN;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '1';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '1';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '1';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '1';
WAIT;
END PROCESS t_prcs_D_0;

-- PRN
t_prcs_PRN: PROCESS
BEGIN
	PRN <= '1';
WAIT;
END PROCESS t_prcs_PRN;
END reg8bit_arch;
