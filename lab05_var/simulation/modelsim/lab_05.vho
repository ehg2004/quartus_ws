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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/18/2023 21:48:45"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab_05 IS
    PORT (
	clk_ref : IN std_logic;
	clkdbg : IN std_logic;
	pb_rst : IN std_logic;
	auto_ps : IN std_logic;
	pb_pause : IN std_logic;
	clk_sw : IN std_logic;
	led_clk : OUT std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	C : OUT std_logic_vector(7 DOWNTO 0);
	D : OUT std_logic_vector(7 DOWNTO 0);
	E : OUT std_logic_vector(7 DOWNTO 0);
	F : OUT std_logic_vector(7 DOWNTO 0);
	An : OUT std_logic_vector(3 DOWNTO 0);
	Bn : OUT std_logic_vector(3 DOWNTO 0);
	Cn : OUT std_logic_vector(3 DOWNTO 0);
	Dn : OUT std_logic_vector(3 DOWNTO 0);
	En : OUT std_logic_vector(3 DOWNTO 0);
	Fn : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab_05;

-- Design Ports Information
-- clkdbg	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[1]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[1]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sw	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ref	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_pause	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- auto_ps	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_ref : std_logic;
SIGNAL ww_clkdbg : std_logic;
SIGNAL ww_pb_rst : std_logic;
SIGNAL ww_auto_ps : std_logic;
SIGNAL ww_pb_pause : std_logic;
SIGNAL ww_clk_sw : std_logic;
SIGNAL ww_led_clk : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_E : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_An : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_En : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Fn : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_ref~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdbg~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_clk~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \D[5]~output_o\ : std_logic;
SIGNAL \D[6]~output_o\ : std_logic;
SIGNAL \D[7]~output_o\ : std_logic;
SIGNAL \E[0]~output_o\ : std_logic;
SIGNAL \E[1]~output_o\ : std_logic;
SIGNAL \E[2]~output_o\ : std_logic;
SIGNAL \E[3]~output_o\ : std_logic;
SIGNAL \E[4]~output_o\ : std_logic;
SIGNAL \E[5]~output_o\ : std_logic;
SIGNAL \E[6]~output_o\ : std_logic;
SIGNAL \E[7]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \An[0]~output_o\ : std_logic;
SIGNAL \An[1]~output_o\ : std_logic;
SIGNAL \An[2]~output_o\ : std_logic;
SIGNAL \An[3]~output_o\ : std_logic;
SIGNAL \Bn[0]~output_o\ : std_logic;
SIGNAL \Bn[1]~output_o\ : std_logic;
SIGNAL \Bn[2]~output_o\ : std_logic;
SIGNAL \Bn[3]~output_o\ : std_logic;
SIGNAL \Cn[0]~output_o\ : std_logic;
SIGNAL \Cn[1]~output_o\ : std_logic;
SIGNAL \Cn[2]~output_o\ : std_logic;
SIGNAL \Cn[3]~output_o\ : std_logic;
SIGNAL \Dn[0]~output_o\ : std_logic;
SIGNAL \Dn[1]~output_o\ : std_logic;
SIGNAL \Dn[2]~output_o\ : std_logic;
SIGNAL \Dn[3]~output_o\ : std_logic;
SIGNAL \En[0]~output_o\ : std_logic;
SIGNAL \En[1]~output_o\ : std_logic;
SIGNAL \En[2]~output_o\ : std_logic;
SIGNAL \En[3]~output_o\ : std_logic;
SIGNAL \Fn[0]~output_o\ : std_logic;
SIGNAL \Fn[1]~output_o\ : std_logic;
SIGNAL \Fn[2]~output_o\ : std_logic;
SIGNAL \Fn[3]~output_o\ : std_logic;
SIGNAL \clk_sw~input_o\ : std_logic;
SIGNAL \clk_ref~input_o\ : std_logic;
SIGNAL \clk_ref~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count[0]~6_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~1\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~2_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~1_cout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~2_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~3\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~4_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~5\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~6_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~7\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~8_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~9\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~10_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~1_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~11\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~12_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~2_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~13\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~14_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~3_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~15\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~16_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~17\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~18_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~19\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~20_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~4_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~21\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~22_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~23\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~24_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~25\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~26_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~27\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~28_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~3_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~2_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~1_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~29\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~30_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~31\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~32_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~33\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~34_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~35\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~36_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~37\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~38_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~39\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~40_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~41\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~42_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~43\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~44_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~5_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~4_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~45\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~46_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~47\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~48_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~49\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~50_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~51\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~52_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~6_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~53\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~54_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~55\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~56_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~57\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~58_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~59\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~60_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~7_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~8_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~9_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|tmp~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|tmp~q\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~3\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~4_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~5\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~6_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~7\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~8_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~9\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~10_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~1_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~11\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~12_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~13\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~14_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~2_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~15\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~16_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~3_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~17\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~18_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~19\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~20_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~21\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~22_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~3_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~1_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~2_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~23\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~24_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~25\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~26_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~4_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~27\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~28_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~5_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~29\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~30_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~4_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~31\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~32_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~33\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~34_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~35\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~36_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~37\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~38_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~39\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~40_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~41\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~42_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~43\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~44_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~45\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~46_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~6_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~5_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~47\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~48_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~49\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~50_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~51\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~52_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~53\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~54_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~55\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~56_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~57\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~58_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~59\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~60_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~61\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~62_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~8_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~7_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~9_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~10_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|tmp~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|tmp~q\ : std_logic;
SIGNAL \clkp~0_combout\ : std_logic;
SIGNAL \pb_pause~input_o\ : std_logic;
SIGNAL \pause_trigger~0_combout\ : std_logic;
SIGNAL \A_count|D_s~0_combout\ : std_logic;
SIGNAL \pb_rst~input_o\ : std_logic;
SIGNAL \A_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \A_count|D_s~2_combout\ : std_logic;
SIGNAL \A_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \A_count|D_s[2]~1_combout\ : std_logic;
SIGNAL \A_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \A_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \B_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \B_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \B_count|D_s[2]~0_combout\ : std_logic;
SIGNAL \B_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \B_conv|D~7_combout\ : std_logic;
SIGNAL \B_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \B_count|D_s~1_combout\ : std_logic;
SIGNAL \B_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \B_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \C_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \C_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \C_conv|D~7_combout\ : std_logic;
SIGNAL \C_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \C_count|D_s~1_combout\ : std_logic;
SIGNAL \C_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \C_count|D_s[2]~0_combout\ : std_logic;
SIGNAL \C_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \C_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \D_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \D_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \D_count|D_s[2]~1_combout\ : std_logic;
SIGNAL \D_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \D_count|D_s~0_combout\ : std_logic;
SIGNAL \D_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \D_count|D_s~2_combout\ : std_logic;
SIGNAL \D_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \D_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \E_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \E_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \E_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \E_conv|D~7_combout\ : std_logic;
SIGNAL \E_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \E_count|rst_cmp|rslt_s~0_combout\ : std_logic;
SIGNAL \F_conv|D~7_combout\ : std_logic;
SIGNAL \F_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \F_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \F_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \F_count|D_s[2]~1_combout\ : std_logic;
SIGNAL \F_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \F_count|D_s~0_combout\ : std_logic;
SIGNAL \F_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \auto_ps~input_o\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \lock_compare_trigger~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \lock_compare_trigger~q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \pause_trigger~q\ : std_logic;
SIGNAL \clk_M~combout\ : std_logic;
SIGNAL \A_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \A_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \A_conv|D~0_combout\ : std_logic;
SIGNAL \A_conv|D~1_combout\ : std_logic;
SIGNAL \A_conv|D~2_combout\ : std_logic;
SIGNAL \A_conv|D~3_combout\ : std_logic;
SIGNAL \A_conv|D~4_combout\ : std_logic;
SIGNAL \A_conv|D~5_combout\ : std_logic;
SIGNAL \A_conv|D~6_combout\ : std_logic;
SIGNAL \B_conv|D~0_combout\ : std_logic;
SIGNAL \B_conv|D~1_combout\ : std_logic;
SIGNAL \B_conv|D~2_combout\ : std_logic;
SIGNAL \B_conv|D~3_combout\ : std_logic;
SIGNAL \B_conv|D~4_combout\ : std_logic;
SIGNAL \B_conv|D~5_combout\ : std_logic;
SIGNAL \B_conv|D~6_combout\ : std_logic;
SIGNAL \C_conv|D~0_combout\ : std_logic;
SIGNAL \C_conv|D~1_combout\ : std_logic;
SIGNAL \C_conv|D~2_combout\ : std_logic;
SIGNAL \C_conv|D~3_combout\ : std_logic;
SIGNAL \C_conv|D~4_combout\ : std_logic;
SIGNAL \C_conv|D~5_combout\ : std_logic;
SIGNAL \C_conv|D~6_combout\ : std_logic;
SIGNAL \D_conv|D~0_combout\ : std_logic;
SIGNAL \D_conv|D~1_combout\ : std_logic;
SIGNAL \D_conv|D~2_combout\ : std_logic;
SIGNAL \D_conv|D~3_combout\ : std_logic;
SIGNAL \D_conv|D~4_combout\ : std_logic;
SIGNAL \D_conv|D~5_combout\ : std_logic;
SIGNAL \D_conv|D~6_combout\ : std_logic;
SIGNAL \E_conv|D~0_combout\ : std_logic;
SIGNAL \E_conv|D~1_combout\ : std_logic;
SIGNAL \E_conv|D~2_combout\ : std_logic;
SIGNAL \E_conv|D~3_combout\ : std_logic;
SIGNAL \E_conv|D~4_combout\ : std_logic;
SIGNAL \E_conv|D~5_combout\ : std_logic;
SIGNAL \E_conv|D~6_combout\ : std_logic;
SIGNAL \F_conv|D~0_combout\ : std_logic;
SIGNAL \F_conv|D~1_combout\ : std_logic;
SIGNAL \F_conv|D~2_combout\ : std_logic;
SIGNAL \F_conv|D~3_combout\ : std_logic;
SIGNAL \F_conv|D~4_combout\ : std_logic;
SIGNAL \F_conv|D~5_combout\ : std_logic;
SIGNAL \F_conv|D~6_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cmp_clk_1KHz|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_pb_pause~input_o\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_ref <= clk_ref;
ww_clkdbg <= clkdbg;
ww_pb_rst <= pb_rst;
ww_auto_ps <= auto_ps;
ww_pb_pause <= pb_pause;
ww_clk_sw <= clk_sw;
led_clk <= ww_led_clk;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
An <= ww_An;
Bn <= ww_Bn;
Cn <= ww_Cn;
Dn <= ww_Dn;
En <= ww_En;
Fn <= ww_Fn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_ref~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_ref~input_o\);
\ALT_INV_pb_pause~input_o\ <= NOT \pb_pause~input_o\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\led_clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkp~0_combout\,
	devoe => ww_devoe,
	o => \led_clk~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~0_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~1_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~2_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~3_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~4_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~5_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_conv|D~6_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\A[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~0_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~1_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~2_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~3_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~4_combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~5_combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_conv|D~6_combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\B[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\C[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~0_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\C[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~1_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\C[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~2_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\C[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~3_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\C[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~4_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\C[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~5_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\C[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_conv|D~6_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\C[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~0_combout\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~1_combout\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~2_combout\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~3_combout\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~4_combout\,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~5_combout\,
	devoe => ww_devoe,
	o => \D[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_conv|D~6_combout\,
	devoe => ww_devoe,
	o => \D[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\E[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~0_combout\,
	devoe => ww_devoe,
	o => \E[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\E[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~1_combout\,
	devoe => ww_devoe,
	o => \E[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\E[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~2_combout\,
	devoe => ww_devoe,
	o => \E[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\E[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~3_combout\,
	devoe => ww_devoe,
	o => \E[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\E[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~4_combout\,
	devoe => ww_devoe,
	o => \E[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\E[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~5_combout\,
	devoe => ww_devoe,
	o => \E[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\E[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_conv|D~6_combout\,
	devoe => ww_devoe,
	o => \E[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\E[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \E[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~2_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~3_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\F[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~4_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\F[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~5_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\F[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_conv|D~6_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\F[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\An[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \An[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\An[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \An[1]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\An[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \An[2]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\An[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \An[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\Bn[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \Bn[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\Bn[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \Bn[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\Bn[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \Bn[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\Bn[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \Bn[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\Cn[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \Cn[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\Cn[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \Cn[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\Cn[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \Cn[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\Cn[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \Cn[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\Dn[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \Dn[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\Dn[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \Dn[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Dn[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \Dn[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\Dn[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \Dn[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\En[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \En[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\En[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \En[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\En[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \En[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\En[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \En[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\Fn[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \Fn[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\Fn[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \Fn[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\Fn[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \Fn[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\Fn[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \Fn[3]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\clk_sw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sw,
	o => \clk_sw~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk_ref~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ref,
	o => \clk_ref~input_o\);

-- Location: CLKCTRL_G9
\clk_ref~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_ref~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_ref~inputclkctrl_outclk\);

-- Location: LCCOMB_X62_Y40_N0
\cmp_clk_1KHz|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~0_combout\ = \cmp_clk_1KHz|count\(0) $ (GND)
-- \cmp_clk_1KHz|Add0~1\ = CARRY(!\cmp_clk_1KHz|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(0),
	datad => VCC,
	combout => \cmp_clk_1KHz|Add0~0_combout\,
	cout => \cmp_clk_1KHz|Add0~1\);

-- Location: LCCOMB_X63_Y40_N0
\cmp_clk_1KHz|count[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count[0]~6_combout\ = !\cmp_clk_1KHz|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|Add0~0_combout\,
	combout => \cmp_clk_1KHz|count[0]~6_combout\);

-- Location: FF_X62_Y40_N17
\cmp_clk_1KHz|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	asdata => \cmp_clk_1KHz|count[0]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(0));

-- Location: LCCOMB_X62_Y40_N2
\cmp_clk_1KHz|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~2_combout\ = (\cmp_clk_1KHz|count\(1) & (!\cmp_clk_1KHz|Add0~1\)) # (!\cmp_clk_1KHz|count\(1) & ((\cmp_clk_1KHz|Add0~1\) # (GND)))
-- \cmp_clk_1KHz|Add0~3\ = CARRY((!\cmp_clk_1KHz|Add0~1\) # (!\cmp_clk_1KHz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(1),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~1\,
	combout => \cmp_clk_1KHz|Add0~2_combout\,
	cout => \cmp_clk_1KHz|Add0~3\);

-- Location: FF_X62_Y40_N3
\cmp_clk_1KHz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(1));

-- Location: LCCOMB_X64_Y40_N2
\cmp_clk_20KHz|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~1_cout\ = CARRY((!\cmp_clk_1KHz|count\(0) & \cmp_clk_1KHz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(0),
	datab => \cmp_clk_1KHz|count\(1),
	datad => VCC,
	cout => \cmp_clk_20KHz|Add0~1_cout\);

-- Location: LCCOMB_X64_Y40_N4
\cmp_clk_20KHz|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~2_combout\ = (\cmp_clk_20KHz|count\(2) & (!\cmp_clk_20KHz|Add0~1_cout\)) # (!\cmp_clk_20KHz|count\(2) & ((\cmp_clk_20KHz|Add0~1_cout\) # (GND)))
-- \cmp_clk_20KHz|Add0~3\ = CARRY((!\cmp_clk_20KHz|Add0~1_cout\) # (!\cmp_clk_20KHz|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(2),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~1_cout\,
	combout => \cmp_clk_20KHz|Add0~2_combout\,
	cout => \cmp_clk_20KHz|Add0~3\);

-- Location: LCCOMB_X65_Y40_N20
\cmp_clk_20KHz|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~0_combout\ = (\cmp_clk_20KHz|Add0~2_combout\ & !\cmp_clk_20KHz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_20KHz|Add0~2_combout\,
	datad => \cmp_clk_20KHz|Equal0~9_combout\,
	combout => \cmp_clk_20KHz|count~0_combout\);

-- Location: FF_X65_Y40_N21
\cmp_clk_20KHz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(2));

-- Location: LCCOMB_X64_Y40_N6
\cmp_clk_20KHz|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~4_combout\ = (\cmp_clk_20KHz|count\(3) & (\cmp_clk_20KHz|Add0~3\ $ (GND))) # (!\cmp_clk_20KHz|count\(3) & (!\cmp_clk_20KHz|Add0~3\ & VCC))
-- \cmp_clk_20KHz|Add0~5\ = CARRY((\cmp_clk_20KHz|count\(3) & !\cmp_clk_20KHz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(3),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~3\,
	combout => \cmp_clk_20KHz|Add0~4_combout\,
	cout => \cmp_clk_20KHz|Add0~5\);

-- Location: FF_X64_Y40_N7
\cmp_clk_20KHz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(3));

-- Location: LCCOMB_X64_Y40_N8
\cmp_clk_20KHz|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~6_combout\ = (\cmp_clk_20KHz|count\(4) & (!\cmp_clk_20KHz|Add0~5\)) # (!\cmp_clk_20KHz|count\(4) & ((\cmp_clk_20KHz|Add0~5\) # (GND)))
-- \cmp_clk_20KHz|Add0~7\ = CARRY((!\cmp_clk_20KHz|Add0~5\) # (!\cmp_clk_20KHz|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(4),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~5\,
	combout => \cmp_clk_20KHz|Add0~6_combout\,
	cout => \cmp_clk_20KHz|Add0~7\);

-- Location: FF_X64_Y40_N9
\cmp_clk_20KHz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(4));

-- Location: LCCOMB_X64_Y40_N10
\cmp_clk_20KHz|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~8_combout\ = (\cmp_clk_20KHz|count\(5) & (\cmp_clk_20KHz|Add0~7\ $ (GND))) # (!\cmp_clk_20KHz|count\(5) & (!\cmp_clk_20KHz|Add0~7\ & VCC))
-- \cmp_clk_20KHz|Add0~9\ = CARRY((\cmp_clk_20KHz|count\(5) & !\cmp_clk_20KHz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(5),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~7\,
	combout => \cmp_clk_20KHz|Add0~8_combout\,
	cout => \cmp_clk_20KHz|Add0~9\);

-- Location: FF_X64_Y40_N11
\cmp_clk_20KHz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(5));

-- Location: LCCOMB_X64_Y40_N12
\cmp_clk_20KHz|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~10_combout\ = (\cmp_clk_20KHz|count\(6) & (!\cmp_clk_20KHz|Add0~9\)) # (!\cmp_clk_20KHz|count\(6) & ((\cmp_clk_20KHz|Add0~9\) # (GND)))
-- \cmp_clk_20KHz|Add0~11\ = CARRY((!\cmp_clk_20KHz|Add0~9\) # (!\cmp_clk_20KHz|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(6),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~9\,
	combout => \cmp_clk_20KHz|Add0~10_combout\,
	cout => \cmp_clk_20KHz|Add0~11\);

-- Location: LCCOMB_X65_Y40_N12
\cmp_clk_20KHz|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~1_combout\ = (!\cmp_clk_20KHz|Equal0~9_combout\ & \cmp_clk_20KHz|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Equal0~9_combout\,
	datad => \cmp_clk_20KHz|Add0~10_combout\,
	combout => \cmp_clk_20KHz|count~1_combout\);

-- Location: FF_X65_Y40_N13
\cmp_clk_20KHz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(6));

-- Location: LCCOMB_X64_Y40_N14
\cmp_clk_20KHz|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~12_combout\ = (\cmp_clk_20KHz|count\(7) & (\cmp_clk_20KHz|Add0~11\ $ (GND))) # (!\cmp_clk_20KHz|count\(7) & (!\cmp_clk_20KHz|Add0~11\ & VCC))
-- \cmp_clk_20KHz|Add0~13\ = CARRY((\cmp_clk_20KHz|count\(7) & !\cmp_clk_20KHz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(7),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~11\,
	combout => \cmp_clk_20KHz|Add0~12_combout\,
	cout => \cmp_clk_20KHz|Add0~13\);

-- Location: LCCOMB_X65_Y40_N14
\cmp_clk_20KHz|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~2_combout\ = (!\cmp_clk_20KHz|Equal0~9_combout\ & \cmp_clk_20KHz|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Equal0~9_combout\,
	datad => \cmp_clk_20KHz|Add0~12_combout\,
	combout => \cmp_clk_20KHz|count~2_combout\);

-- Location: FF_X65_Y40_N15
\cmp_clk_20KHz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(7));

-- Location: LCCOMB_X64_Y40_N16
\cmp_clk_20KHz|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~14_combout\ = (\cmp_clk_20KHz|count\(8) & (!\cmp_clk_20KHz|Add0~13\)) # (!\cmp_clk_20KHz|count\(8) & ((\cmp_clk_20KHz|Add0~13\) # (GND)))
-- \cmp_clk_20KHz|Add0~15\ = CARRY((!\cmp_clk_20KHz|Add0~13\) # (!\cmp_clk_20KHz|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(8),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~13\,
	combout => \cmp_clk_20KHz|Add0~14_combout\,
	cout => \cmp_clk_20KHz|Add0~15\);

-- Location: LCCOMB_X65_Y40_N30
\cmp_clk_20KHz|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~3_combout\ = (\cmp_clk_20KHz|Add0~14_combout\ & !\cmp_clk_20KHz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_20KHz|Add0~14_combout\,
	datad => \cmp_clk_20KHz|Equal0~9_combout\,
	combout => \cmp_clk_20KHz|count~3_combout\);

-- Location: FF_X65_Y40_N31
\cmp_clk_20KHz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(8));

-- Location: LCCOMB_X64_Y40_N18
\cmp_clk_20KHz|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~16_combout\ = (\cmp_clk_20KHz|count\(9) & (\cmp_clk_20KHz|Add0~15\ $ (GND))) # (!\cmp_clk_20KHz|count\(9) & (!\cmp_clk_20KHz|Add0~15\ & VCC))
-- \cmp_clk_20KHz|Add0~17\ = CARRY((\cmp_clk_20KHz|count\(9) & !\cmp_clk_20KHz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(9),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~15\,
	combout => \cmp_clk_20KHz|Add0~16_combout\,
	cout => \cmp_clk_20KHz|Add0~17\);

-- Location: FF_X64_Y40_N19
\cmp_clk_20KHz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(9));

-- Location: LCCOMB_X64_Y40_N20
\cmp_clk_20KHz|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~18_combout\ = (\cmp_clk_20KHz|count\(10) & (!\cmp_clk_20KHz|Add0~17\)) # (!\cmp_clk_20KHz|count\(10) & ((\cmp_clk_20KHz|Add0~17\) # (GND)))
-- \cmp_clk_20KHz|Add0~19\ = CARRY((!\cmp_clk_20KHz|Add0~17\) # (!\cmp_clk_20KHz|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(10),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~17\,
	combout => \cmp_clk_20KHz|Add0~18_combout\,
	cout => \cmp_clk_20KHz|Add0~19\);

-- Location: FF_X64_Y40_N21
\cmp_clk_20KHz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(10));

-- Location: LCCOMB_X64_Y40_N22
\cmp_clk_20KHz|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~20_combout\ = (\cmp_clk_20KHz|count\(11) & (\cmp_clk_20KHz|Add0~19\ $ (GND))) # (!\cmp_clk_20KHz|count\(11) & (!\cmp_clk_20KHz|Add0~19\ & VCC))
-- \cmp_clk_20KHz|Add0~21\ = CARRY((\cmp_clk_20KHz|count\(11) & !\cmp_clk_20KHz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(11),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~19\,
	combout => \cmp_clk_20KHz|Add0~20_combout\,
	cout => \cmp_clk_20KHz|Add0~21\);

-- Location: LCCOMB_X64_Y40_N0
\cmp_clk_20KHz|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~4_combout\ = (\cmp_clk_20KHz|Add0~20_combout\ & !\cmp_clk_20KHz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_20KHz|Add0~20_combout\,
	datad => \cmp_clk_20KHz|Equal0~9_combout\,
	combout => \cmp_clk_20KHz|count~4_combout\);

-- Location: FF_X64_Y40_N1
\cmp_clk_20KHz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(11));

-- Location: LCCOMB_X64_Y40_N24
\cmp_clk_20KHz|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~22_combout\ = (\cmp_clk_20KHz|count\(12) & (!\cmp_clk_20KHz|Add0~21\)) # (!\cmp_clk_20KHz|count\(12) & ((\cmp_clk_20KHz|Add0~21\) # (GND)))
-- \cmp_clk_20KHz|Add0~23\ = CARRY((!\cmp_clk_20KHz|Add0~21\) # (!\cmp_clk_20KHz|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(12),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~21\,
	combout => \cmp_clk_20KHz|Add0~22_combout\,
	cout => \cmp_clk_20KHz|Add0~23\);

-- Location: FF_X64_Y40_N25
\cmp_clk_20KHz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(12));

-- Location: LCCOMB_X64_Y40_N26
\cmp_clk_20KHz|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~24_combout\ = (\cmp_clk_20KHz|count\(13) & (\cmp_clk_20KHz|Add0~23\ $ (GND))) # (!\cmp_clk_20KHz|count\(13) & (!\cmp_clk_20KHz|Add0~23\ & VCC))
-- \cmp_clk_20KHz|Add0~25\ = CARRY((\cmp_clk_20KHz|count\(13) & !\cmp_clk_20KHz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(13),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~23\,
	combout => \cmp_clk_20KHz|Add0~24_combout\,
	cout => \cmp_clk_20KHz|Add0~25\);

-- Location: FF_X64_Y40_N27
\cmp_clk_20KHz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(13));

-- Location: LCCOMB_X64_Y40_N28
\cmp_clk_20KHz|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~26_combout\ = (\cmp_clk_20KHz|count\(14) & (!\cmp_clk_20KHz|Add0~25\)) # (!\cmp_clk_20KHz|count\(14) & ((\cmp_clk_20KHz|Add0~25\) # (GND)))
-- \cmp_clk_20KHz|Add0~27\ = CARRY((!\cmp_clk_20KHz|Add0~25\) # (!\cmp_clk_20KHz|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(14),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~25\,
	combout => \cmp_clk_20KHz|Add0~26_combout\,
	cout => \cmp_clk_20KHz|Add0~27\);

-- Location: FF_X64_Y40_N29
\cmp_clk_20KHz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(14));

-- Location: LCCOMB_X64_Y40_N30
\cmp_clk_20KHz|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~28_combout\ = (\cmp_clk_20KHz|count\(15) & (\cmp_clk_20KHz|Add0~27\ $ (GND))) # (!\cmp_clk_20KHz|count\(15) & (!\cmp_clk_20KHz|Add0~27\ & VCC))
-- \cmp_clk_20KHz|Add0~29\ = CARRY((\cmp_clk_20KHz|count\(15) & !\cmp_clk_20KHz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(15),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~27\,
	combout => \cmp_clk_20KHz|Add0~28_combout\,
	cout => \cmp_clk_20KHz|Add0~29\);

-- Location: FF_X64_Y40_N31
\cmp_clk_20KHz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(15));

-- Location: LCCOMB_X65_Y40_N22
\cmp_clk_20KHz|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~3_combout\ = (!\cmp_clk_20KHz|count\(15) & (!\cmp_clk_20KHz|count\(14) & (!\cmp_clk_20KHz|count\(13) & !\cmp_clk_20KHz|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(15),
	datab => \cmp_clk_20KHz|count\(14),
	datac => \cmp_clk_20KHz|count\(13),
	datad => \cmp_clk_20KHz|count\(12),
	combout => \cmp_clk_20KHz|Equal0~3_combout\);

-- Location: LCCOMB_X65_Y40_N26
\cmp_clk_20KHz|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~2_combout\ = (\cmp_clk_20KHz|count\(11) & (!\cmp_clk_20KHz|count\(9) & (\cmp_clk_20KHz|count\(8) & !\cmp_clk_20KHz|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(11),
	datab => \cmp_clk_20KHz|count\(9),
	datac => \cmp_clk_20KHz|count\(8),
	datad => \cmp_clk_20KHz|count\(10),
	combout => \cmp_clk_20KHz|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y40_N20
\cmp_clk_1KHz|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~0_combout\ = (!\cmp_clk_1KHz|count\(1) & \cmp_clk_1KHz|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(1),
	datad => \cmp_clk_1KHz|count\(0),
	combout => \cmp_clk_1KHz|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y40_N16
\cmp_clk_20KHz|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~0_combout\ = (!\cmp_clk_20KHz|count\(4) & (\cmp_clk_20KHz|count\(6) & (\cmp_clk_20KHz|count\(7) & !\cmp_clk_20KHz|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(4),
	datab => \cmp_clk_20KHz|count\(6),
	datac => \cmp_clk_20KHz|count\(7),
	datad => \cmp_clk_20KHz|count\(5),
	combout => \cmp_clk_20KHz|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y40_N8
\cmp_clk_20KHz|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~1_combout\ = (\cmp_clk_20KHz|count\(2) & (!\cmp_clk_20KHz|count\(3) & (\cmp_clk_1KHz|Equal0~0_combout\ & \cmp_clk_20KHz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(2),
	datab => \cmp_clk_20KHz|count\(3),
	datac => \cmp_clk_1KHz|Equal0~0_combout\,
	datad => \cmp_clk_20KHz|Equal0~0_combout\,
	combout => \cmp_clk_20KHz|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y39_N0
\cmp_clk_20KHz|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~30_combout\ = (\cmp_clk_20KHz|count\(16) & (!\cmp_clk_20KHz|Add0~29\)) # (!\cmp_clk_20KHz|count\(16) & ((\cmp_clk_20KHz|Add0~29\) # (GND)))
-- \cmp_clk_20KHz|Add0~31\ = CARRY((!\cmp_clk_20KHz|Add0~29\) # (!\cmp_clk_20KHz|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(16),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~29\,
	combout => \cmp_clk_20KHz|Add0~30_combout\,
	cout => \cmp_clk_20KHz|Add0~31\);

-- Location: FF_X64_Y39_N1
\cmp_clk_20KHz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(16));

-- Location: LCCOMB_X64_Y39_N2
\cmp_clk_20KHz|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~32_combout\ = (\cmp_clk_20KHz|count\(17) & (\cmp_clk_20KHz|Add0~31\ $ (GND))) # (!\cmp_clk_20KHz|count\(17) & (!\cmp_clk_20KHz|Add0~31\ & VCC))
-- \cmp_clk_20KHz|Add0~33\ = CARRY((\cmp_clk_20KHz|count\(17) & !\cmp_clk_20KHz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(17),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~31\,
	combout => \cmp_clk_20KHz|Add0~32_combout\,
	cout => \cmp_clk_20KHz|Add0~33\);

-- Location: FF_X64_Y39_N3
\cmp_clk_20KHz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(17));

-- Location: LCCOMB_X64_Y39_N4
\cmp_clk_20KHz|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~34_combout\ = (\cmp_clk_20KHz|count\(18) & (!\cmp_clk_20KHz|Add0~33\)) # (!\cmp_clk_20KHz|count\(18) & ((\cmp_clk_20KHz|Add0~33\) # (GND)))
-- \cmp_clk_20KHz|Add0~35\ = CARRY((!\cmp_clk_20KHz|Add0~33\) # (!\cmp_clk_20KHz|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(18),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~33\,
	combout => \cmp_clk_20KHz|Add0~34_combout\,
	cout => \cmp_clk_20KHz|Add0~35\);

-- Location: FF_X64_Y39_N5
\cmp_clk_20KHz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(18));

-- Location: LCCOMB_X64_Y39_N6
\cmp_clk_20KHz|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~36_combout\ = (\cmp_clk_20KHz|count\(19) & (\cmp_clk_20KHz|Add0~35\ $ (GND))) # (!\cmp_clk_20KHz|count\(19) & (!\cmp_clk_20KHz|Add0~35\ & VCC))
-- \cmp_clk_20KHz|Add0~37\ = CARRY((\cmp_clk_20KHz|count\(19) & !\cmp_clk_20KHz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(19),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~35\,
	combout => \cmp_clk_20KHz|Add0~36_combout\,
	cout => \cmp_clk_20KHz|Add0~37\);

-- Location: FF_X64_Y39_N7
\cmp_clk_20KHz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(19));

-- Location: LCCOMB_X64_Y39_N8
\cmp_clk_20KHz|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~38_combout\ = (\cmp_clk_20KHz|count\(20) & (!\cmp_clk_20KHz|Add0~37\)) # (!\cmp_clk_20KHz|count\(20) & ((\cmp_clk_20KHz|Add0~37\) # (GND)))
-- \cmp_clk_20KHz|Add0~39\ = CARRY((!\cmp_clk_20KHz|Add0~37\) # (!\cmp_clk_20KHz|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(20),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~37\,
	combout => \cmp_clk_20KHz|Add0~38_combout\,
	cout => \cmp_clk_20KHz|Add0~39\);

-- Location: FF_X64_Y39_N9
\cmp_clk_20KHz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(20));

-- Location: LCCOMB_X64_Y39_N10
\cmp_clk_20KHz|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~40_combout\ = (\cmp_clk_20KHz|count\(21) & (\cmp_clk_20KHz|Add0~39\ $ (GND))) # (!\cmp_clk_20KHz|count\(21) & (!\cmp_clk_20KHz|Add0~39\ & VCC))
-- \cmp_clk_20KHz|Add0~41\ = CARRY((\cmp_clk_20KHz|count\(21) & !\cmp_clk_20KHz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(21),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~39\,
	combout => \cmp_clk_20KHz|Add0~40_combout\,
	cout => \cmp_clk_20KHz|Add0~41\);

-- Location: FF_X64_Y39_N11
\cmp_clk_20KHz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(21));

-- Location: LCCOMB_X64_Y39_N12
\cmp_clk_20KHz|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~42_combout\ = (\cmp_clk_20KHz|count\(22) & (!\cmp_clk_20KHz|Add0~41\)) # (!\cmp_clk_20KHz|count\(22) & ((\cmp_clk_20KHz|Add0~41\) # (GND)))
-- \cmp_clk_20KHz|Add0~43\ = CARRY((!\cmp_clk_20KHz|Add0~41\) # (!\cmp_clk_20KHz|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(22),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~41\,
	combout => \cmp_clk_20KHz|Add0~42_combout\,
	cout => \cmp_clk_20KHz|Add0~43\);

-- Location: FF_X64_Y39_N13
\cmp_clk_20KHz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(22));

-- Location: LCCOMB_X64_Y39_N14
\cmp_clk_20KHz|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~44_combout\ = (\cmp_clk_20KHz|count\(23) & (\cmp_clk_20KHz|Add0~43\ $ (GND))) # (!\cmp_clk_20KHz|count\(23) & (!\cmp_clk_20KHz|Add0~43\ & VCC))
-- \cmp_clk_20KHz|Add0~45\ = CARRY((\cmp_clk_20KHz|count\(23) & !\cmp_clk_20KHz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(23),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~43\,
	combout => \cmp_clk_20KHz|Add0~44_combout\,
	cout => \cmp_clk_20KHz|Add0~45\);

-- Location: FF_X64_Y39_N15
\cmp_clk_20KHz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(23));

-- Location: LCCOMB_X65_Y39_N14
\cmp_clk_20KHz|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~5_combout\ = (!\cmp_clk_20KHz|count\(23) & (!\cmp_clk_20KHz|count\(22) & (!\cmp_clk_20KHz|count\(20) & !\cmp_clk_20KHz|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(23),
	datab => \cmp_clk_20KHz|count\(22),
	datac => \cmp_clk_20KHz|count\(20),
	datad => \cmp_clk_20KHz|count\(21),
	combout => \cmp_clk_20KHz|Equal0~5_combout\);

-- Location: LCCOMB_X65_Y39_N0
\cmp_clk_20KHz|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~4_combout\ = (!\cmp_clk_20KHz|count\(16) & (!\cmp_clk_20KHz|count\(19) & (!\cmp_clk_20KHz|count\(18) & !\cmp_clk_20KHz|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(16),
	datab => \cmp_clk_20KHz|count\(19),
	datac => \cmp_clk_20KHz|count\(18),
	datad => \cmp_clk_20KHz|count\(17),
	combout => \cmp_clk_20KHz|Equal0~4_combout\);

-- Location: LCCOMB_X64_Y39_N16
\cmp_clk_20KHz|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~46_combout\ = (\cmp_clk_20KHz|count\(24) & (!\cmp_clk_20KHz|Add0~45\)) # (!\cmp_clk_20KHz|count\(24) & ((\cmp_clk_20KHz|Add0~45\) # (GND)))
-- \cmp_clk_20KHz|Add0~47\ = CARRY((!\cmp_clk_20KHz|Add0~45\) # (!\cmp_clk_20KHz|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(24),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~45\,
	combout => \cmp_clk_20KHz|Add0~46_combout\,
	cout => \cmp_clk_20KHz|Add0~47\);

-- Location: FF_X64_Y39_N17
\cmp_clk_20KHz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(24));

-- Location: LCCOMB_X64_Y39_N18
\cmp_clk_20KHz|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~48_combout\ = (\cmp_clk_20KHz|count\(25) & (\cmp_clk_20KHz|Add0~47\ $ (GND))) # (!\cmp_clk_20KHz|count\(25) & (!\cmp_clk_20KHz|Add0~47\ & VCC))
-- \cmp_clk_20KHz|Add0~49\ = CARRY((\cmp_clk_20KHz|count\(25) & !\cmp_clk_20KHz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(25),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~47\,
	combout => \cmp_clk_20KHz|Add0~48_combout\,
	cout => \cmp_clk_20KHz|Add0~49\);

-- Location: FF_X64_Y39_N19
\cmp_clk_20KHz|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(25));

-- Location: LCCOMB_X64_Y39_N20
\cmp_clk_20KHz|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~50_combout\ = (\cmp_clk_20KHz|count\(26) & (!\cmp_clk_20KHz|Add0~49\)) # (!\cmp_clk_20KHz|count\(26) & ((\cmp_clk_20KHz|Add0~49\) # (GND)))
-- \cmp_clk_20KHz|Add0~51\ = CARRY((!\cmp_clk_20KHz|Add0~49\) # (!\cmp_clk_20KHz|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(26),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~49\,
	combout => \cmp_clk_20KHz|Add0~50_combout\,
	cout => \cmp_clk_20KHz|Add0~51\);

-- Location: FF_X64_Y39_N21
\cmp_clk_20KHz|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(26));

-- Location: LCCOMB_X64_Y39_N22
\cmp_clk_20KHz|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~52_combout\ = (\cmp_clk_20KHz|count\(27) & (\cmp_clk_20KHz|Add0~51\ $ (GND))) # (!\cmp_clk_20KHz|count\(27) & (!\cmp_clk_20KHz|Add0~51\ & VCC))
-- \cmp_clk_20KHz|Add0~53\ = CARRY((\cmp_clk_20KHz|count\(27) & !\cmp_clk_20KHz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(27),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~51\,
	combout => \cmp_clk_20KHz|Add0~52_combout\,
	cout => \cmp_clk_20KHz|Add0~53\);

-- Location: FF_X64_Y39_N23
\cmp_clk_20KHz|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(27));

-- Location: LCCOMB_X65_Y39_N28
\cmp_clk_20KHz|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~6_combout\ = (!\cmp_clk_20KHz|count\(26) & (!\cmp_clk_20KHz|count\(27) & (!\cmp_clk_20KHz|count\(24) & !\cmp_clk_20KHz|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(26),
	datab => \cmp_clk_20KHz|count\(27),
	datac => \cmp_clk_20KHz|count\(24),
	datad => \cmp_clk_20KHz|count\(25),
	combout => \cmp_clk_20KHz|Equal0~6_combout\);

-- Location: LCCOMB_X64_Y39_N24
\cmp_clk_20KHz|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~54_combout\ = (\cmp_clk_20KHz|count\(28) & (!\cmp_clk_20KHz|Add0~53\)) # (!\cmp_clk_20KHz|count\(28) & ((\cmp_clk_20KHz|Add0~53\) # (GND)))
-- \cmp_clk_20KHz|Add0~55\ = CARRY((!\cmp_clk_20KHz|Add0~53\) # (!\cmp_clk_20KHz|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(28),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~53\,
	combout => \cmp_clk_20KHz|Add0~54_combout\,
	cout => \cmp_clk_20KHz|Add0~55\);

-- Location: FF_X64_Y39_N25
\cmp_clk_20KHz|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(28));

-- Location: LCCOMB_X64_Y39_N26
\cmp_clk_20KHz|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~56_combout\ = (\cmp_clk_20KHz|count\(29) & (\cmp_clk_20KHz|Add0~55\ $ (GND))) # (!\cmp_clk_20KHz|count\(29) & (!\cmp_clk_20KHz|Add0~55\ & VCC))
-- \cmp_clk_20KHz|Add0~57\ = CARRY((\cmp_clk_20KHz|count\(29) & !\cmp_clk_20KHz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(29),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~55\,
	combout => \cmp_clk_20KHz|Add0~56_combout\,
	cout => \cmp_clk_20KHz|Add0~57\);

-- Location: FF_X64_Y39_N27
\cmp_clk_20KHz|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(29));

-- Location: LCCOMB_X64_Y39_N28
\cmp_clk_20KHz|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~58_combout\ = (\cmp_clk_20KHz|count\(30) & (!\cmp_clk_20KHz|Add0~57\)) # (!\cmp_clk_20KHz|count\(30) & ((\cmp_clk_20KHz|Add0~57\) # (GND)))
-- \cmp_clk_20KHz|Add0~59\ = CARRY((!\cmp_clk_20KHz|Add0~57\) # (!\cmp_clk_20KHz|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(30),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~57\,
	combout => \cmp_clk_20KHz|Add0~58_combout\,
	cout => \cmp_clk_20KHz|Add0~59\);

-- Location: FF_X64_Y39_N29
\cmp_clk_20KHz|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(30));

-- Location: LCCOMB_X64_Y39_N30
\cmp_clk_20KHz|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~60_combout\ = \cmp_clk_20KHz|count\(31) $ (!\cmp_clk_20KHz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(31),
	cin => \cmp_clk_20KHz|Add0~59\,
	combout => \cmp_clk_20KHz|Add0~60_combout\);

-- Location: FF_X64_Y39_N31
\cmp_clk_20KHz|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(31));

-- Location: LCCOMB_X65_Y39_N6
\cmp_clk_20KHz|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~7_combout\ = (!\cmp_clk_20KHz|count\(29) & (!\cmp_clk_20KHz|count\(28) & (!\cmp_clk_20KHz|count\(30) & !\cmp_clk_20KHz|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(29),
	datab => \cmp_clk_20KHz|count\(28),
	datac => \cmp_clk_20KHz|count\(30),
	datad => \cmp_clk_20KHz|count\(31),
	combout => \cmp_clk_20KHz|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y40_N18
\cmp_clk_20KHz|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~8_combout\ = (\cmp_clk_20KHz|Equal0~5_combout\ & (\cmp_clk_20KHz|Equal0~4_combout\ & (\cmp_clk_20KHz|Equal0~6_combout\ & \cmp_clk_20KHz|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|Equal0~5_combout\,
	datab => \cmp_clk_20KHz|Equal0~4_combout\,
	datac => \cmp_clk_20KHz|Equal0~6_combout\,
	datad => \cmp_clk_20KHz|Equal0~7_combout\,
	combout => \cmp_clk_20KHz|Equal0~8_combout\);

-- Location: LCCOMB_X65_Y40_N28
\cmp_clk_20KHz|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~9_combout\ = (\cmp_clk_20KHz|Equal0~3_combout\ & (\cmp_clk_20KHz|Equal0~2_combout\ & (\cmp_clk_20KHz|Equal0~1_combout\ & \cmp_clk_20KHz|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|Equal0~3_combout\,
	datab => \cmp_clk_20KHz|Equal0~2_combout\,
	datac => \cmp_clk_20KHz|Equal0~1_combout\,
	datad => \cmp_clk_20KHz|Equal0~8_combout\,
	combout => \cmp_clk_20KHz|Equal0~9_combout\);

-- Location: LCCOMB_X65_Y40_N0
\cmp_clk_20KHz|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|tmp~0_combout\ = \cmp_clk_20KHz|tmp~q\ $ (\cmp_clk_20KHz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_20KHz|tmp~q\,
	datad => \cmp_clk_20KHz|Equal0~9_combout\,
	combout => \cmp_clk_20KHz|tmp~0_combout\);

-- Location: FF_X65_Y40_N1
\cmp_clk_20KHz|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~input_o\,
	d => \cmp_clk_20KHz|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|tmp~q\);

-- Location: LCCOMB_X62_Y40_N4
\cmp_clk_1KHz|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~4_combout\ = (\cmp_clk_1KHz|count\(2) & (\cmp_clk_1KHz|Add0~3\ $ (GND))) # (!\cmp_clk_1KHz|count\(2) & (!\cmp_clk_1KHz|Add0~3\ & VCC))
-- \cmp_clk_1KHz|Add0~5\ = CARRY((\cmp_clk_1KHz|count\(2) & !\cmp_clk_1KHz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(2),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~3\,
	combout => \cmp_clk_1KHz|Add0~4_combout\,
	cout => \cmp_clk_1KHz|Add0~5\);

-- Location: FF_X62_Y40_N5
\cmp_clk_1KHz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(2));

-- Location: LCCOMB_X62_Y40_N6
\cmp_clk_1KHz|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~6_combout\ = (\cmp_clk_1KHz|count\(3) & (!\cmp_clk_1KHz|Add0~5\)) # (!\cmp_clk_1KHz|count\(3) & ((\cmp_clk_1KHz|Add0~5\) # (GND)))
-- \cmp_clk_1KHz|Add0~7\ = CARRY((!\cmp_clk_1KHz|Add0~5\) # (!\cmp_clk_1KHz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(3),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~5\,
	combout => \cmp_clk_1KHz|Add0~6_combout\,
	cout => \cmp_clk_1KHz|Add0~7\);

-- Location: LCCOMB_X61_Y40_N6
\cmp_clk_1KHz|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~0_combout\ = (\cmp_clk_1KHz|Add0~6_combout\ & !\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|Add0~6_combout\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|count~0_combout\);

-- Location: FF_X61_Y40_N7
\cmp_clk_1KHz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(3));

-- Location: LCCOMB_X62_Y40_N8
\cmp_clk_1KHz|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~8_combout\ = (\cmp_clk_1KHz|count\(4) & (\cmp_clk_1KHz|Add0~7\ $ (GND))) # (!\cmp_clk_1KHz|count\(4) & (!\cmp_clk_1KHz|Add0~7\ & VCC))
-- \cmp_clk_1KHz|Add0~9\ = CARRY((\cmp_clk_1KHz|count\(4) & !\cmp_clk_1KHz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(4),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~7\,
	combout => \cmp_clk_1KHz|Add0~8_combout\,
	cout => \cmp_clk_1KHz|Add0~9\);

-- Location: FF_X62_Y40_N9
\cmp_clk_1KHz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(4));

-- Location: LCCOMB_X62_Y40_N10
\cmp_clk_1KHz|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~10_combout\ = (\cmp_clk_1KHz|count\(5) & (!\cmp_clk_1KHz|Add0~9\)) # (!\cmp_clk_1KHz|count\(5) & ((\cmp_clk_1KHz|Add0~9\) # (GND)))
-- \cmp_clk_1KHz|Add0~11\ = CARRY((!\cmp_clk_1KHz|Add0~9\) # (!\cmp_clk_1KHz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(5),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~9\,
	combout => \cmp_clk_1KHz|Add0~10_combout\,
	cout => \cmp_clk_1KHz|Add0~11\);

-- Location: LCCOMB_X61_Y40_N14
\cmp_clk_1KHz|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~1_combout\ = (\cmp_clk_1KHz|Add0~10_combout\ & !\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|Add0~10_combout\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|count~1_combout\);

-- Location: FF_X61_Y40_N15
\cmp_clk_1KHz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(5));

-- Location: LCCOMB_X62_Y40_N12
\cmp_clk_1KHz|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~12_combout\ = (\cmp_clk_1KHz|count\(6) & (\cmp_clk_1KHz|Add0~11\ $ (GND))) # (!\cmp_clk_1KHz|count\(6) & (!\cmp_clk_1KHz|Add0~11\ & VCC))
-- \cmp_clk_1KHz|Add0~13\ = CARRY((\cmp_clk_1KHz|count\(6) & !\cmp_clk_1KHz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(6),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~11\,
	combout => \cmp_clk_1KHz|Add0~12_combout\,
	cout => \cmp_clk_1KHz|Add0~13\);

-- Location: FF_X62_Y40_N13
\cmp_clk_1KHz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(6));

-- Location: LCCOMB_X62_Y40_N14
\cmp_clk_1KHz|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~14_combout\ = (\cmp_clk_1KHz|count\(7) & (!\cmp_clk_1KHz|Add0~13\)) # (!\cmp_clk_1KHz|count\(7) & ((\cmp_clk_1KHz|Add0~13\) # (GND)))
-- \cmp_clk_1KHz|Add0~15\ = CARRY((!\cmp_clk_1KHz|Add0~13\) # (!\cmp_clk_1KHz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(7),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~13\,
	combout => \cmp_clk_1KHz|Add0~14_combout\,
	cout => \cmp_clk_1KHz|Add0~15\);

-- Location: LCCOMB_X61_Y40_N12
\cmp_clk_1KHz|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~2_combout\ = (\cmp_clk_1KHz|Add0~14_combout\ & !\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|Add0~14_combout\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|count~2_combout\);

-- Location: FF_X61_Y40_N13
\cmp_clk_1KHz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(7));

-- Location: LCCOMB_X62_Y40_N16
\cmp_clk_1KHz|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~16_combout\ = (\cmp_clk_1KHz|count\(8) & (\cmp_clk_1KHz|Add0~15\ $ (GND))) # (!\cmp_clk_1KHz|count\(8) & (!\cmp_clk_1KHz|Add0~15\ & VCC))
-- \cmp_clk_1KHz|Add0~17\ = CARRY((\cmp_clk_1KHz|count\(8) & !\cmp_clk_1KHz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(8),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~15\,
	combout => \cmp_clk_1KHz|Add0~16_combout\,
	cout => \cmp_clk_1KHz|Add0~17\);

-- Location: LCCOMB_X61_Y40_N16
\cmp_clk_1KHz|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~3_combout\ = (\cmp_clk_1KHz|Add0~16_combout\ & !\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|Add0~16_combout\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|count~3_combout\);

-- Location: FF_X61_Y40_N17
\cmp_clk_1KHz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(8));

-- Location: LCCOMB_X62_Y40_N18
\cmp_clk_1KHz|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~18_combout\ = (\cmp_clk_1KHz|count\(9) & (!\cmp_clk_1KHz|Add0~17\)) # (!\cmp_clk_1KHz|count\(9) & ((\cmp_clk_1KHz|Add0~17\) # (GND)))
-- \cmp_clk_1KHz|Add0~19\ = CARRY((!\cmp_clk_1KHz|Add0~17\) # (!\cmp_clk_1KHz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(9),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~17\,
	combout => \cmp_clk_1KHz|Add0~18_combout\,
	cout => \cmp_clk_1KHz|Add0~19\);

-- Location: FF_X62_Y40_N19
\cmp_clk_1KHz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(9));

-- Location: LCCOMB_X62_Y40_N20
\cmp_clk_1KHz|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~20_combout\ = (\cmp_clk_1KHz|count\(10) & (\cmp_clk_1KHz|Add0~19\ $ (GND))) # (!\cmp_clk_1KHz|count\(10) & (!\cmp_clk_1KHz|Add0~19\ & VCC))
-- \cmp_clk_1KHz|Add0~21\ = CARRY((\cmp_clk_1KHz|count\(10) & !\cmp_clk_1KHz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(10),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~19\,
	combout => \cmp_clk_1KHz|Add0~20_combout\,
	cout => \cmp_clk_1KHz|Add0~21\);

-- Location: FF_X62_Y40_N21
\cmp_clk_1KHz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(10));

-- Location: LCCOMB_X62_Y40_N22
\cmp_clk_1KHz|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~22_combout\ = (\cmp_clk_1KHz|count\(11) & (!\cmp_clk_1KHz|Add0~21\)) # (!\cmp_clk_1KHz|count\(11) & ((\cmp_clk_1KHz|Add0~21\) # (GND)))
-- \cmp_clk_1KHz|Add0~23\ = CARRY((!\cmp_clk_1KHz|Add0~21\) # (!\cmp_clk_1KHz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(11),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~21\,
	combout => \cmp_clk_1KHz|Add0~22_combout\,
	cout => \cmp_clk_1KHz|Add0~23\);

-- Location: FF_X62_Y40_N23
\cmp_clk_1KHz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(11));

-- Location: LCCOMB_X61_Y40_N22
\cmp_clk_1KHz|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~3_combout\ = (\cmp_clk_1KHz|count\(8) & (!\cmp_clk_1KHz|count\(11) & (!\cmp_clk_1KHz|count\(10) & !\cmp_clk_1KHz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(8),
	datab => \cmp_clk_1KHz|count\(11),
	datac => \cmp_clk_1KHz|count\(10),
	datad => \cmp_clk_1KHz|count\(9),
	combout => \cmp_clk_1KHz|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y40_N2
\cmp_clk_1KHz|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~1_combout\ = (\cmp_clk_1KHz|count\(7) & (!\cmp_clk_1KHz|count\(4) & (!\cmp_clk_1KHz|count\(6) & \cmp_clk_1KHz|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(7),
	datab => \cmp_clk_1KHz|count\(4),
	datac => \cmp_clk_1KHz|count\(6),
	datad => \cmp_clk_1KHz|count\(5),
	combout => \cmp_clk_1KHz|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y40_N18
\cmp_clk_1KHz|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~2_combout\ = (!\cmp_clk_1KHz|count\(2) & (\cmp_clk_1KHz|Equal0~0_combout\ & (\cmp_clk_1KHz|count\(3) & \cmp_clk_1KHz|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(2),
	datab => \cmp_clk_1KHz|Equal0~0_combout\,
	datac => \cmp_clk_1KHz|count\(3),
	datad => \cmp_clk_1KHz|Equal0~1_combout\,
	combout => \cmp_clk_1KHz|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y40_N24
\cmp_clk_1KHz|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~24_combout\ = (\cmp_clk_1KHz|count\(12) & (\cmp_clk_1KHz|Add0~23\ $ (GND))) # (!\cmp_clk_1KHz|count\(12) & (!\cmp_clk_1KHz|Add0~23\ & VCC))
-- \cmp_clk_1KHz|Add0~25\ = CARRY((\cmp_clk_1KHz|count\(12) & !\cmp_clk_1KHz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(12),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~23\,
	combout => \cmp_clk_1KHz|Add0~24_combout\,
	cout => \cmp_clk_1KHz|Add0~25\);

-- Location: FF_X62_Y40_N25
\cmp_clk_1KHz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(12));

-- Location: LCCOMB_X62_Y40_N26
\cmp_clk_1KHz|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~26_combout\ = (\cmp_clk_1KHz|count\(13) & (!\cmp_clk_1KHz|Add0~25\)) # (!\cmp_clk_1KHz|count\(13) & ((\cmp_clk_1KHz|Add0~25\) # (GND)))
-- \cmp_clk_1KHz|Add0~27\ = CARRY((!\cmp_clk_1KHz|Add0~25\) # (!\cmp_clk_1KHz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(13),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~25\,
	combout => \cmp_clk_1KHz|Add0~26_combout\,
	cout => \cmp_clk_1KHz|Add0~27\);

-- Location: LCCOMB_X61_Y40_N8
\cmp_clk_1KHz|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~4_combout\ = (\cmp_clk_1KHz|Add0~26_combout\ & !\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Add0~26_combout\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|count~4_combout\);

-- Location: FF_X61_Y40_N9
\cmp_clk_1KHz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(13));

-- Location: LCCOMB_X62_Y40_N28
\cmp_clk_1KHz|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~28_combout\ = (\cmp_clk_1KHz|count\(14) & (\cmp_clk_1KHz|Add0~27\ $ (GND))) # (!\cmp_clk_1KHz|count\(14) & (!\cmp_clk_1KHz|Add0~27\ & VCC))
-- \cmp_clk_1KHz|Add0~29\ = CARRY((\cmp_clk_1KHz|count\(14) & !\cmp_clk_1KHz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(14),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~27\,
	combout => \cmp_clk_1KHz|Add0~28_combout\,
	cout => \cmp_clk_1KHz|Add0~29\);

-- Location: LCCOMB_X61_Y40_N26
\cmp_clk_1KHz|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~5_combout\ = (\cmp_clk_1KHz|Add0~28_combout\ & !\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Add0~28_combout\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|count~5_combout\);

-- Location: FF_X61_Y40_N27
\cmp_clk_1KHz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(14));

-- Location: LCCOMB_X62_Y40_N30
\cmp_clk_1KHz|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~30_combout\ = (\cmp_clk_1KHz|count\(15) & (!\cmp_clk_1KHz|Add0~29\)) # (!\cmp_clk_1KHz|count\(15) & ((\cmp_clk_1KHz|Add0~29\) # (GND)))
-- \cmp_clk_1KHz|Add0~31\ = CARRY((!\cmp_clk_1KHz|Add0~29\) # (!\cmp_clk_1KHz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(15),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~29\,
	combout => \cmp_clk_1KHz|Add0~30_combout\,
	cout => \cmp_clk_1KHz|Add0~31\);

-- Location: FF_X62_Y40_N31
\cmp_clk_1KHz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(15));

-- Location: LCCOMB_X61_Y40_N4
\cmp_clk_1KHz|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~4_combout\ = (\cmp_clk_1KHz|count\(14) & (!\cmp_clk_1KHz|count\(12) & (!\cmp_clk_1KHz|count\(15) & \cmp_clk_1KHz|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(14),
	datab => \cmp_clk_1KHz|count\(12),
	datac => \cmp_clk_1KHz|count\(15),
	datad => \cmp_clk_1KHz|count\(13),
	combout => \cmp_clk_1KHz|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y39_N0
\cmp_clk_1KHz|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~32_combout\ = (\cmp_clk_1KHz|count\(16) & (\cmp_clk_1KHz|Add0~31\ $ (GND))) # (!\cmp_clk_1KHz|count\(16) & (!\cmp_clk_1KHz|Add0~31\ & VCC))
-- \cmp_clk_1KHz|Add0~33\ = CARRY((\cmp_clk_1KHz|count\(16) & !\cmp_clk_1KHz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(16),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~31\,
	combout => \cmp_clk_1KHz|Add0~32_combout\,
	cout => \cmp_clk_1KHz|Add0~33\);

-- Location: FF_X62_Y39_N1
\cmp_clk_1KHz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(16));

-- Location: LCCOMB_X62_Y39_N2
\cmp_clk_1KHz|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~34_combout\ = (\cmp_clk_1KHz|count\(17) & (!\cmp_clk_1KHz|Add0~33\)) # (!\cmp_clk_1KHz|count\(17) & ((\cmp_clk_1KHz|Add0~33\) # (GND)))
-- \cmp_clk_1KHz|Add0~35\ = CARRY((!\cmp_clk_1KHz|Add0~33\) # (!\cmp_clk_1KHz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(17),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~33\,
	combout => \cmp_clk_1KHz|Add0~34_combout\,
	cout => \cmp_clk_1KHz|Add0~35\);

-- Location: FF_X62_Y39_N3
\cmp_clk_1KHz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(17));

-- Location: LCCOMB_X62_Y39_N4
\cmp_clk_1KHz|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~36_combout\ = (\cmp_clk_1KHz|count\(18) & (\cmp_clk_1KHz|Add0~35\ $ (GND))) # (!\cmp_clk_1KHz|count\(18) & (!\cmp_clk_1KHz|Add0~35\ & VCC))
-- \cmp_clk_1KHz|Add0~37\ = CARRY((\cmp_clk_1KHz|count\(18) & !\cmp_clk_1KHz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(18),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~35\,
	combout => \cmp_clk_1KHz|Add0~36_combout\,
	cout => \cmp_clk_1KHz|Add0~37\);

-- Location: FF_X62_Y39_N5
\cmp_clk_1KHz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(18));

-- Location: LCCOMB_X62_Y39_N6
\cmp_clk_1KHz|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~38_combout\ = (\cmp_clk_1KHz|count\(19) & (!\cmp_clk_1KHz|Add0~37\)) # (!\cmp_clk_1KHz|count\(19) & ((\cmp_clk_1KHz|Add0~37\) # (GND)))
-- \cmp_clk_1KHz|Add0~39\ = CARRY((!\cmp_clk_1KHz|Add0~37\) # (!\cmp_clk_1KHz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(19),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~37\,
	combout => \cmp_clk_1KHz|Add0~38_combout\,
	cout => \cmp_clk_1KHz|Add0~39\);

-- Location: FF_X62_Y39_N7
\cmp_clk_1KHz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(19));

-- Location: LCCOMB_X62_Y39_N8
\cmp_clk_1KHz|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~40_combout\ = (\cmp_clk_1KHz|count\(20) & (\cmp_clk_1KHz|Add0~39\ $ (GND))) # (!\cmp_clk_1KHz|count\(20) & (!\cmp_clk_1KHz|Add0~39\ & VCC))
-- \cmp_clk_1KHz|Add0~41\ = CARRY((\cmp_clk_1KHz|count\(20) & !\cmp_clk_1KHz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(20),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~39\,
	combout => \cmp_clk_1KHz|Add0~40_combout\,
	cout => \cmp_clk_1KHz|Add0~41\);

-- Location: FF_X62_Y39_N9
\cmp_clk_1KHz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(20));

-- Location: LCCOMB_X62_Y39_N10
\cmp_clk_1KHz|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~42_combout\ = (\cmp_clk_1KHz|count\(21) & (!\cmp_clk_1KHz|Add0~41\)) # (!\cmp_clk_1KHz|count\(21) & ((\cmp_clk_1KHz|Add0~41\) # (GND)))
-- \cmp_clk_1KHz|Add0~43\ = CARRY((!\cmp_clk_1KHz|Add0~41\) # (!\cmp_clk_1KHz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(21),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~41\,
	combout => \cmp_clk_1KHz|Add0~42_combout\,
	cout => \cmp_clk_1KHz|Add0~43\);

-- Location: FF_X62_Y39_N11
\cmp_clk_1KHz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(21));

-- Location: LCCOMB_X62_Y39_N12
\cmp_clk_1KHz|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~44_combout\ = (\cmp_clk_1KHz|count\(22) & (\cmp_clk_1KHz|Add0~43\ $ (GND))) # (!\cmp_clk_1KHz|count\(22) & (!\cmp_clk_1KHz|Add0~43\ & VCC))
-- \cmp_clk_1KHz|Add0~45\ = CARRY((\cmp_clk_1KHz|count\(22) & !\cmp_clk_1KHz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(22),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~43\,
	combout => \cmp_clk_1KHz|Add0~44_combout\,
	cout => \cmp_clk_1KHz|Add0~45\);

-- Location: FF_X62_Y39_N13
\cmp_clk_1KHz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(22));

-- Location: LCCOMB_X62_Y39_N14
\cmp_clk_1KHz|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~46_combout\ = (\cmp_clk_1KHz|count\(23) & (!\cmp_clk_1KHz|Add0~45\)) # (!\cmp_clk_1KHz|count\(23) & ((\cmp_clk_1KHz|Add0~45\) # (GND)))
-- \cmp_clk_1KHz|Add0~47\ = CARRY((!\cmp_clk_1KHz|Add0~45\) # (!\cmp_clk_1KHz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(23),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~45\,
	combout => \cmp_clk_1KHz|Add0~46_combout\,
	cout => \cmp_clk_1KHz|Add0~47\);

-- Location: FF_X62_Y39_N15
\cmp_clk_1KHz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(23));

-- Location: LCCOMB_X61_Y39_N6
\cmp_clk_1KHz|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~6_combout\ = (!\cmp_clk_1KHz|count\(23) & (!\cmp_clk_1KHz|count\(21) & (!\cmp_clk_1KHz|count\(20) & !\cmp_clk_1KHz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(23),
	datab => \cmp_clk_1KHz|count\(21),
	datac => \cmp_clk_1KHz|count\(20),
	datad => \cmp_clk_1KHz|count\(22),
	combout => \cmp_clk_1KHz|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y39_N0
\cmp_clk_1KHz|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~5_combout\ = (!\cmp_clk_1KHz|count\(17) & (!\cmp_clk_1KHz|count\(16) & (!\cmp_clk_1KHz|count\(18) & !\cmp_clk_1KHz|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(17),
	datab => \cmp_clk_1KHz|count\(16),
	datac => \cmp_clk_1KHz|count\(18),
	datad => \cmp_clk_1KHz|count\(19),
	combout => \cmp_clk_1KHz|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y39_N16
\cmp_clk_1KHz|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~48_combout\ = (\cmp_clk_1KHz|count\(24) & (\cmp_clk_1KHz|Add0~47\ $ (GND))) # (!\cmp_clk_1KHz|count\(24) & (!\cmp_clk_1KHz|Add0~47\ & VCC))
-- \cmp_clk_1KHz|Add0~49\ = CARRY((\cmp_clk_1KHz|count\(24) & !\cmp_clk_1KHz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(24),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~47\,
	combout => \cmp_clk_1KHz|Add0~48_combout\,
	cout => \cmp_clk_1KHz|Add0~49\);

-- Location: FF_X62_Y39_N17
\cmp_clk_1KHz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(24));

-- Location: LCCOMB_X62_Y39_N18
\cmp_clk_1KHz|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~50_combout\ = (\cmp_clk_1KHz|count\(25) & (!\cmp_clk_1KHz|Add0~49\)) # (!\cmp_clk_1KHz|count\(25) & ((\cmp_clk_1KHz|Add0~49\) # (GND)))
-- \cmp_clk_1KHz|Add0~51\ = CARRY((!\cmp_clk_1KHz|Add0~49\) # (!\cmp_clk_1KHz|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(25),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~49\,
	combout => \cmp_clk_1KHz|Add0~50_combout\,
	cout => \cmp_clk_1KHz|Add0~51\);

-- Location: FF_X62_Y39_N19
\cmp_clk_1KHz|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(25));

-- Location: LCCOMB_X62_Y39_N20
\cmp_clk_1KHz|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~52_combout\ = (\cmp_clk_1KHz|count\(26) & (\cmp_clk_1KHz|Add0~51\ $ (GND))) # (!\cmp_clk_1KHz|count\(26) & (!\cmp_clk_1KHz|Add0~51\ & VCC))
-- \cmp_clk_1KHz|Add0~53\ = CARRY((\cmp_clk_1KHz|count\(26) & !\cmp_clk_1KHz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(26),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~51\,
	combout => \cmp_clk_1KHz|Add0~52_combout\,
	cout => \cmp_clk_1KHz|Add0~53\);

-- Location: FF_X62_Y39_N21
\cmp_clk_1KHz|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(26));

-- Location: LCCOMB_X62_Y39_N22
\cmp_clk_1KHz|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~54_combout\ = (\cmp_clk_1KHz|count\(27) & (!\cmp_clk_1KHz|Add0~53\)) # (!\cmp_clk_1KHz|count\(27) & ((\cmp_clk_1KHz|Add0~53\) # (GND)))
-- \cmp_clk_1KHz|Add0~55\ = CARRY((!\cmp_clk_1KHz|Add0~53\) # (!\cmp_clk_1KHz|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(27),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~53\,
	combout => \cmp_clk_1KHz|Add0~54_combout\,
	cout => \cmp_clk_1KHz|Add0~55\);

-- Location: FF_X62_Y39_N23
\cmp_clk_1KHz|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(27));

-- Location: LCCOMB_X62_Y39_N24
\cmp_clk_1KHz|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~56_combout\ = (\cmp_clk_1KHz|count\(28) & (\cmp_clk_1KHz|Add0~55\ $ (GND))) # (!\cmp_clk_1KHz|count\(28) & (!\cmp_clk_1KHz|Add0~55\ & VCC))
-- \cmp_clk_1KHz|Add0~57\ = CARRY((\cmp_clk_1KHz|count\(28) & !\cmp_clk_1KHz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(28),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~55\,
	combout => \cmp_clk_1KHz|Add0~56_combout\,
	cout => \cmp_clk_1KHz|Add0~57\);

-- Location: FF_X62_Y39_N25
\cmp_clk_1KHz|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(28));

-- Location: LCCOMB_X62_Y39_N26
\cmp_clk_1KHz|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~58_combout\ = (\cmp_clk_1KHz|count\(29) & (!\cmp_clk_1KHz|Add0~57\)) # (!\cmp_clk_1KHz|count\(29) & ((\cmp_clk_1KHz|Add0~57\) # (GND)))
-- \cmp_clk_1KHz|Add0~59\ = CARRY((!\cmp_clk_1KHz|Add0~57\) # (!\cmp_clk_1KHz|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(29),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~57\,
	combout => \cmp_clk_1KHz|Add0~58_combout\,
	cout => \cmp_clk_1KHz|Add0~59\);

-- Location: FF_X62_Y39_N27
\cmp_clk_1KHz|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(29));

-- Location: LCCOMB_X62_Y39_N28
\cmp_clk_1KHz|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~60_combout\ = (\cmp_clk_1KHz|count\(30) & (\cmp_clk_1KHz|Add0~59\ $ (GND))) # (!\cmp_clk_1KHz|count\(30) & (!\cmp_clk_1KHz|Add0~59\ & VCC))
-- \cmp_clk_1KHz|Add0~61\ = CARRY((\cmp_clk_1KHz|count\(30) & !\cmp_clk_1KHz|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(30),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~59\,
	combout => \cmp_clk_1KHz|Add0~60_combout\,
	cout => \cmp_clk_1KHz|Add0~61\);

-- Location: FF_X62_Y39_N29
\cmp_clk_1KHz|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(30));

-- Location: LCCOMB_X62_Y39_N30
\cmp_clk_1KHz|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~62_combout\ = \cmp_clk_1KHz|count\(31) $ (\cmp_clk_1KHz|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(31),
	cin => \cmp_clk_1KHz|Add0~61\,
	combout => \cmp_clk_1KHz|Add0~62_combout\);

-- Location: FF_X62_Y39_N31
\cmp_clk_1KHz|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(31));

-- Location: LCCOMB_X61_Y39_N10
\cmp_clk_1KHz|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~8_combout\ = (!\cmp_clk_1KHz|count\(31) & (!\cmp_clk_1KHz|count\(30) & (!\cmp_clk_1KHz|count\(29) & !\cmp_clk_1KHz|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(31),
	datab => \cmp_clk_1KHz|count\(30),
	datac => \cmp_clk_1KHz|count\(29),
	datad => \cmp_clk_1KHz|count\(28),
	combout => \cmp_clk_1KHz|Equal0~8_combout\);

-- Location: LCCOMB_X61_Y39_N8
\cmp_clk_1KHz|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~7_combout\ = (!\cmp_clk_1KHz|count\(24) & (!\cmp_clk_1KHz|count\(25) & (!\cmp_clk_1KHz|count\(26) & !\cmp_clk_1KHz|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(24),
	datab => \cmp_clk_1KHz|count\(25),
	datac => \cmp_clk_1KHz|count\(26),
	datad => \cmp_clk_1KHz|count\(27),
	combout => \cmp_clk_1KHz|Equal0~7_combout\);

-- Location: LCCOMB_X61_Y40_N24
\cmp_clk_1KHz|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~9_combout\ = (\cmp_clk_1KHz|Equal0~6_combout\ & (\cmp_clk_1KHz|Equal0~5_combout\ & (\cmp_clk_1KHz|Equal0~8_combout\ & \cmp_clk_1KHz|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|Equal0~6_combout\,
	datab => \cmp_clk_1KHz|Equal0~5_combout\,
	datac => \cmp_clk_1KHz|Equal0~8_combout\,
	datad => \cmp_clk_1KHz|Equal0~7_combout\,
	combout => \cmp_clk_1KHz|Equal0~9_combout\);

-- Location: LCCOMB_X61_Y40_N28
\cmp_clk_1KHz|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~10_combout\ = (\cmp_clk_1KHz|Equal0~3_combout\ & (\cmp_clk_1KHz|Equal0~2_combout\ & (\cmp_clk_1KHz|Equal0~4_combout\ & \cmp_clk_1KHz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|Equal0~3_combout\,
	datab => \cmp_clk_1KHz|Equal0~2_combout\,
	datac => \cmp_clk_1KHz|Equal0~4_combout\,
	datad => \cmp_clk_1KHz|Equal0~9_combout\,
	combout => \cmp_clk_1KHz|Equal0~10_combout\);

-- Location: LCCOMB_X61_Y40_N10
\cmp_clk_1KHz|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|tmp~0_combout\ = \cmp_clk_1KHz|tmp~q\ $ (\cmp_clk_1KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|tmp~q\,
	datad => \cmp_clk_1KHz|Equal0~10_combout\,
	combout => \cmp_clk_1KHz|tmp~0_combout\);

-- Location: FF_X61_Y40_N11
\cmp_clk_1KHz|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~input_o\,
	d => \cmp_clk_1KHz|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|tmp~q\);

-- Location: LCCOMB_X61_Y40_N30
\clkp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkp~0_combout\ = (\clk_sw~input_o\ & (\cmp_clk_20KHz|tmp~q\)) # (!\clk_sw~input_o\ & ((\cmp_clk_1KHz|tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_sw~input_o\,
	datac => \cmp_clk_20KHz|tmp~q\,
	datad => \cmp_clk_1KHz|tmp~q\,
	combout => \clkp~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\pb_pause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_pause,
	o => \pb_pause~input_o\);

-- Location: LCCOMB_X54_Y43_N26
\pause_trigger~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pause_trigger~0_combout\ = !\pause_trigger~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pause_trigger~q\,
	combout => \pause_trigger~0_combout\);

-- Location: LCCOMB_X72_Y43_N8
\A_count|D_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|D_s~0_combout\ = (\A_count|gen00:2:ff0i~q\ & \A_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	combout => \A_count|D_s~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\pb_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_rst,
	o => \pb_rst~input_o\);

-- Location: FF_X72_Y43_N9
\A_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_M~combout\,
	d => \A_count|D_s~0_combout\,
	clrn => \pb_rst~input_o\,
	ena => \A_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X72_Y43_N26
\A_count|D_s~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|D_s~2_combout\ = (!\A_count|gen00:1:ff0i~q\ & !\A_count|gen00:3:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_count|D_s~2_combout\);

-- Location: FF_X72_Y43_N27
\A_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_M~combout\,
	d => \A_count|D_s~2_combout\,
	clrn => \pb_rst~input_o\,
	ena => \A_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X72_Y43_N20
\A_count|D_s[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|D_s[2]~1_combout\ = \A_count|gen00:2:ff0i~q\ $ (((\A_count|gen00:1:ff0i~q\ & \A_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|D_s[2]~1_combout\);

-- Location: FF_X72_Y43_N17
\A_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_M~combout\,
	asdata => \A_count|D_s[2]~1_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X72_Y43_N12
\A_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|rst_cmp|outp~combout\ = LCELL((\A_count|gen00:2:ff0i~q\) # (((\A_count|gen00:1:ff0i~q\) # (!\A_count|gen00:0:ff0i~q\)) # (!\A_count|gen00:3:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:2:ff0i~q\,
	datab => \A_count|gen00:3:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X71_Y43_N10
\B_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_count|gen00:0:ff0i~0_combout\ = !\B_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:0:ff0i~q\,
	combout => \B_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X71_Y43_N29
\B_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|rst_cmp|outp~combout\,
	asdata => \B_count|gen00:0:ff0i~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X71_Y43_N8
\B_count|D_s[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_count|D_s[2]~0_combout\ = \B_count|gen00:2:ff0i~q\ $ (((\B_count|gen00:0:ff0i~q\ & \B_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:2:ff0i~q\,
	combout => \B_count|D_s[2]~0_combout\);

-- Location: FF_X71_Y43_N7
\B_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|rst_cmp|outp~combout\,
	asdata => \B_count|D_s[2]~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X71_Y43_N14
\B_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~7_combout\ = (\B_count|gen00:1:ff0i~q\ & \B_count|gen00:2:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:2:ff0i~q\,
	combout => \B_conv|D~7_combout\);

-- Location: FF_X71_Y43_N15
\B_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|rst_cmp|outp~combout\,
	d => \B_conv|D~7_combout\,
	clrn => \pb_rst~input_o\,
	ena => \B_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X71_Y43_N22
\B_count|D_s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_count|D_s~1_combout\ = (!\B_count|gen00:3:ff0i~q\ & !\B_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_count|gen00:3:ff0i~q\,
	datac => \B_count|gen00:1:ff0i~q\,
	combout => \B_count|D_s~1_combout\);

-- Location: FF_X71_Y43_N23
\B_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|rst_cmp|outp~combout\,
	d => \B_count|D_s~1_combout\,
	clrn => \pb_rst~input_o\,
	ena => \B_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X71_Y43_N16
\B_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_count|rst_cmp|outp~combout\ = LCELL((\B_count|gen00:1:ff0i~q\) # (((\B_count|gen00:2:ff0i~q\) # (!\B_count|gen00:3:ff0i~q\)) # (!\B_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:1:ff0i~q\,
	datab => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \B_count|gen00:2:ff0i~q\,
	combout => \B_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X75_Y43_N16
\C_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|gen00:0:ff0i~0_combout\ = !\C_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_count|gen00:0:ff0i~q\,
	combout => \C_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X75_Y43_N27
\C_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|rst_cmp|outp~combout\,
	asdata => \C_count|gen00:0:ff0i~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X75_Y43_N18
\C_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~7_combout\ = (\C_count|gen00:2:ff0i~q\ & \C_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:1:ff0i~q\,
	combout => \C_conv|D~7_combout\);

-- Location: FF_X75_Y43_N19
\C_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|rst_cmp|outp~combout\,
	d => \C_conv|D~7_combout\,
	clrn => \pb_rst~input_o\,
	ena => \C_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X75_Y43_N14
\C_count|D_s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|D_s~1_combout\ = (!\C_count|gen00:3:ff0i~q\ & !\C_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:3:ff0i~q\,
	datac => \C_count|gen00:1:ff0i~q\,
	combout => \C_count|D_s~1_combout\);

-- Location: FF_X75_Y43_N15
\C_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|rst_cmp|outp~combout\,
	d => \C_count|D_s~1_combout\,
	clrn => \pb_rst~input_o\,
	ena => \C_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X75_Y43_N12
\C_count|D_s[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|D_s[2]~0_combout\ = \C_count|gen00:2:ff0i~q\ $ (((\C_count|gen00:0:ff0i~q\ & \C_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:1:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_count|D_s[2]~0_combout\);

-- Location: FF_X75_Y43_N25
\C_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|rst_cmp|outp~combout\,
	asdata => \C_count|D_s[2]~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X75_Y43_N8
\C_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|rst_cmp|outp~combout\ = LCELL(((\C_count|gen00:2:ff0i~q\) # ((\C_count|gen00:1:ff0i~q\) # (!\C_count|gen00:3:ff0i~q\))) # (!\C_count|gen00:0:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:2:ff0i~q\,
	datac => \C_count|gen00:1:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \C_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X74_Y43_N16
\D_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|gen00:0:ff0i~0_combout\ = !\D_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_count|gen00:0:ff0i~q\,
	combout => \D_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X74_Y43_N11
\D_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_count|rst_cmp|outp~combout\,
	asdata => \D_count|gen00:0:ff0i~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X74_Y43_N24
\D_count|D_s[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|D_s[2]~1_combout\ = \D_count|gen00:2:ff0i~q\ $ (((\D_count|gen00:0:ff0i~q\ & \D_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_count|gen00:0:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:2:ff0i~q\,
	combout => \D_count|D_s[2]~1_combout\);

-- Location: FF_X74_Y43_N17
\D_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_count|rst_cmp|outp~combout\,
	asdata => \D_count|D_s[2]~1_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X74_Y43_N26
\D_count|D_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|D_s~0_combout\ = (\D_count|gen00:1:ff0i~q\ & \D_count|gen00:2:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_count|gen00:1:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	combout => \D_count|D_s~0_combout\);

-- Location: FF_X74_Y43_N27
\D_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_count|rst_cmp|outp~combout\,
	d => \D_count|D_s~0_combout\,
	clrn => \pb_rst~input_o\,
	ena => \D_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X74_Y43_N18
\D_count|D_s~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|D_s~2_combout\ = (!\D_count|gen00:3:ff0i~q\ & !\D_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	combout => \D_count|D_s~2_combout\);

-- Location: FF_X74_Y43_N19
\D_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_count|rst_cmp|outp~combout\,
	d => \D_count|D_s~2_combout\,
	clrn => \pb_rst~input_o\,
	ena => \D_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X74_Y43_N30
\D_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|rst_cmp|outp~combout\ = LCELL(((\D_count|gen00:1:ff0i~q\) # ((\D_count|gen00:2:ff0i~q\) # (!\D_count|gen00:3:ff0i~q\))) # (!\D_count|gen00:0:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:1:ff0i~q\,
	datac => \D_count|gen00:3:ff0i~q\,
	datad => \D_count|gen00:2:ff0i~q\,
	combout => \D_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X76_Y43_N18
\E_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_count|gen00:0:ff0i~0_combout\ = !\E_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:0:ff0i~q\,
	combout => \E_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X76_Y43_N23
\E_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D_count|rst_cmp|outp~combout\,
	asdata => \E_count|gen00:0:ff0i~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_count|gen00:0:ff0i~q\);

-- Location: FF_X76_Y43_N31
\E_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D_count|rst_cmp|outp~combout\,
	asdata => \E_count|gen00:1:ff0i~q\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	ena => \E_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X76_Y43_N4
\E_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~7_combout\ = (!\E_count|gen00:1:ff0i~q\ & !\E_count|gen00:2:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_count|gen00:1:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~7_combout\);

-- Location: FF_X76_Y43_N5
\E_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D_count|rst_cmp|outp~combout\,
	d => \E_conv|D~7_combout\,
	clrn => \pb_rst~input_o\,
	ena => \E_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X76_Y43_N6
\E_count|rst_cmp|rslt_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_count|rst_cmp|rslt_s~0_combout\ = LCELL((\E_count|gen00:1:ff0i~q\) # ((!\E_count|gen00:0:ff0i~q\) # (!\E_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:2:ff0i~q\,
	datad => \E_count|gen00:0:ff0i~q\,
	combout => \E_count|rst_cmp|rslt_s~0_combout\);

-- Location: LCCOMB_X77_Y43_N4
\F_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~7_combout\ = (!\F_count|gen00:1:ff0i~q\ & !\F_count|gen00:3:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_count|gen00:1:ff0i~q\,
	datad => \F_count|gen00:3:ff0i~q\,
	combout => \F_conv|D~7_combout\);

-- Location: LCCOMB_X77_Y43_N22
\F_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_count|gen00:0:ff0i~0_combout\ = !\F_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_count|gen00:0:ff0i~q\,
	combout => \F_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X77_Y43_N23
\F_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \E_count|rst_cmp|rslt_s~0_combout\,
	d => \F_count|gen00:0:ff0i~0_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_count|gen00:0:ff0i~q\);

-- Location: FF_X77_Y43_N5
\F_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \E_count|rst_cmp|rslt_s~0_combout\,
	d => \F_conv|D~7_combout\,
	clrn => \pb_rst~input_o\,
	ena => \F_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X77_Y43_N14
\F_count|D_s[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_count|D_s[2]~1_combout\ = \F_count|gen00:2:ff0i~q\ $ (((\F_count|gen00:1:ff0i~q\ & \F_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_count|gen00:1:ff0i~q\,
	datac => \F_count|gen00:2:ff0i~q\,
	datad => \F_count|gen00:0:ff0i~q\,
	combout => \F_count|D_s[2]~1_combout\);

-- Location: FF_X77_Y43_N15
\F_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \E_count|rst_cmp|rslt_s~0_combout\,
	d => \F_count|D_s[2]~1_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X77_Y43_N24
\F_count|D_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_count|D_s~0_combout\ = (\F_count|gen00:2:ff0i~q\ & \F_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:1:ff0i~q\,
	combout => \F_count|D_s~0_combout\);

-- Location: FF_X77_Y43_N25
\F_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \E_count|rst_cmp|rslt_s~0_combout\,
	d => \F_count|D_s~0_combout\,
	clrn => \pb_rst~input_o\,
	ena => \F_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X72_Y43_N14
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\F_count|gen00:3:ff0i~q\ & (\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:1:ff0i~q\ & !\A_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \A_count|gen00:0:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:2:ff0i~q\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X76_Y43_N14
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\C_count|gen00:1:ff0i~q\ & (!\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:2:ff0i~q\ & !\C_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \comb~3_combout\);

-- Location: IOIBUF_X51_Y54_N29
\auto_ps~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_auto_ps,
	o => \auto_ps~input_o\);

-- Location: LCCOMB_X71_Y43_N20
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\B_count|gen00:2:ff0i~q\ & (\auto_ps~input_o\ & (!\B_count|gen00:1:ff0i~q\ & \B_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \auto_ps~input_o\,
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X76_Y43_N24
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\D_count|rst_cmp|outp~combout\ & (\comb~5_combout\ & (\comb~3_combout\ & \comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|rst_cmp|outp~combout\,
	datab => \comb~5_combout\,
	datac => \comb~3_combout\,
	datad => \comb~4_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X75_Y43_N6
\comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\B_count|gen00:3:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ & (!\C_count|gen00:0:ff0i~q\ & !\C_count|gen00:3:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \A_count|gen00:3:ff0i~q\,
	datac => \C_count|gen00:0:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X76_Y43_N12
\comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\F_count|gen00:1:ff0i~q\ & (!\E_count|gen00:0:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ & !\F_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:2:ff0i~q\,
	datad => \F_count|gen00:0:ff0i~q\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X76_Y43_N20
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL((\comb~6_combout\ & (\comb~8_combout\ & \comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~6_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X54_Y43_N16
\lock_compare_trigger~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lock_compare_trigger~0_combout\ = !\lock_compare_trigger~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lock_compare_trigger~q\,
	combout => \lock_compare_trigger~0_combout\);

-- Location: LCCOMB_X54_Y43_N2
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\pb_rst~input_o\) # (!\pb_pause~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_pause~input_o\,
	datad => \pb_rst~input_o\,
	combout => \comb~1_combout\);

-- Location: FF_X54_Y43_N17
lock_compare_trigger : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	d => \lock_compare_trigger~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lock_compare_trigger~q\);

-- Location: LCCOMB_X54_Y43_N0
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\lock_compare_trigger~q\) # (!\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lock_compare_trigger~q\,
	datad => \pb_rst~input_o\,
	combout => \comb~2_combout\);

-- Location: FF_X54_Y43_N27
pause_trigger : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb_pause~input_o\,
	d => \pause_trigger~0_combout\,
	clrn => \ALT_INV_comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pause_trigger~q\);

-- Location: LCCOMB_X54_Y43_N20
clk_M : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_M~combout\ = LCELL((\clkp~0_combout\) # ((\pause_trigger~q\) # (\lock_compare_trigger~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkp~0_combout\,
	datac => \pause_trigger~q\,
	datad => \lock_compare_trigger~q\,
	combout => \clk_M~combout\);

-- Location: LCCOMB_X72_Y43_N30
\A_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|gen00:0:ff0i~0_combout\ = !\A_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X72_Y43_N25
\A_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_M~combout\,
	asdata => \A_count|gen00:0:ff0i~0_combout\,
	clrn => \pb_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X72_Y43_N16
\A_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~0_combout\ = (\A_count|gen00:2:ff0i~q\ & (!\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:0:ff0i~q\ $ (!\A_count|gen00:3:ff0i~q\)))) # (!\A_count|gen00:2:ff0i~q\ & (\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:1:ff0i~q\ $ 
-- (!\A_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:1:ff0i~q\,
	datac => \A_count|gen00:2:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~0_combout\);

-- Location: LCCOMB_X72_Y43_N24
\A_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~1_combout\ = (\A_count|gen00:1:ff0i~q\ & ((\A_count|gen00:0:ff0i~q\ & ((\A_count|gen00:3:ff0i~q\))) # (!\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:2:ff0i~q\)))) # (!\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:2:ff0i~q\ & (\A_count|gen00:0:ff0i~q\ 
-- $ (\A_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:1:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:0:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~1_combout\);

-- Location: LCCOMB_X72_Y43_N22
\A_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~2_combout\ = (\A_count|gen00:2:ff0i~q\ & (\A_count|gen00:3:ff0i~q\ & ((\A_count|gen00:1:ff0i~q\) # (!\A_count|gen00:0:ff0i~q\)))) # (!\A_count|gen00:2:ff0i~q\ & (!\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:1:ff0i~q\ & 
-- !\A_count|gen00:3:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~2_combout\);

-- Location: LCCOMB_X72_Y43_N4
\A_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~3_combout\ = (\A_count|gen00:1:ff0i~q\ & ((\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:2:ff0i~q\)) # (!\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:2:ff0i~q\ & \A_count|gen00:3:ff0i~q\)))) # (!\A_count|gen00:1:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ 
-- & (\A_count|gen00:0:ff0i~q\ $ (\A_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~3_combout\);

-- Location: LCCOMB_X72_Y43_N6
\A_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~4_combout\ = (\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:0:ff0i~q\ & ((!\A_count|gen00:3:ff0i~q\)))) # (!\A_count|gen00:1:ff0i~q\ & ((\A_count|gen00:2:ff0i~q\ & ((!\A_count|gen00:3:ff0i~q\))) # (!\A_count|gen00:2:ff0i~q\ & 
-- (\A_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~4_combout\);

-- Location: LCCOMB_X72_Y43_N28
\A_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~5_combout\ = (\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:3:ff0i~q\ $ (((\A_count|gen00:1:ff0i~q\) # (!\A_count|gen00:2:ff0i~q\))))) # (!\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:2:ff0i~q\ & (\A_count|gen00:1:ff0i~q\ & 
-- !\A_count|gen00:3:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~5_combout\);

-- Location: LCCOMB_X72_Y43_N18
\A_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~6_combout\ = (\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ & (\A_count|gen00:2:ff0i~q\ $ (!\A_count|gen00:1:ff0i~q\)))) # (!\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:2:ff0i~q\ $ 
-- (!\A_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~6_combout\);

-- Location: LCCOMB_X71_Y43_N6
\B_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~0_combout\ = (\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ $ (\B_count|gen00:2:ff0i~q\)))) # (!\B_count|gen00:3:ff0i~q\ & (!\B_count|gen00:1:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ $ (\B_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~0_combout\);

-- Location: LCCOMB_X71_Y43_N28
\B_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~1_combout\ = (\B_count|gen00:3:ff0i~q\ & ((\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:1:ff0i~q\)) # (!\B_count|gen00:0:ff0i~q\ & ((\B_count|gen00:2:ff0i~q\))))) # (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ 
-- $ (\B_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:0:ff0i~q\,
	datad => \B_count|gen00:2:ff0i~q\,
	combout => \B_conv|D~1_combout\);

-- Location: LCCOMB_X71_Y43_N24
\B_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~2_combout\ = (\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:3:ff0i~q\ & ((\B_count|gen00:1:ff0i~q\) # (!\B_count|gen00:0:ff0i~q\)))) # (!\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & 
-- !\B_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~2_combout\);

-- Location: LCCOMB_X71_Y43_N18
\B_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~3_combout\ = (\B_count|gen00:1:ff0i~q\ & ((\B_count|gen00:2:ff0i~q\ & ((\B_count|gen00:0:ff0i~q\))) # (!\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:3:ff0i~q\ & !\B_count|gen00:0:ff0i~q\)))) # (!\B_count|gen00:1:ff0i~q\ & 
-- (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ $ (\B_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~3_combout\);

-- Location: LCCOMB_X71_Y43_N30
\B_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~4_combout\ = (\B_count|gen00:1:ff0i~q\ & (((!\B_count|gen00:3:ff0i~q\ & \B_count|gen00:0:ff0i~q\)))) # (!\B_count|gen00:1:ff0i~q\ & ((\B_count|gen00:2:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\)) # (!\B_count|gen00:2:ff0i~q\ & 
-- ((\B_count|gen00:0:ff0i~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~4_combout\);

-- Location: LCCOMB_X71_Y43_N12
\B_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~5_combout\ = (\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ $ (\B_count|gen00:3:ff0i~q\)))) # (!\B_count|gen00:2:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & ((\B_count|gen00:1:ff0i~q\) # 
-- (\B_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~5_combout\);

-- Location: LCCOMB_X71_Y43_N26
\B_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~6_combout\ = (\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ $ (!\B_count|gen00:1:ff0i~q\)))) # (!\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:1:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ $ 
-- (!\B_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~6_combout\);

-- Location: LCCOMB_X75_Y43_N26
\C_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~0_combout\ = (\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ $ (\C_count|gen00:1:ff0i~q\)))) # (!\C_count|gen00:3:ff0i~q\ & (!\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ $ (\C_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:3:ff0i~q\,
	datab => \C_count|gen00:2:ff0i~q\,
	datac => \C_count|gen00:0:ff0i~q\,
	datad => \C_count|gen00:1:ff0i~q\,
	combout => \C_conv|D~0_combout\);

-- Location: LCCOMB_X75_Y43_N24
\C_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~1_combout\ = (\C_count|gen00:3:ff0i~q\ & ((\C_count|gen00:0:ff0i~q\ & ((\C_count|gen00:1:ff0i~q\))) # (!\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:2:ff0i~q\)))) # (!\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ 
-- $ (\C_count|gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:3:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:1:ff0i~q\,
	combout => \C_conv|D~1_combout\);

-- Location: LCCOMB_X75_Y43_N30
\C_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~2_combout\ = (\C_count|gen00:2:ff0i~q\ & (\C_count|gen00:3:ff0i~q\ & ((\C_count|gen00:1:ff0i~q\) # (!\C_count|gen00:0:ff0i~q\)))) # (!\C_count|gen00:2:ff0i~q\ & (!\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:1:ff0i~q\ & 
-- !\C_count|gen00:3:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \C_conv|D~2_combout\);

-- Location: LCCOMB_X75_Y43_N22
\C_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~3_combout\ = (\C_count|gen00:1:ff0i~q\ & ((\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:2:ff0i~q\)) # (!\C_count|gen00:0:ff0i~q\ & (!\C_count|gen00:2:ff0i~q\ & \C_count|gen00:3:ff0i~q\)))) # (!\C_count|gen00:1:ff0i~q\ & (!\C_count|gen00:3:ff0i~q\ 
-- & (\C_count|gen00:0:ff0i~q\ $ (\C_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \C_conv|D~3_combout\);

-- Location: LCCOMB_X75_Y43_N28
\C_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~4_combout\ = (\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ & ((!\C_count|gen00:3:ff0i~q\)))) # (!\C_count|gen00:1:ff0i~q\ & ((\C_count|gen00:2:ff0i~q\ & ((!\C_count|gen00:3:ff0i~q\))) # (!\C_count|gen00:2:ff0i~q\ & 
-- (\C_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \C_conv|D~4_combout\);

-- Location: LCCOMB_X75_Y43_N4
\C_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~5_combout\ = (\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:3:ff0i~q\ $ (((\C_count|gen00:1:ff0i~q\) # (!\C_count|gen00:2:ff0i~q\))))) # (!\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:1:ff0i~q\ & (!\C_count|gen00:2:ff0i~q\ & 
-- !\C_count|gen00:3:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \C_conv|D~5_combout\);

-- Location: LCCOMB_X75_Y43_N20
\C_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~6_combout\ = (\C_count|gen00:0:ff0i~q\ & (!\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:1:ff0i~q\ $ (!\C_count|gen00:2:ff0i~q\)))) # (!\C_count|gen00:0:ff0i~q\ & (!\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ $ 
-- (!\C_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:3:ff0i~q\,
	combout => \C_conv|D~6_combout\);

-- Location: LCCOMB_X74_Y43_N10
\D_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~0_combout\ = (\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:1:ff0i~q\ $ (\D_count|gen00:2:ff0i~q\)))) # (!\D_count|gen00:3:ff0i~q\ & (!\D_count|gen00:1:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ $ (\D_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:1:ff0i~q\,
	datac => \D_count|gen00:0:ff0i~q\,
	datad => \D_count|gen00:2:ff0i~q\,
	combout => \D_conv|D~0_combout\);

-- Location: LCCOMB_X74_Y43_N8
\D_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~1_combout\ = (\D_count|gen00:3:ff0i~q\ & ((\D_count|gen00:0:ff0i~q\ & ((\D_count|gen00:1:ff0i~q\))) # (!\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:2:ff0i~q\)))) # (!\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ & (\D_count|gen00:1:ff0i~q\ 
-- $ (\D_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:2:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:0:ff0i~q\,
	combout => \D_conv|D~1_combout\);

-- Location: LCCOMB_X74_Y43_N20
\D_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~2_combout\ = (\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ & ((\D_count|gen00:1:ff0i~q\) # (!\D_count|gen00:0:ff0i~q\)))) # (!\D_count|gen00:3:ff0i~q\ & (!\D_count|gen00:2:ff0i~q\ & (\D_count|gen00:1:ff0i~q\ & 
-- !\D_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:2:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:0:ff0i~q\,
	combout => \D_conv|D~2_combout\);

-- Location: LCCOMB_X74_Y43_N12
\D_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~3_combout\ = (\D_count|gen00:1:ff0i~q\ & ((\D_count|gen00:0:ff0i~q\ & ((\D_count|gen00:2:ff0i~q\))) # (!\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:3:ff0i~q\ & !\D_count|gen00:2:ff0i~q\)))) # (!\D_count|gen00:1:ff0i~q\ & 
-- (!\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ $ (\D_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:1:ff0i~q\,
	datab => \D_count|gen00:0:ff0i~q\,
	datac => \D_count|gen00:3:ff0i~q\,
	datad => \D_count|gen00:2:ff0i~q\,
	combout => \D_conv|D~3_combout\);

-- Location: LCCOMB_X74_Y43_N28
\D_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~4_combout\ = (\D_count|gen00:1:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\ & ((\D_count|gen00:0:ff0i~q\)))) # (!\D_count|gen00:1:ff0i~q\ & ((\D_count|gen00:2:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\)) # (!\D_count|gen00:2:ff0i~q\ & 
-- ((\D_count|gen00:0:ff0i~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:2:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:0:ff0i~q\,
	combout => \D_conv|D~4_combout\);

-- Location: LCCOMB_X74_Y43_N14
\D_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~5_combout\ = (\D_count|gen00:2:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:3:ff0i~q\ $ (\D_count|gen00:1:ff0i~q\)))) # (!\D_count|gen00:2:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\ & ((\D_count|gen00:1:ff0i~q\) # 
-- (\D_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:2:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:0:ff0i~q\,
	combout => \D_conv|D~5_combout\);

-- Location: LCCOMB_X74_Y43_N22
\D_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~6_combout\ = (\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ $ (!\D_count|gen00:1:ff0i~q\)))) # (!\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:1:ff0i~q\ & (\D_count|gen00:3:ff0i~q\ $ 
-- (!\D_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:2:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:0:ff0i~q\,
	combout => \D_conv|D~6_combout\);

-- Location: LCCOMB_X76_Y43_N30
\E_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~0_combout\ = (!\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ $ (\E_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:0:ff0i~q\,
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~0_combout\);

-- Location: LCCOMB_X76_Y43_N22
\E_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~1_combout\ = (\E_count|gen00:2:ff0i~q\ & (\E_count|gen00:1:ff0i~q\ $ (\E_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~1_combout\);

-- Location: LCCOMB_X76_Y43_N16
\E_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~2_combout\ = (\E_count|gen00:1:ff0i~q\ & (!\E_count|gen00:0:ff0i~q\ & !\E_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~2_combout\);

-- Location: LCCOMB_X76_Y43_N8
\E_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~3_combout\ = (\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ & \E_count|gen00:2:ff0i~q\)) # (!\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ $ (\E_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~3_combout\);

-- Location: LCCOMB_X77_Y45_N16
\E_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~4_combout\ = (\E_count|gen00:0:ff0i~q\) # ((\E_count|gen00:2:ff0i~q\ & !\E_count|gen00:1:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:0:ff0i~q\,
	datac => \E_count|gen00:2:ff0i~q\,
	datad => \E_count|gen00:1:ff0i~q\,
	combout => \E_conv|D~4_combout\);

-- Location: LCCOMB_X76_Y43_N28
\E_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~5_combout\ = (\E_count|gen00:1:ff0i~q\ & ((\E_count|gen00:0:ff0i~q\) # (!\E_count|gen00:2:ff0i~q\))) # (!\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ & !\E_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~5_combout\);

-- Location: LCCOMB_X76_Y43_N26
\E_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~6_combout\ = (\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ & \E_count|gen00:2:ff0i~q\)) # (!\E_count|gen00:1:ff0i~q\ & ((!\E_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~6_combout\);

-- Location: LCCOMB_X77_Y43_N16
\F_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~0_combout\ = (\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ $ (\F_count|gen00:1:ff0i~q\)))) # (!\F_count|gen00:3:ff0i~q\ & (!\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ $ (\F_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~0_combout\);

-- Location: LCCOMB_X77_Y43_N18
\F_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~1_combout\ = (\F_count|gen00:3:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\ & ((\F_count|gen00:1:ff0i~q\))) # (!\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:2:ff0i~q\)))) # (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ 
-- $ (\F_count|gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~1_combout\);

-- Location: LCCOMB_X77_Y43_N26
\F_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~2_combout\ = (\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ & ((\F_count|gen00:1:ff0i~q\) # (!\F_count|gen00:0:ff0i~q\)))) # (!\F_count|gen00:3:ff0i~q\ & (!\F_count|gen00:2:ff0i~q\ & (!\F_count|gen00:0:ff0i~q\ & 
-- \F_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~2_combout\);

-- Location: LCCOMB_X77_Y43_N20
\F_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~3_combout\ = (\F_count|gen00:1:ff0i~q\ & ((\F_count|gen00:2:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\))) # (!\F_count|gen00:2:ff0i~q\ & (\F_count|gen00:3:ff0i~q\ & !\F_count|gen00:0:ff0i~q\)))) # (!\F_count|gen00:1:ff0i~q\ & 
-- (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ $ (\F_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~3_combout\);

-- Location: LCCOMB_X77_Y43_N6
\F_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~4_combout\ = (\F_count|gen00:1:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\)))) # (!\F_count|gen00:1:ff0i~q\ & ((\F_count|gen00:2:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\)) # (!\F_count|gen00:2:ff0i~q\ & 
-- ((\F_count|gen00:0:ff0i~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~4_combout\);

-- Location: LCCOMB_X77_Y43_N30
\F_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~5_combout\ = (\F_count|gen00:2:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:3:ff0i~q\ $ (\F_count|gen00:1:ff0i~q\)))) # (!\F_count|gen00:2:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\) # 
-- (\F_count|gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~5_combout\);

-- Location: LCCOMB_X77_Y43_N28
\F_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~6_combout\ = (\F_count|gen00:0:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ $ (!\F_count|gen00:1:ff0i~q\)))) # (!\F_count|gen00:0:ff0i~q\ & (!\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:3:ff0i~q\ $ 
-- (!\F_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:2:ff0i~q\,
	datac => \F_count|gen00:0:ff0i~q\,
	datad => \F_count|gen00:1:ff0i~q\,
	combout => \F_conv|D~6_combout\);

-- Location: IOIBUF_X18_Y0_N1
\clkdbg~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkdbg,
	o => \clkdbg~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led_clk <= \led_clk~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_D(5) <= \D[5]~output_o\;

ww_D(6) <= \D[6]~output_o\;

ww_D(7) <= \D[7]~output_o\;

ww_E(0) <= \E[0]~output_o\;

ww_E(1) <= \E[1]~output_o\;

ww_E(2) <= \E[2]~output_o\;

ww_E(3) <= \E[3]~output_o\;

ww_E(4) <= \E[4]~output_o\;

ww_E(5) <= \E[5]~output_o\;

ww_E(6) <= \E[6]~output_o\;

ww_E(7) <= \E[7]~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_An(0) <= \An[0]~output_o\;

ww_An(1) <= \An[1]~output_o\;

ww_An(2) <= \An[2]~output_o\;

ww_An(3) <= \An[3]~output_o\;

ww_Bn(0) <= \Bn[0]~output_o\;

ww_Bn(1) <= \Bn[1]~output_o\;

ww_Bn(2) <= \Bn[2]~output_o\;

ww_Bn(3) <= \Bn[3]~output_o\;

ww_Cn(0) <= \Cn[0]~output_o\;

ww_Cn(1) <= \Cn[1]~output_o\;

ww_Cn(2) <= \Cn[2]~output_o\;

ww_Cn(3) <= \Cn[3]~output_o\;

ww_Dn(0) <= \Dn[0]~output_o\;

ww_Dn(1) <= \Dn[1]~output_o\;

ww_Dn(2) <= \Dn[2]~output_o\;

ww_Dn(3) <= \Dn[3]~output_o\;

ww_En(0) <= \En[0]~output_o\;

ww_En(1) <= \En[1]~output_o\;

ww_En(2) <= \En[2]~output_o\;

ww_En(3) <= \En[3]~output_o\;

ww_Fn(0) <= \Fn[0]~output_o\;

ww_Fn(1) <= \Fn[1]~output_o\;

ww_Fn(2) <= \Fn[2]~output_o\;

ww_Fn(3) <= \Fn[3]~output_o\;
END structure;


