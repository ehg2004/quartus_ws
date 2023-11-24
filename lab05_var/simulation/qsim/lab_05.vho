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

-- DATE "11/16/2023 14:03:30"

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
	led_clk : BUFFER std_logic;
	A : BUFFER std_logic_vector(7 DOWNTO 0);
	B : BUFFER std_logic_vector(7 DOWNTO 0);
	C : BUFFER std_logic_vector(7 DOWNTO 0);
	D : BUFFER std_logic_vector(7 DOWNTO 0);
	E : BUFFER std_logic_vector(7 DOWNTO 0);
	F : BUFFER std_logic_vector(7 DOWNTO 0);
	An : BUFFER std_logic_vector(3 DOWNTO 0);
	Bn : BUFFER std_logic_vector(3 DOWNTO 0);
	Cn : BUFFER std_logic_vector(3 DOWNTO 0);
	Dn : BUFFER std_logic_vector(3 DOWNTO 0);
	En : BUFFER std_logic_vector(3 DOWNTO 0);
	Fn : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lab_05;

-- Design Ports Information
-- clk_ref	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sw	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- An[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bn[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cn[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dn[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fn[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkdbg	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clk_ref~input_o\ : std_logic;
SIGNAL \clk_sw~input_o\ : std_logic;
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
SIGNAL \clkdbg~input_o\ : std_logic;
SIGNAL \A_count|D_s[2]~1_combout\ : std_logic;
SIGNAL \pb_rst~input_o\ : std_logic;
SIGNAL \A_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \A_count|D_s~0_combout\ : std_logic;
SIGNAL \A_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \A_conv|D~7_combout\ : std_logic;
SIGNAL \A_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \A_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \B_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \B_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \B_count|D_s[2]~0_combout\ : std_logic;
SIGNAL \B_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \B_conv|D~7_combout\ : std_logic;
SIGNAL \B_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \B_conv|D~8_combout\ : std_logic;
SIGNAL \B_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \B_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \C_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \C_count|gen00:0:ff0i~feeder_combout\ : std_logic;
SIGNAL \C_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \C_count|D_s~1_combout\ : std_logic;
SIGNAL \C_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \C_count|D_s[2]~0_combout\ : std_logic;
SIGNAL \C_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \C_conv|D~7_combout\ : std_logic;
SIGNAL \C_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \C_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \D_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \D_count|gen00:0:ff0i~feeder_combout\ : std_logic;
SIGNAL \D_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \D_conv|D~7_combout\ : std_logic;
SIGNAL \D_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \D_count|D_s[2]~1_combout\ : std_logic;
SIGNAL \D_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \D_count|D_s~0_combout\ : std_logic;
SIGNAL \D_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \D_count|rst_cmp|outp~combout\ : std_logic;
SIGNAL \E_count|D_s~0_combout\ : std_logic;
SIGNAL \E_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \E_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \E_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \E_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \auto_ps~input_o\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \E_count|rst_cmp|rslt_s~0_combout\ : std_logic;
SIGNAL \F_conv|D~8_combout\ : std_logic;
SIGNAL \F_count|gen00:0:ff0i~0_combout\ : std_logic;
SIGNAL \F_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \F_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \F_count|D_s[2]~0_combout\ : std_logic;
SIGNAL \F_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \F_conv|D~7_combout\ : std_logic;
SIGNAL \F_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \F_conv|D~9_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \lock_compare_trigger~0_combout\ : std_logic;
SIGNAL \pb_pause~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \lock_compare_trigger~q\ : std_logic;
SIGNAL \pause_trigger~0_combout\ : std_logic;
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
\ALT_INV_pb_pause~input_o\ <= NOT \pb_pause~input_o\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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
	i => \clkdbg~input_o\,
	devoe => ww_devoe,
	o => \led_clk~output_o\);

-- Location: IOOBUF_X78_Y45_N9
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

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X78_Y37_N16
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

-- Location: IOOBUF_X78_Y34_N24
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

-- Location: IOOBUF_X78_Y34_N9
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

-- Location: IOOBUF_X78_Y34_N16
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

-- Location: IOOBUF_X78_Y34_N2
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

-- Location: IOOBUF_X78_Y37_N9
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X78_Y40_N2
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

-- Location: IOOBUF_X78_Y40_N23
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

-- Location: IOOBUF_X78_Y42_N16
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

-- Location: IOOBUF_X78_Y45_N23
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X78_Y35_N16
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

-- Location: IOOBUF_X78_Y43_N23
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X69_Y54_N9
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

-- Location: IOOBUF_X78_Y41_N9
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

-- Location: IOOBUF_X78_Y41_N2
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

-- Location: IOOBUF_X78_Y43_N16
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

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y44_N9
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

-- Location: IOOBUF_X66_Y54_N2
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

-- Location: IOOBUF_X69_Y54_N16
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

-- Location: IOOBUF_X78_Y44_N2
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

-- Location: IOOBUF_X78_Y43_N2
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

-- Location: IOOBUF_X78_Y35_N2
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

-- Location: IOOBUF_X78_Y43_N9
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

-- Location: IOOBUF_X66_Y54_N9
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

-- Location: IOOBUF_X69_Y54_N23
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

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X78_Y49_N2
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

-- Location: IOOBUF_X60_Y54_N9
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

-- Location: IOOBUF_X64_Y54_N2
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

-- Location: IOOBUF_X66_Y54_N30
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

-- Location: IOOBUF_X69_Y54_N30
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

-- Location: IOOBUF_X60_Y54_N16
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

-- Location: IOOBUF_X58_Y54_N16
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X62_Y54_N30
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

-- Location: IOOBUF_X74_Y54_N2
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

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X74_Y54_N23
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

-- Location: IOOBUF_X66_Y54_N16
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

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X58_Y54_N30
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

-- Location: IOOBUF_X51_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N30
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X49_Y54_N2
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

-- Location: IOOBUF_X49_Y54_N16
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

-- Location: IOOBUF_X49_Y54_N23
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X58_Y54_N9
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X58_Y54_N2
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X46_Y54_N23
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

-- Location: IOOBUF_X78_Y24_N16
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

-- Location: IOOBUF_X56_Y54_N23
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

-- Location: IOOBUF_X56_Y54_N9
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: LCCOMB_X54_Y53_N16
\A_count|D_s[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|D_s[2]~1_combout\ = \A_count|gen00:2:ff0i~q\ $ (((\A_count|gen00:0:ff0i~q\ & \A_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_count|gen00:0:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:2:ff0i~q\,
	combout => \A_count|D_s[2]~1_combout\);

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

-- Location: FF_X54_Y53_N25
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

-- Location: LCCOMB_X54_Y53_N22
\A_count|D_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|D_s~0_combout\ = (\A_count|gen00:2:ff0i~q\ & \A_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|gen00:2:ff0i~q\,
	datad => \A_count|gen00:1:ff0i~q\,
	combout => \A_count|D_s~0_combout\);

-- Location: FF_X54_Y53_N23
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

-- Location: LCCOMB_X54_Y53_N14
\A_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~7_combout\ = (!\A_count|gen00:3:ff0i~q\ & !\A_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:3:ff0i~q\,
	datac => \A_count|gen00:1:ff0i~q\,
	combout => \A_conv|D~7_combout\);

-- Location: FF_X54_Y53_N15
\A_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_M~combout\,
	d => \A_conv|D~7_combout\,
	clrn => \pb_rst~input_o\,
	ena => \A_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X54_Y53_N18
\A_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|rst_cmp|outp~combout\ = LCELL((\A_count|gen00:1:ff0i~q\) # ((\A_count|gen00:2:ff0i~q\) # ((!\A_count|gen00:0:ff0i~q\) # (!\A_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:1:ff0i~q\,
	datab => \A_count|gen00:2:ff0i~q\,
	datac => \A_count|gen00:3:ff0i~q\,
	datad => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X52_Y53_N10
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

-- Location: FF_X52_Y53_N25
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

-- Location: LCCOMB_X52_Y53_N4
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

-- Location: FF_X52_Y53_N21
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

-- Location: LCCOMB_X52_Y53_N14
\B_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~7_combout\ = (\B_count|gen00:1:ff0i~q\ & \B_count|gen00:2:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:2:ff0i~q\,
	combout => \B_conv|D~7_combout\);

-- Location: FF_X52_Y53_N15
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

-- Location: LCCOMB_X52_Y53_N30
\B_conv|D~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~8_combout\ = (!\B_count|gen00:1:ff0i~q\ & !\B_count|gen00:3:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:3:ff0i~q\,
	combout => \B_conv|D~8_combout\);

-- Location: FF_X52_Y53_N31
\B_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|rst_cmp|outp~combout\,
	d => \B_conv|D~8_combout\,
	clrn => \pb_rst~input_o\,
	ena => \B_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X52_Y53_N28
\B_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_count|rst_cmp|outp~combout\ = LCELL((\B_count|gen00:1:ff0i~q\) # ((\B_count|gen00:2:ff0i~q\) # ((!\B_count|gen00:3:ff0i~q\) # (!\B_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:1:ff0i~q\,
	datab => \B_count|gen00:2:ff0i~q\,
	datac => \B_count|gen00:0:ff0i~q\,
	datad => \B_count|gen00:3:ff0i~q\,
	combout => \B_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X50_Y53_N20
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

-- Location: LCCOMB_X50_Y53_N16
\C_count|gen00:0:ff0i~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|gen00:0:ff0i~feeder_combout\ = \C_count|gen00:0:ff0i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_count|gen00:0:ff0i~0_combout\,
	combout => \C_count|gen00:0:ff0i~feeder_combout\);

-- Location: FF_X50_Y53_N17
\C_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|rst_cmp|outp~combout\,
	d => \C_count|gen00:0:ff0i~feeder_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X50_Y53_N22
\C_count|D_s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|D_s~1_combout\ = (!\C_count|gen00:3:ff0i~q\ & !\C_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_count|gen00:3:ff0i~q\,
	datac => \C_count|gen00:1:ff0i~q\,
	combout => \C_count|D_s~1_combout\);

-- Location: FF_X50_Y53_N23
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

-- Location: LCCOMB_X50_Y53_N10
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

-- Location: FF_X50_Y53_N19
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

-- Location: LCCOMB_X50_Y53_N14
\C_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~7_combout\ = (\C_count|gen00:2:ff0i~q\ & \C_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:1:ff0i~q\,
	combout => \C_conv|D~7_combout\);

-- Location: FF_X50_Y53_N15
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

-- Location: LCCOMB_X50_Y53_N30
\C_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_count|rst_cmp|outp~combout\ = LCELL((((\C_count|gen00:1:ff0i~q\) # (\C_count|gen00:2:ff0i~q\)) # (!\C_count|gen00:0:ff0i~q\)) # (!\C_count|gen00:3:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:3:ff0i~q\,
	datab => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:1:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X55_Y53_N28
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

-- Location: LCCOMB_X55_Y53_N18
\D_count|gen00:0:ff0i~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|gen00:0:ff0i~feeder_combout\ = \D_count|gen00:0:ff0i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_count|gen00:0:ff0i~0_combout\,
	combout => \D_count|gen00:0:ff0i~feeder_combout\);

-- Location: FF_X55_Y53_N19
\D_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_count|rst_cmp|outp~combout\,
	d => \D_count|gen00:0:ff0i~feeder_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X55_Y53_N14
\D_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~7_combout\ = (!\D_count|gen00:3:ff0i~q\ & !\D_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~7_combout\);

-- Location: FF_X55_Y53_N15
\D_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C_count|rst_cmp|outp~combout\,
	d => \D_conv|D~7_combout\,
	clrn => \pb_rst~input_o\,
	ena => \D_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X55_Y53_N8
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

-- Location: FF_X55_Y53_N21
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

-- Location: LCCOMB_X55_Y53_N30
\D_count|D_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|D_s~0_combout\ = (\D_count|gen00:2:ff0i~q\ & \D_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_count|D_s~0_combout\);

-- Location: FF_X55_Y53_N31
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

-- Location: LCCOMB_X55_Y53_N4
\D_count|rst_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_count|rst_cmp|outp~combout\ = LCELL((((\D_count|gen00:1:ff0i~q\) # (\D_count|gen00:2:ff0i~q\)) # (!\D_count|gen00:0:ff0i~q\)) # (!\D_count|gen00:3:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:3:ff0i~q\,
	datab => \D_count|gen00:0:ff0i~q\,
	datac => \D_count|gen00:1:ff0i~q\,
	datad => \D_count|gen00:2:ff0i~q\,
	combout => \D_count|rst_cmp|outp~combout\);

-- Location: LCCOMB_X51_Y53_N28
\E_count|D_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_count|D_s~0_combout\ = (!\E_count|gen00:1:ff0i~q\ & !\E_count|gen00:2:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_count|gen00:1:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_count|D_s~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\E_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_count|gen00:0:ff0i~0_combout\ = !\E_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:0:ff0i~q\,
	combout => \E_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X51_Y53_N15
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

-- Location: FF_X51_Y53_N29
\E_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \D_count|rst_cmp|outp~combout\,
	d => \E_count|D_s~0_combout\,
	clrn => \pb_rst~input_o\,
	ena => \E_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_count|gen00:1:ff0i~q\);

-- Location: FF_X51_Y53_N25
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

-- Location: LCCOMB_X51_Y53_N18
\comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\C_count|gen00:0:ff0i~q\ & (\E_count|gen00:2:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & !\E_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:0:ff0i~q\,
	datab => \E_count|gen00:2:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \E_count|gen00:1:ff0i~q\,
	combout => \comb~7_combout\);

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

-- Location: LCCOMB_X52_Y53_N22
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\auto_ps~input_o\ & (\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:1:ff0i~q\ & !\B_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datab => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:2:ff0i~q\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X54_Y53_N6
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ & !\A_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:1:ff0i~q\,
	datab => \A_count|gen00:0:ff0i~q\,
	datac => \A_count|gen00:3:ff0i~q\,
	datad => \A_count|gen00:2:ff0i~q\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X51_Y53_N16
\E_count|rst_cmp|rslt_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_count|rst_cmp|rslt_s~0_combout\ = LCELL(((\E_count|gen00:1:ff0i~q\) # (!\E_count|gen00:0:ff0i~q\)) # (!\E_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_count|gen00:2:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:1:ff0i~q\,
	combout => \E_count|rst_cmp|rslt_s~0_combout\);

-- Location: LCCOMB_X56_Y53_N12
\F_conv|D~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~8_combout\ = (!\F_count|gen00:1:ff0i~q\ & !\F_count|gen00:3:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_count|gen00:1:ff0i~q\,
	datad => \F_count|gen00:3:ff0i~q\,
	combout => \F_conv|D~8_combout\);

-- Location: LCCOMB_X56_Y53_N18
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

-- Location: FF_X56_Y53_N19
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

-- Location: FF_X56_Y53_N13
\F_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \E_count|rst_cmp|rslt_s~0_combout\,
	d => \F_conv|D~8_combout\,
	clrn => \pb_rst~input_o\,
	ena => \F_count|gen00:0:ff0i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X56_Y53_N26
\F_count|D_s[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_count|D_s[2]~0_combout\ = \F_count|gen00:2:ff0i~q\ $ (((\F_count|gen00:1:ff0i~q\ & \F_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datac => \F_count|gen00:2:ff0i~q\,
	datad => \F_count|gen00:0:ff0i~q\,
	combout => \F_count|D_s[2]~0_combout\);

-- Location: FF_X56_Y53_N27
\F_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \E_count|rst_cmp|rslt_s~0_combout\,
	d => \F_count|D_s[2]~0_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X56_Y53_N30
\F_conv|D~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~7_combout\ = (\F_count|gen00:1:ff0i~q\ & \F_count|gen00:2:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~7_combout\);

-- Location: FF_X56_Y53_N31
\F_count|gen00:3:ff0i\ : dffeas
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
	q => \F_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X56_Y53_N28
\F_conv|D~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~9_combout\ = (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:1:ff0i~q\ & (!\F_count|gen00:2:ff0i~q\ & !\F_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:3:ff0i~q\,
	datab => \F_count|gen00:1:ff0i~q\,
	datac => \F_count|gen00:2:ff0i~q\,
	datad => \F_count|gen00:0:ff0i~q\,
	combout => \F_conv|D~9_combout\);

-- Location: LCCOMB_X55_Y53_N24
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\comb~3_combout\ & (!\D_count|rst_cmp|outp~combout\ & (\comb~4_combout\ & \F_conv|D~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \D_count|rst_cmp|outp~combout\,
	datac => \comb~4_combout\,
	datad => \F_conv|D~9_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X51_Y53_N10
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\C_count|gen00:3:ff0i~q\ & (!\C_count|gen00:1:ff0i~q\ & (!\E_count|gen00:0:ff0i~q\ & !\C_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:3:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X51_Y53_N26
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL((\comb~7_combout\ & (\comb~5_combout\ & \comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~7_combout\,
	datac => \comb~5_combout\,
	datad => \comb~6_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X49_Y53_N12
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

-- Location: LCCOMB_X49_Y53_N10
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\pb_pause~input_o\) # (!\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_rst~input_o\,
	datad => \pb_pause~input_o\,
	combout => \comb~1_combout\);

-- Location: FF_X49_Y53_N13
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

-- Location: LCCOMB_X49_Y53_N18
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

-- Location: LCCOMB_X49_Y53_N30
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\lock_compare_trigger~q\) # (!\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lock_compare_trigger~q\,
	datad => \pb_rst~input_o\,
	combout => \comb~2_combout\);

-- Location: FF_X49_Y53_N19
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

-- Location: LCCOMB_X54_Y53_N2
clk_M : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_M~combout\ = LCELL((\clkdbg~input_o\) # ((\lock_compare_trigger~q\) # (\pause_trigger~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdbg~input_o\,
	datac => \lock_compare_trigger~q\,
	datad => \pause_trigger~q\,
	combout => \clk_M~combout\);

-- Location: LCCOMB_X54_Y53_N8
\A_count|gen00:0:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_count|gen00:0:ff0i~0_combout\ = !\A_count|gen00:0:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|gen00:0:ff0i~0_combout\);

-- Location: FF_X54_Y53_N29
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

-- Location: LCCOMB_X54_Y53_N24
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

-- Location: LCCOMB_X54_Y53_N28
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

-- Location: LCCOMB_X54_Y53_N12
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

-- Location: LCCOMB_X54_Y53_N26
\A_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~3_combout\ = (\A_count|gen00:1:ff0i~q\ & ((\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:2:ff0i~q\)) # (!\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:2:ff0i~q\ & \A_count|gen00:3:ff0i~q\)))) # (!\A_count|gen00:1:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ 
-- & (\A_count|gen00:0:ff0i~q\ $ (\A_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:1:ff0i~q\,
	datac => \A_count|gen00:2:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~3_combout\);

-- Location: LCCOMB_X54_Y53_N20
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

-- Location: LCCOMB_X54_Y53_N30
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

-- Location: LCCOMB_X54_Y53_N4
\A_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A_conv|D~6_combout\ = (\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ & (\A_count|gen00:1:ff0i~q\ $ (!\A_count|gen00:2:ff0i~q\)))) # (!\A_count|gen00:0:ff0i~q\ & (!\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:2:ff0i~q\ $ 
-- (!\A_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:0:ff0i~q\,
	datab => \A_count|gen00:1:ff0i~q\,
	datac => \A_count|gen00:2:ff0i~q\,
	datad => \A_count|gen00:3:ff0i~q\,
	combout => \A_conv|D~6_combout\);

-- Location: LCCOMB_X52_Y53_N20
\B_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~0_combout\ = (\B_count|gen00:2:ff0i~q\ & (!\B_count|gen00:1:ff0i~q\ & (\B_count|gen00:0:ff0i~q\ $ (!\B_count|gen00:3:ff0i~q\)))) # (!\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ $ 
-- (!\B_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:0:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:3:ff0i~q\,
	combout => \B_conv|D~0_combout\);

-- Location: LCCOMB_X52_Y53_N24
\B_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~1_combout\ = (\B_count|gen00:1:ff0i~q\ & ((\B_count|gen00:0:ff0i~q\ & ((\B_count|gen00:3:ff0i~q\))) # (!\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:2:ff0i~q\)))) # (!\B_count|gen00:1:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:0:ff0i~q\ 
-- $ (\B_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:2:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:0:ff0i~q\,
	datad => \B_count|gen00:3:ff0i~q\,
	combout => \B_conv|D~1_combout\);

-- Location: LCCOMB_X52_Y53_N8
\B_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~2_combout\ = (\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ & ((\B_count|gen00:1:ff0i~q\) # (!\B_count|gen00:0:ff0i~q\)))) # (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ & (!\B_count|gen00:2:ff0i~q\ & 
-- !\B_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~2_combout\);

-- Location: LCCOMB_X52_Y53_N16
\B_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~3_combout\ = (\B_count|gen00:1:ff0i~q\ & ((\B_count|gen00:2:ff0i~q\ & ((\B_count|gen00:0:ff0i~q\))) # (!\B_count|gen00:2:ff0i~q\ & (\B_count|gen00:3:ff0i~q\ & !\B_count|gen00:0:ff0i~q\)))) # (!\B_count|gen00:1:ff0i~q\ & 
-- (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ $ (\B_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_conv|D~3_combout\);

-- Location: LCCOMB_X52_Y53_N26
\B_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~4_combout\ = (\B_count|gen00:1:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:0:ff0i~q\))) # (!\B_count|gen00:1:ff0i~q\ & ((\B_count|gen00:2:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\)) # (!\B_count|gen00:2:ff0i~q\ & 
-- ((\B_count|gen00:0:ff0i~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:1:ff0i~q\,
	combout => \B_conv|D~4_combout\);

-- Location: LCCOMB_X52_Y53_N12
\B_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~5_combout\ = (\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:3:ff0i~q\ $ (((\B_count|gen00:1:ff0i~q\) # (!\B_count|gen00:2:ff0i~q\))))) # (!\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & (!\B_count|gen00:2:ff0i~q\ & 
-- \B_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:1:ff0i~q\,
	combout => \B_conv|D~5_combout\);

-- Location: LCCOMB_X52_Y53_N18
\B_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B_conv|D~6_combout\ = (\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & (\B_count|gen00:2:ff0i~q\ $ (!\B_count|gen00:1:ff0i~q\)))) # (!\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:1:ff0i~q\ & (\B_count|gen00:3:ff0i~q\ $ 
-- (!\B_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:1:ff0i~q\,
	combout => \B_conv|D~6_combout\);

-- Location: LCCOMB_X50_Y53_N18
\C_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~0_combout\ = (\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:1:ff0i~q\ $ (\C_count|gen00:2:ff0i~q\)))) # (!\C_count|gen00:3:ff0i~q\ & (!\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ $ (\C_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:3:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:0:ff0i~q\,
	combout => \C_conv|D~0_combout\);

-- Location: LCCOMB_X50_Y53_N26
\C_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~1_combout\ = (\C_count|gen00:1:ff0i~q\ & ((\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:3:ff0i~q\)) # (!\C_count|gen00:0:ff0i~q\ & ((\C_count|gen00:2:ff0i~q\))))) # (!\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ 
-- $ (\C_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:1:ff0i~q\,
	datab => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:3:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_conv|D~1_combout\);

-- Location: LCCOMB_X50_Y53_N28
\C_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~2_combout\ = (\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ & ((\C_count|gen00:1:ff0i~q\) # (!\C_count|gen00:0:ff0i~q\)))) # (!\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:1:ff0i~q\ & (!\C_count|gen00:0:ff0i~q\ & 
-- !\C_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:1:ff0i~q\,
	datab => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:3:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_conv|D~2_combout\);

-- Location: LCCOMB_X51_Y53_N30
\C_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~3_combout\ = (\C_count|gen00:1:ff0i~q\ & ((\C_count|gen00:2:ff0i~q\ & ((\C_count|gen00:0:ff0i~q\))) # (!\C_count|gen00:2:ff0i~q\ & (\C_count|gen00:3:ff0i~q\ & !\C_count|gen00:0:ff0i~q\)))) # (!\C_count|gen00:1:ff0i~q\ & 
-- (!\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:2:ff0i~q\ $ (\C_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:3:ff0i~q\,
	datab => \C_count|gen00:1:ff0i~q\,
	datac => \C_count|gen00:2:ff0i~q\,
	datad => \C_count|gen00:0:ff0i~q\,
	combout => \C_conv|D~3_combout\);

-- Location: LCCOMB_X50_Y53_N8
\C_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~4_combout\ = (\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ & (!\C_count|gen00:3:ff0i~q\))) # (!\C_count|gen00:1:ff0i~q\ & ((\C_count|gen00:2:ff0i~q\ & ((!\C_count|gen00:3:ff0i~q\))) # (!\C_count|gen00:2:ff0i~q\ & 
-- (\C_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:1:ff0i~q\,
	datab => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:3:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_conv|D~4_combout\);

-- Location: LCCOMB_X50_Y53_N12
\C_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~5_combout\ = (\C_count|gen00:1:ff0i~q\ & (!\C_count|gen00:3:ff0i~q\ & ((\C_count|gen00:0:ff0i~q\) # (!\C_count|gen00:2:ff0i~q\)))) # (!\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:0:ff0i~q\ & (\C_count|gen00:3:ff0i~q\ $ 
-- (!\C_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:1:ff0i~q\,
	datab => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:3:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_conv|D~5_combout\);

-- Location: LCCOMB_X50_Y53_N24
\C_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C_conv|D~6_combout\ = (\C_count|gen00:0:ff0i~q\ & (!\C_count|gen00:3:ff0i~q\ & (\C_count|gen00:1:ff0i~q\ $ (!\C_count|gen00:2:ff0i~q\)))) # (!\C_count|gen00:0:ff0i~q\ & (!\C_count|gen00:1:ff0i~q\ & (\C_count|gen00:3:ff0i~q\ $ 
-- (!\C_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_count|gen00:1:ff0i~q\,
	datab => \C_count|gen00:0:ff0i~q\,
	datac => \C_count|gen00:3:ff0i~q\,
	datad => \C_count|gen00:2:ff0i~q\,
	combout => \C_conv|D~6_combout\);

-- Location: LCCOMB_X55_Y53_N20
\D_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~0_combout\ = (\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:1:ff0i~q\ $ (\D_count|gen00:2:ff0i~q\)))) # (!\D_count|gen00:3:ff0i~q\ & (!\D_count|gen00:1:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ $ (\D_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:1:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:0:ff0i~q\,
	combout => \D_conv|D~0_combout\);

-- Location: LCCOMB_X55_Y53_N6
\D_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~1_combout\ = (\D_count|gen00:3:ff0i~q\ & ((\D_count|gen00:0:ff0i~q\ & ((\D_count|gen00:1:ff0i~q\))) # (!\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:2:ff0i~q\)))) # (!\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ 
-- $ (\D_count|gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~1_combout\);

-- Location: LCCOMB_X55_Y53_N26
\D_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~2_combout\ = (\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ & ((\D_count|gen00:1:ff0i~q\) # (!\D_count|gen00:0:ff0i~q\)))) # (!\D_count|gen00:3:ff0i~q\ & (!\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:2:ff0i~q\ & 
-- \D_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~2_combout\);

-- Location: LCCOMB_X55_Y53_N10
\D_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~3_combout\ = (\D_count|gen00:1:ff0i~q\ & ((\D_count|gen00:0:ff0i~q\ & ((\D_count|gen00:2:ff0i~q\))) # (!\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:3:ff0i~q\ & !\D_count|gen00:2:ff0i~q\)))) # (!\D_count|gen00:1:ff0i~q\ & 
-- (!\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ $ (\D_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~3_combout\);

-- Location: LCCOMB_X55_Y53_N22
\D_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~4_combout\ = (\D_count|gen00:1:ff0i~q\ & (\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\))) # (!\D_count|gen00:1:ff0i~q\ & ((\D_count|gen00:2:ff0i~q\ & ((!\D_count|gen00:3:ff0i~q\))) # (!\D_count|gen00:2:ff0i~q\ & 
-- (\D_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~4_combout\);

-- Location: LCCOMB_X55_Y53_N16
\D_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~5_combout\ = (\D_count|gen00:0:ff0i~q\ & (\D_count|gen00:3:ff0i~q\ $ (((\D_count|gen00:1:ff0i~q\) # (!\D_count|gen00:2:ff0i~q\))))) # (!\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\ & (!\D_count|gen00:2:ff0i~q\ & 
-- \D_count|gen00:1:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~5_combout\);

-- Location: LCCOMB_X55_Y53_N12
\D_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_conv|D~6_combout\ = (\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:3:ff0i~q\ & (\D_count|gen00:2:ff0i~q\ $ (!\D_count|gen00:1:ff0i~q\)))) # (!\D_count|gen00:0:ff0i~q\ & (!\D_count|gen00:1:ff0i~q\ & (\D_count|gen00:3:ff0i~q\ $ 
-- (!\D_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_count|gen00:0:ff0i~q\,
	datab => \D_count|gen00:3:ff0i~q\,
	datac => \D_count|gen00:2:ff0i~q\,
	datad => \D_count|gen00:1:ff0i~q\,
	combout => \D_conv|D~6_combout\);

-- Location: LCCOMB_X51_Y53_N24
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

-- Location: LCCOMB_X51_Y53_N14
\E_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~1_combout\ = (\E_count|gen00:2:ff0i~q\ & (\E_count|gen00:1:ff0i~q\ $ (\E_count|gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:1:ff0i~q\,
	datac => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\E_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~2_combout\ = (\E_count|gen00:1:ff0i~q\ & (!\E_count|gen00:0:ff0i~q\ & !\E_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~2_combout\);

-- Location: LCCOMB_X51_Y53_N22
\E_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~3_combout\ = (\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ & \E_count|gen00:2:ff0i~q\)) # (!\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ $ (\E_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~3_combout\);

-- Location: LCCOMB_X51_Y53_N12
\E_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~4_combout\ = (\E_count|gen00:0:ff0i~q\) # ((!\E_count|gen00:1:ff0i~q\ & \E_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~4_combout\);

-- Location: LCCOMB_X51_Y53_N8
\E_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~5_combout\ = (\E_count|gen00:1:ff0i~q\ & ((\E_count|gen00:0:ff0i~q\) # (!\E_count|gen00:2:ff0i~q\))) # (!\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ & !\E_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~5_combout\);

-- Location: LCCOMB_X51_Y53_N20
\E_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_conv|D~6_combout\ = (\E_count|gen00:1:ff0i~q\ & (\E_count|gen00:0:ff0i~q\ & \E_count|gen00:2:ff0i~q\)) # (!\E_count|gen00:1:ff0i~q\ & ((!\E_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_count|gen00:1:ff0i~q\,
	datab => \E_count|gen00:0:ff0i~q\,
	datad => \E_count|gen00:2:ff0i~q\,
	combout => \E_conv|D~6_combout\);

-- Location: LCCOMB_X56_Y53_N16
\F_conv|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~0_combout\ = (\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:1:ff0i~q\ $ (\F_count|gen00:2:ff0i~q\)))) # (!\F_count|gen00:3:ff0i~q\ & (!\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ $ (\F_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~0_combout\);

-- Location: LCCOMB_X56_Y53_N10
\F_conv|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~1_combout\ = (\F_count|gen00:1:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:3:ff0i~q\)) # (!\F_count|gen00:0:ff0i~q\ & ((\F_count|gen00:2:ff0i~q\))))) # (!\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ 
-- $ (\F_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~1_combout\);

-- Location: LCCOMB_X56_Y53_N14
\F_conv|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~2_combout\ = (\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:2:ff0i~q\ & ((\F_count|gen00:1:ff0i~q\) # (!\F_count|gen00:0:ff0i~q\)))) # (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:1:ff0i~q\ & (!\F_count|gen00:0:ff0i~q\ & 
-- !\F_count|gen00:2:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~2_combout\);

-- Location: LCCOMB_X56_Y53_N22
\F_conv|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~3_combout\ = (\F_count|gen00:1:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\ & ((\F_count|gen00:2:ff0i~q\))) # (!\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:3:ff0i~q\ & !\F_count|gen00:2:ff0i~q\)))) # (!\F_count|gen00:1:ff0i~q\ & 
-- (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ $ (\F_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~3_combout\);

-- Location: LCCOMB_X56_Y53_N20
\F_conv|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~4_combout\ = (\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\))) # (!\F_count|gen00:1:ff0i~q\ & ((\F_count|gen00:2:ff0i~q\ & ((!\F_count|gen00:3:ff0i~q\))) # (!\F_count|gen00:2:ff0i~q\ & 
-- (\F_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~4_combout\);

-- Location: LCCOMB_X56_Y53_N8
\F_conv|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~5_combout\ = (\F_count|gen00:1:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\ & ((\F_count|gen00:0:ff0i~q\) # (!\F_count|gen00:2:ff0i~q\)))) # (!\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:0:ff0i~q\ & (\F_count|gen00:3:ff0i~q\ $ 
-- (!\F_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~5_combout\);

-- Location: LCCOMB_X56_Y53_N24
\F_conv|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F_conv|D~6_combout\ = (\F_count|gen00:0:ff0i~q\ & (!\F_count|gen00:3:ff0i~q\ & (\F_count|gen00:1:ff0i~q\ $ (!\F_count|gen00:2:ff0i~q\)))) # (!\F_count|gen00:0:ff0i~q\ & (!\F_count|gen00:1:ff0i~q\ & (\F_count|gen00:3:ff0i~q\ $ 
-- (!\F_count|gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_count|gen00:1:ff0i~q\,
	datab => \F_count|gen00:0:ff0i~q\,
	datac => \F_count|gen00:3:ff0i~q\,
	datad => \F_count|gen00:2:ff0i~q\,
	combout => \F_conv|D~6_combout\);

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


