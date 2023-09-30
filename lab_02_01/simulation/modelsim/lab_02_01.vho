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

-- DATE "09/22/2023 08:40:13"

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

ENTITY 	lab_02_01 IS
    PORT (
	Dec0 : BUFFER std_logic_vector(7 DOWNTO 0);
	Dec1 : BUFFER std_logic_vector(7 DOWNTO 0);
	Inc0 : BUFFER std_logic_vector(7 DOWNTO 0);
	Inc1 : BUFFER std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	clock_2hz : BUFFER std_logic
	);
END lab_02_01;

-- Design Ports Information
-- Dec0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc0[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inc1[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_2hz	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_02_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Dec0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Dec1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Inc0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Inc1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clock_2hz : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \aa|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Dec0[0]~output_o\ : std_logic;
SIGNAL \Dec0[1]~output_o\ : std_logic;
SIGNAL \Dec0[2]~output_o\ : std_logic;
SIGNAL \Dec0[3]~output_o\ : std_logic;
SIGNAL \Dec0[4]~output_o\ : std_logic;
SIGNAL \Dec0[5]~output_o\ : std_logic;
SIGNAL \Dec0[6]~output_o\ : std_logic;
SIGNAL \Dec0[7]~output_o\ : std_logic;
SIGNAL \Dec1[0]~output_o\ : std_logic;
SIGNAL \Dec1[1]~output_o\ : std_logic;
SIGNAL \Dec1[2]~output_o\ : std_logic;
SIGNAL \Dec1[3]~output_o\ : std_logic;
SIGNAL \Dec1[4]~output_o\ : std_logic;
SIGNAL \Dec1[5]~output_o\ : std_logic;
SIGNAL \Dec1[6]~output_o\ : std_logic;
SIGNAL \Dec1[7]~output_o\ : std_logic;
SIGNAL \Inc0[0]~output_o\ : std_logic;
SIGNAL \Inc0[1]~output_o\ : std_logic;
SIGNAL \Inc0[2]~output_o\ : std_logic;
SIGNAL \Inc0[3]~output_o\ : std_logic;
SIGNAL \Inc0[4]~output_o\ : std_logic;
SIGNAL \Inc0[5]~output_o\ : std_logic;
SIGNAL \Inc0[6]~output_o\ : std_logic;
SIGNAL \Inc0[7]~output_o\ : std_logic;
SIGNAL \Inc1[0]~output_o\ : std_logic;
SIGNAL \Inc1[1]~output_o\ : std_logic;
SIGNAL \Inc1[2]~output_o\ : std_logic;
SIGNAL \Inc1[3]~output_o\ : std_logic;
SIGNAL \Inc1[4]~output_o\ : std_logic;
SIGNAL \Inc1[5]~output_o\ : std_logic;
SIGNAL \Inc1[6]~output_o\ : std_logic;
SIGNAL \Inc1[7]~output_o\ : std_logic;
SIGNAL \clock_2hz~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \aa|Add0~0_combout\ : std_logic;
SIGNAL \aa|count[0]~18_combout\ : std_logic;
SIGNAL \aa|Add0~1\ : std_logic;
SIGNAL \aa|Add0~2_combout\ : std_logic;
SIGNAL \aa|Add0~3\ : std_logic;
SIGNAL \aa|Add0~4_combout\ : std_logic;
SIGNAL \aa|Add0~5\ : std_logic;
SIGNAL \aa|Add0~6_combout\ : std_logic;
SIGNAL \aa|Add0~7\ : std_logic;
SIGNAL \aa|Add0~8_combout\ : std_logic;
SIGNAL \aa|Add0~9\ : std_logic;
SIGNAL \aa|Add0~10_combout\ : std_logic;
SIGNAL \aa|count~6_combout\ : std_logic;
SIGNAL \aa|Add0~11\ : std_logic;
SIGNAL \aa|Add0~12_combout\ : std_logic;
SIGNAL \aa|Add0~13\ : std_logic;
SIGNAL \aa|Add0~14_combout\ : std_logic;
SIGNAL \aa|Add0~15\ : std_logic;
SIGNAL \aa|Add0~16_combout\ : std_logic;
SIGNAL \aa|Add0~17\ : std_logic;
SIGNAL \aa|Add0~18_combout\ : std_logic;
SIGNAL \aa|Add0~19\ : std_logic;
SIGNAL \aa|Add0~20_combout\ : std_logic;
SIGNAL \aa|count~7_combout\ : std_logic;
SIGNAL \aa|Add0~21\ : std_logic;
SIGNAL \aa|Add0~23\ : std_logic;
SIGNAL \aa|Add0~24_combout\ : std_logic;
SIGNAL \aa|count~9_combout\ : std_logic;
SIGNAL \aa|Add0~25\ : std_logic;
SIGNAL \aa|Add0~26_combout\ : std_logic;
SIGNAL \aa|count~10_combout\ : std_logic;
SIGNAL \aa|Add0~27\ : std_logic;
SIGNAL \aa|Add0~28_combout\ : std_logic;
SIGNAL \aa|Add0~29\ : std_logic;
SIGNAL \aa|Add0~30_combout\ : std_logic;
SIGNAL \aa|count~11_combout\ : std_logic;
SIGNAL \aa|Add0~31\ : std_logic;
SIGNAL \aa|Add0~32_combout\ : std_logic;
SIGNAL \aa|Add0~33\ : std_logic;
SIGNAL \aa|Add0~34_combout\ : std_logic;
SIGNAL \aa|count~12_combout\ : std_logic;
SIGNAL \aa|Add0~35\ : std_logic;
SIGNAL \aa|Add0~36_combout\ : std_logic;
SIGNAL \aa|count~13_combout\ : std_logic;
SIGNAL \aa|Add0~37\ : std_logic;
SIGNAL \aa|Add0~38_combout\ : std_logic;
SIGNAL \aa|count~14_combout\ : std_logic;
SIGNAL \aa|Equal0~5_combout\ : std_logic;
SIGNAL \aa|Add0~39\ : std_logic;
SIGNAL \aa|Add0~40_combout\ : std_logic;
SIGNAL \aa|count~15_combout\ : std_logic;
SIGNAL \aa|Add0~41\ : std_logic;
SIGNAL \aa|Add0~42_combout\ : std_logic;
SIGNAL \aa|count~16_combout\ : std_logic;
SIGNAL \aa|Add0~43\ : std_logic;
SIGNAL \aa|Add0~44_combout\ : std_logic;
SIGNAL \aa|Add0~45\ : std_logic;
SIGNAL \aa|Add0~46_combout\ : std_logic;
SIGNAL \aa|count~17_combout\ : std_logic;
SIGNAL \aa|Equal0~6_combout\ : std_logic;
SIGNAL \aa|Add0~47\ : std_logic;
SIGNAL \aa|Add0~48_combout\ : std_logic;
SIGNAL \aa|Add0~49\ : std_logic;
SIGNAL \aa|Add0~50_combout\ : std_logic;
SIGNAL \aa|Add0~51\ : std_logic;
SIGNAL \aa|Add0~52_combout\ : std_logic;
SIGNAL \aa|Add0~53\ : std_logic;
SIGNAL \aa|Add0~54_combout\ : std_logic;
SIGNAL \aa|Equal0~7_combout\ : std_logic;
SIGNAL \aa|Add0~55\ : std_logic;
SIGNAL \aa|Add0~56_combout\ : std_logic;
SIGNAL \aa|Add0~57\ : std_logic;
SIGNAL \aa|Add0~58_combout\ : std_logic;
SIGNAL \aa|Add0~59\ : std_logic;
SIGNAL \aa|Add0~60_combout\ : std_logic;
SIGNAL \aa|Add0~61\ : std_logic;
SIGNAL \aa|Add0~62_combout\ : std_logic;
SIGNAL \aa|Equal0~8_combout\ : std_logic;
SIGNAL \aa|Equal0~9_combout\ : std_logic;
SIGNAL \aa|Add0~22_combout\ : std_logic;
SIGNAL \aa|count~8_combout\ : std_logic;
SIGNAL \aa|Equal0~2_combout\ : std_logic;
SIGNAL \aa|Equal0~3_combout\ : std_logic;
SIGNAL \aa|Equal0~1_combout\ : std_logic;
SIGNAL \aa|Equal0~0_combout\ : std_logic;
SIGNAL \aa|Equal0~4_combout\ : std_logic;
SIGNAL \aa|tmp~0_combout\ : std_logic;
SIGNAL \aa|tmp~feeder_combout\ : std_logic;
SIGNAL \aa|tmp~q\ : std_logic;
SIGNAL \aa|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \a1|a0|a0|a0~0_combout\ : std_logic;
SIGNAL \a1|a0|a0|a0~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a0|a2|sDec10~combout\ : std_logic;
SIGNAL \a1|a0|a0|a2|a0~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a0|a2|sNew0~0_combout\ : std_logic;
SIGNAL \a1|a0|a0|a2|a0~q\ : std_logic;
SIGNAL \a1|a0|a0|a0~q\ : std_logic;
SIGNAL \a1|a0|a0|gen00:1:a1~0_combout\ : std_logic;
SIGNAL \a1|a0|a0|gen00:1:a1~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a0|gen00:1:a1~q\ : std_logic;
SIGNAL \a1|a0|a0|gen00:2:a1~0_combout\ : std_logic;
SIGNAL \a1|a0|a0|gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a0|gen00:2:a1~q\ : std_logic;
SIGNAL \a1|a0|a0|gen00:3:a1~0_combout\ : std_logic;
SIGNAL \a1|a0|a0|gen00:3:a1~q\ : std_logic;
SIGNAL \d2|D~0_combout\ : std_logic;
SIGNAL \d2|D~1_combout\ : std_logic;
SIGNAL \d2|D~2_combout\ : std_logic;
SIGNAL \d2|D~3_combout\ : std_logic;
SIGNAL \d2|D~4_combout\ : std_logic;
SIGNAL \d2|D~5_combout\ : std_logic;
SIGNAL \d2|D~6_combout\ : std_logic;
SIGNAL \a1|a0|a1|a0~0_combout\ : std_logic;
SIGNAL \a1|a0|a1|a0~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a1|gen00:1:a1~0_combout\ : std_logic;
SIGNAL \a1|a0|a1|gen00:1:a1~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a1|gen00:1:a1~q\ : std_logic;
SIGNAL \a1|a0|a1|gen00:2:a1~0_combout\ : std_logic;
SIGNAL \a1|a0|a1|gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a1|gen00:2:a1~q\ : std_logic;
SIGNAL \a1|a0|a1|gen00:3:a1~0_combout\ : std_logic;
SIGNAL \a1|a0|a1|gen00:3:a1~q\ : std_logic;
SIGNAL \a1|a0|a1|a2|sDec10~combout\ : std_logic;
SIGNAL \a1|a0|a1|a2|a0~feeder_combout\ : std_logic;
SIGNAL \a1|a0|a1|a2|sNew0~0_combout\ : std_logic;
SIGNAL \a1|a0|a1|a2|a0~q\ : std_logic;
SIGNAL \a1|a0|a1|a0~q\ : std_logic;
SIGNAL \d3|D~0_combout\ : std_logic;
SIGNAL \d3|D~1_combout\ : std_logic;
SIGNAL \d3|D~2_combout\ : std_logic;
SIGNAL \d3|D~3_combout\ : std_logic;
SIGNAL \d3|D~4_combout\ : std_logic;
SIGNAL \d3|D~5_combout\ : std_logic;
SIGNAL \d3|D~6_combout\ : std_logic;
SIGNAL \a0|a0|a0~0_combout\ : std_logic;
SIGNAL \a0|a0|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a0|a2|sDec10~combout\ : std_logic;
SIGNAL \a0|a0|a2|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a0|a2|sNew0~0_combout\ : std_logic;
SIGNAL \a0|a0|a2|a0~q\ : std_logic;
SIGNAL \a0|a0|a0~q\ : std_logic;
SIGNAL \a0|a0|gen00:1:a1~0_combout\ : std_logic;
SIGNAL \a0|a0|gen00:1:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a0|gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a0|gen00:2:a1~0_combout\ : std_logic;
SIGNAL \a0|a0|gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a0|gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a0|gen00:3:a1~0_combout\ : std_logic;
SIGNAL \a0|a0|gen00:3:a1~q\ : std_logic;
SIGNAL \d0|D~0_combout\ : std_logic;
SIGNAL \d0|D~1_combout\ : std_logic;
SIGNAL \d0|D~2_combout\ : std_logic;
SIGNAL \d0|D~3_combout\ : std_logic;
SIGNAL \d0|D~4_combout\ : std_logic;
SIGNAL \d0|D~5_combout\ : std_logic;
SIGNAL \d0|D~6_combout\ : std_logic;
SIGNAL \a0|a1|a0~0_combout\ : std_logic;
SIGNAL \a0|a1|a2|sDec10~combout\ : std_logic;
SIGNAL \a0|a1|a2|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a1|a2|sNew0~0_combout\ : std_logic;
SIGNAL \a0|a1|a2|a0~q\ : std_logic;
SIGNAL \a0|a1|a0~q\ : std_logic;
SIGNAL \a0|a1|gen00:1:a1~0_combout\ : std_logic;
SIGNAL \a0|a1|gen00:1:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a1|gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a1|gen00:2:a1~0_combout\ : std_logic;
SIGNAL \a0|a1|gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a1|gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a1|gen00:3:a1~0_combout\ : std_logic;
SIGNAL \a0|a1|gen00:3:a1~q\ : std_logic;
SIGNAL \d1|D~0_combout\ : std_logic;
SIGNAL \d1|D~1_combout\ : std_logic;
SIGNAL \d1|D~2_combout\ : std_logic;
SIGNAL \d1|D~3_combout\ : std_logic;
SIGNAL \d1|D~4_combout\ : std_logic;
SIGNAL \d1|D~5_combout\ : std_logic;
SIGNAL \d1|D~6_combout\ : std_logic;
SIGNAL \aa|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aa|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \a0|a1|a2|ALT_INV_sNew0~0_combout\ : std_logic;
SIGNAL \a0|a0|a2|ALT_INV_sNew0~0_combout\ : std_logic;
SIGNAL \a1|a0|a1|a2|ALT_INV_sNew0~0_combout\ : std_logic;
SIGNAL \a1|a0|a0|a2|ALT_INV_sNew0~0_combout\ : std_logic;
SIGNAL \a0|a1|a2|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a0|a2|ALT_INV_a0~q\ : std_logic;
SIGNAL \a1|a0|a1|a2|ALT_INV_a0~q\ : std_logic;
SIGNAL \a1|a0|a0|a2|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a1|ALT_INV_gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a1|ALT_INV_gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a1|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a0|ALT_INV_gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a0|ALT_INV_gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a0|ALT_INV_a0~q\ : std_logic;
SIGNAL \a1|a0|a1|ALT_INV_a0~q\ : std_logic;
SIGNAL \a1|a0|a1|ALT_INV_gen00:1:a1~q\ : std_logic;
SIGNAL \a1|a0|a1|ALT_INV_gen00:2:a1~q\ : std_logic;
SIGNAL \a1|a0|a0|ALT_INV_a0~q\ : std_logic;
SIGNAL \a1|a0|a0|ALT_INV_gen00:1:a1~q\ : std_logic;
SIGNAL \a1|a0|a0|ALT_INV_gen00:2:a1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Dec0 <= ww_Dec0;
Dec1 <= ww_Dec1;
Inc0 <= ww_Inc0;
Inc1 <= ww_Inc1;
ww_clk <= clk;
clock_2hz <= ww_clock_2hz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\aa|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \aa|tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\aa|ALT_INV_tmp~clkctrl_outclk\ <= NOT \aa|tmp~clkctrl_outclk\;
\a0|a1|a2|ALT_INV_sNew0~0_combout\ <= NOT \a0|a1|a2|sNew0~0_combout\;
\a0|a0|a2|ALT_INV_sNew0~0_combout\ <= NOT \a0|a0|a2|sNew0~0_combout\;
\a1|a0|a1|a2|ALT_INV_sNew0~0_combout\ <= NOT \a1|a0|a1|a2|sNew0~0_combout\;
\a1|a0|a0|a2|ALT_INV_sNew0~0_combout\ <= NOT \a1|a0|a0|a2|sNew0~0_combout\;
\a0|a1|a2|ALT_INV_a0~q\ <= NOT \a0|a1|a2|a0~q\;
\a0|a0|a2|ALT_INV_a0~q\ <= NOT \a0|a0|a2|a0~q\;
\a1|a0|a1|a2|ALT_INV_a0~q\ <= NOT \a1|a0|a1|a2|a0~q\;
\a1|a0|a0|a2|ALT_INV_a0~q\ <= NOT \a1|a0|a0|a2|a0~q\;
\a0|a1|ALT_INV_gen00:1:a1~q\ <= NOT \a0|a1|gen00:1:a1~q\;
\a0|a1|ALT_INV_gen00:2:a1~q\ <= NOT \a0|a1|gen00:2:a1~q\;
\a0|a1|ALT_INV_a0~q\ <= NOT \a0|a1|a0~q\;
\a0|a0|ALT_INV_gen00:1:a1~q\ <= NOT \a0|a0|gen00:1:a1~q\;
\a0|a0|ALT_INV_gen00:2:a1~q\ <= NOT \a0|a0|gen00:2:a1~q\;
\a0|a0|ALT_INV_a0~q\ <= NOT \a0|a0|a0~q\;
\a1|a0|a1|ALT_INV_a0~q\ <= NOT \a1|a0|a1|a0~q\;
\a1|a0|a1|ALT_INV_gen00:1:a1~q\ <= NOT \a1|a0|a1|gen00:1:a1~q\;
\a1|a0|a1|ALT_INV_gen00:2:a1~q\ <= NOT \a1|a0|a1|gen00:2:a1~q\;
\a1|a0|a0|ALT_INV_a0~q\ <= NOT \a1|a0|a0|a0~q\;
\a1|a0|a0|ALT_INV_gen00:1:a1~q\ <= NOT \a1|a0|a0|gen00:1:a1~q\;
\a1|a0|a0|ALT_INV_gen00:2:a1~q\ <= NOT \a1|a0|a0|gen00:2:a1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X58_Y54_N16
\Dec0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~0_combout\,
	devoe => ww_devoe,
	o => \Dec0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\Dec0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~1_combout\,
	devoe => ww_devoe,
	o => \Dec0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Dec0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~2_combout\,
	devoe => ww_devoe,
	o => \Dec0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\Dec0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~3_combout\,
	devoe => ww_devoe,
	o => \Dec0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\Dec0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~4_combout\,
	devoe => ww_devoe,
	o => \Dec0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\Dec0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~5_combout\,
	devoe => ww_devoe,
	o => \Dec0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\Dec0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|D~6_combout\,
	devoe => ww_devoe,
	o => \Dec0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\Dec0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\Dec1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~0_combout\,
	devoe => ww_devoe,
	o => \Dec1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\Dec1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~1_combout\,
	devoe => ww_devoe,
	o => \Dec1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\Dec1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~2_combout\,
	devoe => ww_devoe,
	o => \Dec1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Dec1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~3_combout\,
	devoe => ww_devoe,
	o => \Dec1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\Dec1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~4_combout\,
	devoe => ww_devoe,
	o => \Dec1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Dec1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~5_combout\,
	devoe => ww_devoe,
	o => \Dec1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\Dec1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|D~6_combout\,
	devoe => ww_devoe,
	o => \Dec1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\Dec1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dec1[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\Inc0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~0_combout\,
	devoe => ww_devoe,
	o => \Inc0[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\Inc0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~1_combout\,
	devoe => ww_devoe,
	o => \Inc0[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\Inc0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~2_combout\,
	devoe => ww_devoe,
	o => \Inc0[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\Inc0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~3_combout\,
	devoe => ww_devoe,
	o => \Inc0[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\Inc0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~4_combout\,
	devoe => ww_devoe,
	o => \Inc0[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\Inc0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~5_combout\,
	devoe => ww_devoe,
	o => \Inc0[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\Inc0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0|D~6_combout\,
	devoe => ww_devoe,
	o => \Inc0[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\Inc0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Inc0[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\Inc1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~0_combout\,
	devoe => ww_devoe,
	o => \Inc1[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Inc1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~1_combout\,
	devoe => ww_devoe,
	o => \Inc1[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Inc1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~2_combout\,
	devoe => ww_devoe,
	o => \Inc1[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\Inc1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~3_combout\,
	devoe => ww_devoe,
	o => \Inc1[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Inc1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~4_combout\,
	devoe => ww_devoe,
	o => \Inc1[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Inc1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~5_combout\,
	devoe => ww_devoe,
	o => \Inc1[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Inc1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|D~6_combout\,
	devoe => ww_devoe,
	o => \Inc1[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\Inc1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Inc1[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\clock_2hz~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa|tmp~q\,
	devoe => ww_devoe,
	o => \clock_2hz~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y35_N0
\aa|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~0_combout\ = \aa|count\(0) $ (GND)
-- \aa|Add0~1\ = CARRY(!\aa|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(0),
	datad => VCC,
	combout => \aa|Add0~0_combout\,
	cout => \aa|Add0~1\);

-- Location: LCCOMB_X42_Y35_N0
\aa|count[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count[0]~18_combout\ = !\aa|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa|Add0~0_combout\,
	combout => \aa|count[0]~18_combout\);

-- Location: FF_X41_Y35_N23
\aa|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aa|count[0]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(0));

-- Location: LCCOMB_X41_Y35_N2
\aa|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~2_combout\ = (\aa|count\(1) & (!\aa|Add0~1\)) # (!\aa|count\(1) & ((\aa|Add0~1\) # (GND)))
-- \aa|Add0~3\ = CARRY((!\aa|Add0~1\) # (!\aa|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(1),
	datad => VCC,
	cin => \aa|Add0~1\,
	combout => \aa|Add0~2_combout\,
	cout => \aa|Add0~3\);

-- Location: FF_X41_Y35_N3
\aa|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(1));

-- Location: LCCOMB_X41_Y35_N4
\aa|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~4_combout\ = (\aa|count\(2) & (\aa|Add0~3\ $ (GND))) # (!\aa|count\(2) & (!\aa|Add0~3\ & VCC))
-- \aa|Add0~5\ = CARRY((\aa|count\(2) & !\aa|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(2),
	datad => VCC,
	cin => \aa|Add0~3\,
	combout => \aa|Add0~4_combout\,
	cout => \aa|Add0~5\);

-- Location: FF_X41_Y35_N5
\aa|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(2));

-- Location: LCCOMB_X41_Y35_N6
\aa|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~6_combout\ = (\aa|count\(3) & (!\aa|Add0~5\)) # (!\aa|count\(3) & ((\aa|Add0~5\) # (GND)))
-- \aa|Add0~7\ = CARRY((!\aa|Add0~5\) # (!\aa|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(3),
	datad => VCC,
	cin => \aa|Add0~5\,
	combout => \aa|Add0~6_combout\,
	cout => \aa|Add0~7\);

-- Location: FF_X41_Y35_N7
\aa|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(3));

-- Location: LCCOMB_X41_Y35_N8
\aa|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~8_combout\ = (\aa|count\(4) & (\aa|Add0~7\ $ (GND))) # (!\aa|count\(4) & (!\aa|Add0~7\ & VCC))
-- \aa|Add0~9\ = CARRY((\aa|count\(4) & !\aa|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(4),
	datad => VCC,
	cin => \aa|Add0~7\,
	combout => \aa|Add0~8_combout\,
	cout => \aa|Add0~9\);

-- Location: FF_X41_Y35_N9
\aa|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(4));

-- Location: LCCOMB_X41_Y35_N10
\aa|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~10_combout\ = (\aa|count\(5) & (!\aa|Add0~9\)) # (!\aa|count\(5) & ((\aa|Add0~9\) # (GND)))
-- \aa|Add0~11\ = CARRY((!\aa|Add0~9\) # (!\aa|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(5),
	datad => VCC,
	cin => \aa|Add0~9\,
	combout => \aa|Add0~10_combout\,
	cout => \aa|Add0~11\);

-- Location: LCCOMB_X42_Y35_N12
\aa|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~6_combout\ = (\aa|Add0~10_combout\ & ((!\aa|Equal0~9_combout\) # (!\aa|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~4_combout\,
	datac => \aa|Equal0~9_combout\,
	datad => \aa|Add0~10_combout\,
	combout => \aa|count~6_combout\);

-- Location: FF_X41_Y35_N25
\aa|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aa|count~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(5));

-- Location: LCCOMB_X41_Y35_N12
\aa|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~12_combout\ = (\aa|count\(6) & (\aa|Add0~11\ $ (GND))) # (!\aa|count\(6) & (!\aa|Add0~11\ & VCC))
-- \aa|Add0~13\ = CARRY((\aa|count\(6) & !\aa|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(6),
	datad => VCC,
	cin => \aa|Add0~11\,
	combout => \aa|Add0~12_combout\,
	cout => \aa|Add0~13\);

-- Location: FF_X41_Y35_N13
\aa|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(6));

-- Location: LCCOMB_X41_Y35_N14
\aa|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~14_combout\ = (\aa|count\(7) & (!\aa|Add0~13\)) # (!\aa|count\(7) & ((\aa|Add0~13\) # (GND)))
-- \aa|Add0~15\ = CARRY((!\aa|Add0~13\) # (!\aa|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(7),
	datad => VCC,
	cin => \aa|Add0~13\,
	combout => \aa|Add0~14_combout\,
	cout => \aa|Add0~15\);

-- Location: FF_X41_Y35_N15
\aa|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(7));

-- Location: LCCOMB_X41_Y35_N16
\aa|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~16_combout\ = (\aa|count\(8) & (\aa|Add0~15\ $ (GND))) # (!\aa|count\(8) & (!\aa|Add0~15\ & VCC))
-- \aa|Add0~17\ = CARRY((\aa|count\(8) & !\aa|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(8),
	datad => VCC,
	cin => \aa|Add0~15\,
	combout => \aa|Add0~16_combout\,
	cout => \aa|Add0~17\);

-- Location: FF_X41_Y35_N17
\aa|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(8));

-- Location: LCCOMB_X41_Y35_N18
\aa|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~18_combout\ = (\aa|count\(9) & (!\aa|Add0~17\)) # (!\aa|count\(9) & ((\aa|Add0~17\) # (GND)))
-- \aa|Add0~19\ = CARRY((!\aa|Add0~17\) # (!\aa|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(9),
	datad => VCC,
	cin => \aa|Add0~17\,
	combout => \aa|Add0~18_combout\,
	cout => \aa|Add0~19\);

-- Location: FF_X41_Y35_N19
\aa|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(9));

-- Location: LCCOMB_X41_Y35_N20
\aa|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~20_combout\ = (\aa|count\(10) & (\aa|Add0~19\ $ (GND))) # (!\aa|count\(10) & (!\aa|Add0~19\ & VCC))
-- \aa|Add0~21\ = CARRY((\aa|count\(10) & !\aa|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(10),
	datad => VCC,
	cin => \aa|Add0~19\,
	combout => \aa|Add0~20_combout\,
	cout => \aa|Add0~21\);

-- Location: LCCOMB_X42_Y35_N2
\aa|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~7_combout\ = (\aa|Add0~20_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~20_combout\,
	combout => \aa|count~7_combout\);

-- Location: FF_X42_Y35_N3
\aa|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(10));

-- Location: LCCOMB_X41_Y35_N22
\aa|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~22_combout\ = (\aa|count\(11) & (!\aa|Add0~21\)) # (!\aa|count\(11) & ((\aa|Add0~21\) # (GND)))
-- \aa|Add0~23\ = CARRY((!\aa|Add0~21\) # (!\aa|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(11),
	datad => VCC,
	cin => \aa|Add0~21\,
	combout => \aa|Add0~22_combout\,
	cout => \aa|Add0~23\);

-- Location: LCCOMB_X41_Y35_N24
\aa|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~24_combout\ = (\aa|count\(12) & (\aa|Add0~23\ $ (GND))) # (!\aa|count\(12) & (!\aa|Add0~23\ & VCC))
-- \aa|Add0~25\ = CARRY((\aa|count\(12) & !\aa|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(12),
	datad => VCC,
	cin => \aa|Add0~23\,
	combout => \aa|Add0~24_combout\,
	cout => \aa|Add0~25\);

-- Location: LCCOMB_X42_Y35_N22
\aa|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~9_combout\ = (\aa|Add0~24_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Add0~24_combout\,
	datad => \aa|Equal0~4_combout\,
	combout => \aa|count~9_combout\);

-- Location: FF_X42_Y35_N23
\aa|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(12));

-- Location: LCCOMB_X41_Y35_N26
\aa|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~26_combout\ = (\aa|count\(13) & (!\aa|Add0~25\)) # (!\aa|count\(13) & ((\aa|Add0~25\) # (GND)))
-- \aa|Add0~27\ = CARRY((!\aa|Add0~25\) # (!\aa|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(13),
	datad => VCC,
	cin => \aa|Add0~25\,
	combout => \aa|Add0~26_combout\,
	cout => \aa|Add0~27\);

-- Location: LCCOMB_X42_Y35_N24
\aa|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~10_combout\ = (\aa|Add0~26_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Add0~26_combout\,
	datad => \aa|Equal0~4_combout\,
	combout => \aa|count~10_combout\);

-- Location: FF_X42_Y35_N25
\aa|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(13));

-- Location: LCCOMB_X41_Y35_N28
\aa|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~28_combout\ = (\aa|count\(14) & (\aa|Add0~27\ $ (GND))) # (!\aa|count\(14) & (!\aa|Add0~27\ & VCC))
-- \aa|Add0~29\ = CARRY((\aa|count\(14) & !\aa|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(14),
	datad => VCC,
	cin => \aa|Add0~27\,
	combout => \aa|Add0~28_combout\,
	cout => \aa|Add0~29\);

-- Location: FF_X41_Y35_N29
\aa|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(14));

-- Location: LCCOMB_X41_Y35_N30
\aa|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~30_combout\ = (\aa|count\(15) & (!\aa|Add0~29\)) # (!\aa|count\(15) & ((\aa|Add0~29\) # (GND)))
-- \aa|Add0~31\ = CARRY((!\aa|Add0~29\) # (!\aa|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(15),
	datad => VCC,
	cin => \aa|Add0~29\,
	combout => \aa|Add0~30_combout\,
	cout => \aa|Add0~31\);

-- Location: LCCOMB_X42_Y35_N30
\aa|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~11_combout\ = (\aa|Add0~30_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~30_combout\,
	combout => \aa|count~11_combout\);

-- Location: FF_X42_Y35_N31
\aa|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(15));

-- Location: LCCOMB_X41_Y34_N0
\aa|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~32_combout\ = (\aa|count\(16) & (\aa|Add0~31\ $ (GND))) # (!\aa|count\(16) & (!\aa|Add0~31\ & VCC))
-- \aa|Add0~33\ = CARRY((\aa|count\(16) & !\aa|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(16),
	datad => VCC,
	cin => \aa|Add0~31\,
	combout => \aa|Add0~32_combout\,
	cout => \aa|Add0~33\);

-- Location: FF_X41_Y34_N1
\aa|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(16));

-- Location: LCCOMB_X41_Y34_N2
\aa|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~34_combout\ = (\aa|count\(17) & (!\aa|Add0~33\)) # (!\aa|count\(17) & ((\aa|Add0~33\) # (GND)))
-- \aa|Add0~35\ = CARRY((!\aa|Add0~33\) # (!\aa|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(17),
	datad => VCC,
	cin => \aa|Add0~33\,
	combout => \aa|Add0~34_combout\,
	cout => \aa|Add0~35\);

-- Location: LCCOMB_X42_Y34_N4
\aa|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~12_combout\ = (\aa|Add0~34_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~34_combout\,
	combout => \aa|count~12_combout\);

-- Location: FF_X42_Y34_N5
\aa|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(17));

-- Location: LCCOMB_X41_Y34_N4
\aa|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~36_combout\ = (\aa|count\(18) & (\aa|Add0~35\ $ (GND))) # (!\aa|count\(18) & (!\aa|Add0~35\ & VCC))
-- \aa|Add0~37\ = CARRY((\aa|count\(18) & !\aa|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(18),
	datad => VCC,
	cin => \aa|Add0~35\,
	combout => \aa|Add0~36_combout\,
	cout => \aa|Add0~37\);

-- Location: LCCOMB_X42_Y34_N2
\aa|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~13_combout\ = (\aa|Add0~36_combout\ & ((!\aa|Equal0~9_combout\) # (!\aa|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~4_combout\,
	datac => \aa|Add0~36_combout\,
	datad => \aa|Equal0~9_combout\,
	combout => \aa|count~13_combout\);

-- Location: FF_X42_Y34_N3
\aa|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(18));

-- Location: LCCOMB_X41_Y34_N6
\aa|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~38_combout\ = (\aa|count\(19) & (!\aa|Add0~37\)) # (!\aa|count\(19) & ((\aa|Add0~37\) # (GND)))
-- \aa|Add0~39\ = CARRY((!\aa|Add0~37\) # (!\aa|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(19),
	datad => VCC,
	cin => \aa|Add0~37\,
	combout => \aa|Add0~38_combout\,
	cout => \aa|Add0~39\);

-- Location: LCCOMB_X42_Y34_N28
\aa|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~14_combout\ = (\aa|Add0~38_combout\ & ((!\aa|Equal0~9_combout\) # (!\aa|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~4_combout\,
	datac => \aa|Add0~38_combout\,
	datad => \aa|Equal0~9_combout\,
	combout => \aa|count~14_combout\);

-- Location: FF_X42_Y34_N29
\aa|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(19));

-- Location: LCCOMB_X42_Y34_N30
\aa|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~5_combout\ = (!\aa|count\(16) & (\aa|count\(19) & (\aa|count\(17) & \aa|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(16),
	datab => \aa|count\(19),
	datac => \aa|count\(17),
	datad => \aa|count\(18),
	combout => \aa|Equal0~5_combout\);

-- Location: LCCOMB_X41_Y34_N8
\aa|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~40_combout\ = (\aa|count\(20) & (\aa|Add0~39\ $ (GND))) # (!\aa|count\(20) & (!\aa|Add0~39\ & VCC))
-- \aa|Add0~41\ = CARRY((\aa|count\(20) & !\aa|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(20),
	datad => VCC,
	cin => \aa|Add0~39\,
	combout => \aa|Add0~40_combout\,
	cout => \aa|Add0~41\);

-- Location: LCCOMB_X42_Y34_N20
\aa|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~15_combout\ = (\aa|Add0~40_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~40_combout\,
	combout => \aa|count~15_combout\);

-- Location: FF_X42_Y34_N21
\aa|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(20));

-- Location: LCCOMB_X41_Y34_N10
\aa|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~42_combout\ = (\aa|count\(21) & (!\aa|Add0~41\)) # (!\aa|count\(21) & ((\aa|Add0~41\) # (GND)))
-- \aa|Add0~43\ = CARRY((!\aa|Add0~41\) # (!\aa|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(21),
	datad => VCC,
	cin => \aa|Add0~41\,
	combout => \aa|Add0~42_combout\,
	cout => \aa|Add0~43\);

-- Location: LCCOMB_X42_Y34_N26
\aa|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~16_combout\ = (\aa|Add0~42_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~42_combout\,
	combout => \aa|count~16_combout\);

-- Location: FF_X42_Y34_N27
\aa|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(21));

-- Location: LCCOMB_X41_Y34_N12
\aa|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~44_combout\ = (\aa|count\(22) & (\aa|Add0~43\ $ (GND))) # (!\aa|count\(22) & (!\aa|Add0~43\ & VCC))
-- \aa|Add0~45\ = CARRY((\aa|count\(22) & !\aa|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(22),
	datad => VCC,
	cin => \aa|Add0~43\,
	combout => \aa|Add0~44_combout\,
	cout => \aa|Add0~45\);

-- Location: FF_X41_Y34_N13
\aa|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(22));

-- Location: LCCOMB_X41_Y34_N14
\aa|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~46_combout\ = (\aa|count\(23) & (!\aa|Add0~45\)) # (!\aa|count\(23) & ((\aa|Add0~45\) # (GND)))
-- \aa|Add0~47\ = CARRY((!\aa|Add0~45\) # (!\aa|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(23),
	datad => VCC,
	cin => \aa|Add0~45\,
	combout => \aa|Add0~46_combout\,
	cout => \aa|Add0~47\);

-- Location: LCCOMB_X42_Y34_N12
\aa|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~17_combout\ = (\aa|Add0~46_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~46_combout\,
	combout => \aa|count~17_combout\);

-- Location: FF_X42_Y34_N13
\aa|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(23));

-- Location: LCCOMB_X42_Y34_N14
\aa|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~6_combout\ = (\aa|count\(23) & (\aa|count\(20) & (\aa|count\(21) & !\aa|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(23),
	datab => \aa|count\(20),
	datac => \aa|count\(21),
	datad => \aa|count\(22),
	combout => \aa|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y34_N16
\aa|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~48_combout\ = (\aa|count\(24) & (\aa|Add0~47\ $ (GND))) # (!\aa|count\(24) & (!\aa|Add0~47\ & VCC))
-- \aa|Add0~49\ = CARRY((\aa|count\(24) & !\aa|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(24),
	datad => VCC,
	cin => \aa|Add0~47\,
	combout => \aa|Add0~48_combout\,
	cout => \aa|Add0~49\);

-- Location: FF_X41_Y34_N17
\aa|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(24));

-- Location: LCCOMB_X41_Y34_N18
\aa|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~50_combout\ = (\aa|count\(25) & (!\aa|Add0~49\)) # (!\aa|count\(25) & ((\aa|Add0~49\) # (GND)))
-- \aa|Add0~51\ = CARRY((!\aa|Add0~49\) # (!\aa|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(25),
	datad => VCC,
	cin => \aa|Add0~49\,
	combout => \aa|Add0~50_combout\,
	cout => \aa|Add0~51\);

-- Location: FF_X41_Y34_N19
\aa|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(25));

-- Location: LCCOMB_X41_Y34_N20
\aa|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~52_combout\ = (\aa|count\(26) & (\aa|Add0~51\ $ (GND))) # (!\aa|count\(26) & (!\aa|Add0~51\ & VCC))
-- \aa|Add0~53\ = CARRY((\aa|count\(26) & !\aa|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(26),
	datad => VCC,
	cin => \aa|Add0~51\,
	combout => \aa|Add0~52_combout\,
	cout => \aa|Add0~53\);

-- Location: FF_X41_Y34_N21
\aa|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(26));

-- Location: LCCOMB_X41_Y34_N22
\aa|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~54_combout\ = (\aa|count\(27) & (!\aa|Add0~53\)) # (!\aa|count\(27) & ((\aa|Add0~53\) # (GND)))
-- \aa|Add0~55\ = CARRY((!\aa|Add0~53\) # (!\aa|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(27),
	datad => VCC,
	cin => \aa|Add0~53\,
	combout => \aa|Add0~54_combout\,
	cout => \aa|Add0~55\);

-- Location: FF_X41_Y34_N23
\aa|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(27));

-- Location: LCCOMB_X42_Y34_N8
\aa|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~7_combout\ = (!\aa|count\(24) & (!\aa|count\(25) & (!\aa|count\(27) & !\aa|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(24),
	datab => \aa|count\(25),
	datac => \aa|count\(27),
	datad => \aa|count\(26),
	combout => \aa|Equal0~7_combout\);

-- Location: LCCOMB_X41_Y34_N24
\aa|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~56_combout\ = (\aa|count\(28) & (\aa|Add0~55\ $ (GND))) # (!\aa|count\(28) & (!\aa|Add0~55\ & VCC))
-- \aa|Add0~57\ = CARRY((\aa|count\(28) & !\aa|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(28),
	datad => VCC,
	cin => \aa|Add0~55\,
	combout => \aa|Add0~56_combout\,
	cout => \aa|Add0~57\);

-- Location: FF_X41_Y34_N25
\aa|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(28));

-- Location: LCCOMB_X41_Y34_N26
\aa|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~58_combout\ = (\aa|count\(29) & (!\aa|Add0~57\)) # (!\aa|count\(29) & ((\aa|Add0~57\) # (GND)))
-- \aa|Add0~59\ = CARRY((!\aa|Add0~57\) # (!\aa|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(29),
	datad => VCC,
	cin => \aa|Add0~57\,
	combout => \aa|Add0~58_combout\,
	cout => \aa|Add0~59\);

-- Location: FF_X41_Y34_N27
\aa|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(29));

-- Location: LCCOMB_X41_Y34_N28
\aa|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~60_combout\ = (\aa|count\(30) & (\aa|Add0~59\ $ (GND))) # (!\aa|count\(30) & (!\aa|Add0~59\ & VCC))
-- \aa|Add0~61\ = CARRY((\aa|count\(30) & !\aa|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa|count\(30),
	datad => VCC,
	cin => \aa|Add0~59\,
	combout => \aa|Add0~60_combout\,
	cout => \aa|Add0~61\);

-- Location: FF_X41_Y34_N29
\aa|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(30));

-- Location: LCCOMB_X41_Y34_N30
\aa|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Add0~62_combout\ = \aa|count\(31) $ (\aa|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(31),
	cin => \aa|Add0~61\,
	combout => \aa|Add0~62_combout\);

-- Location: FF_X41_Y34_N31
\aa|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(31));

-- Location: LCCOMB_X42_Y34_N10
\aa|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~8_combout\ = (!\aa|count\(29) & (!\aa|count\(28) & (!\aa|count\(31) & !\aa|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(29),
	datab => \aa|count\(28),
	datac => \aa|count\(31),
	datad => \aa|count\(30),
	combout => \aa|Equal0~8_combout\);

-- Location: LCCOMB_X42_Y34_N0
\aa|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~9_combout\ = (\aa|Equal0~5_combout\ & (\aa|Equal0~6_combout\ & (\aa|Equal0~7_combout\ & \aa|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|Equal0~5_combout\,
	datab => \aa|Equal0~6_combout\,
	datac => \aa|Equal0~7_combout\,
	datad => \aa|Equal0~8_combout\,
	combout => \aa|Equal0~9_combout\);

-- Location: LCCOMB_X42_Y35_N26
\aa|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|count~8_combout\ = (\aa|Add0~22_combout\ & ((!\aa|Equal0~4_combout\) # (!\aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~9_combout\,
	datac => \aa|Equal0~4_combout\,
	datad => \aa|Add0~22_combout\,
	combout => \aa|count~8_combout\);

-- Location: FF_X42_Y35_N27
\aa|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|count\(11));

-- Location: LCCOMB_X42_Y35_N10
\aa|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~2_combout\ = (\aa|count\(11) & (!\aa|count\(9) & (\aa|count\(10) & \aa|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(11),
	datab => \aa|count\(9),
	datac => \aa|count\(10),
	datad => \aa|count\(0),
	combout => \aa|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y35_N28
\aa|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~3_combout\ = (\aa|count\(15) & (\aa|count\(13) & (\aa|count\(12) & !\aa|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(15),
	datab => \aa|count\(13),
	datac => \aa|count\(12),
	datad => \aa|count\(14),
	combout => \aa|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y35_N8
\aa|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~1_combout\ = (!\aa|count\(1) & (!\aa|count\(2) & (!\aa|count\(4) & !\aa|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(1),
	datab => \aa|count\(2),
	datac => \aa|count\(4),
	datad => \aa|count\(3),
	combout => \aa|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y35_N16
\aa|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~0_combout\ = (!\aa|count\(7) & (\aa|count\(5) & (!\aa|count\(8) & !\aa|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|count\(7),
	datab => \aa|count\(5),
	datac => \aa|count\(8),
	datad => \aa|count\(6),
	combout => \aa|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y35_N18
\aa|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|Equal0~4_combout\ = (\aa|Equal0~2_combout\ & (\aa|Equal0~3_combout\ & (\aa|Equal0~1_combout\ & \aa|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa|Equal0~2_combout\,
	datab => \aa|Equal0~3_combout\,
	datac => \aa|Equal0~1_combout\,
	datad => \aa|Equal0~0_combout\,
	combout => \aa|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y35_N4
\aa|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|tmp~0_combout\ = \aa|tmp~q\ $ (((\aa|Equal0~4_combout\ & \aa|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|Equal0~4_combout\,
	datac => \aa|tmp~q\,
	datad => \aa|Equal0~9_combout\,
	combout => \aa|tmp~0_combout\);

-- Location: LCCOMB_X42_Y35_N14
\aa|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa|tmp~feeder_combout\ = \aa|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa|tmp~0_combout\,
	combout => \aa|tmp~feeder_combout\);

-- Location: FF_X42_Y35_N15
\aa|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa|tmp~q\);

-- Location: CLKCTRL_G13
\aa|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aa|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aa|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X71_Y51_N28
\a1|a0|a0|a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|a0~0_combout\ = !\a1|a0|a0|a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a1|a0|a0|a0~q\,
	combout => \a1|a0|a0|a0~0_combout\);

-- Location: LCCOMB_X71_Y51_N22
\a1|a0|a0|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|a0~feeder_combout\ = \a1|a0|a0|a0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|a0|a0~0_combout\,
	combout => \a1|a0|a0|a0~feeder_combout\);

-- Location: LCCOMB_X70_Y51_N26
\a1|a0|a0|a2|sDec10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|a2|sDec10~combout\ = LCELL((\a1|a0|a0|gen00:3:a1~q\ & (!\a1|a0|a0|gen00:2:a1~q\ & (\a1|a0|a0|gen00:1:a1~q\ & !\a1|a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|gen00:2:a1~q\,
	datac => \a1|a0|a0|gen00:1:a1~q\,
	datad => \a1|a0|a0|a0~q\,
	combout => \a1|a0|a0|a2|sDec10~combout\);

-- Location: LCCOMB_X70_Y51_N24
\a1|a0|a0|a2|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a1|a0|a0|a2|a0~feeder_combout\);

-- Location: LCCOMB_X70_Y51_N28
\a1|a0|a0|a2|sNew0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|a2|sNew0~0_combout\ = (!\a1|a0|a0|gen00:1:a1~q\ & (!\a1|a0|a0|gen00:2:a1~q\ & (!\a1|a0|a0|a0~q\ & !\a1|a0|a0|gen00:3:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:1:a1~q\,
	datab => \a1|a0|a0|gen00:2:a1~q\,
	datac => \a1|a0|a0|a0~q\,
	datad => \a1|a0|a0|gen00:3:a1~q\,
	combout => \a1|a0|a0|a2|sNew0~0_combout\);

-- Location: FF_X70_Y51_N25
\a1|a0|a0|a2|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a0|a2|sDec10~combout\,
	d => \a1|a0|a0|a2|a0~feeder_combout\,
	clrn => \a1|a0|a0|a2|ALT_INV_sNew0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a0|a2|a0~q\);

-- Location: FF_X71_Y51_N23
\a1|a0|a0|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa|ALT_INV_tmp~clkctrl_outclk\,
	d => \a1|a0|a0|a0~feeder_combout\,
	clrn => \a1|a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a0|a0~q\);

-- Location: LCCOMB_X70_Y51_N14
\a1|a0|a0|gen00:1:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|gen00:1:a1~0_combout\ = !\a1|a0|a0|gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a0|gen00:1:a1~q\,
	combout => \a1|a0|a0|gen00:1:a1~0_combout\);

-- Location: LCCOMB_X70_Y51_N8
\a1|a0|a0|gen00:1:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|gen00:1:a1~feeder_combout\ = \a1|a0|a0|gen00:1:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a0|gen00:1:a1~0_combout\,
	combout => \a1|a0|a0|gen00:1:a1~feeder_combout\);

-- Location: FF_X70_Y51_N9
\a1|a0|a0|gen00:1:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a0|ALT_INV_a0~q\,
	d => \a1|a0|a0|gen00:1:a1~feeder_combout\,
	clrn => \a1|a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a0|gen00:1:a1~q\);

-- Location: LCCOMB_X69_Y51_N20
\a1|a0|a0|gen00:2:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|gen00:2:a1~0_combout\ = !\a1|a0|a0|gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a0|gen00:2:a1~q\,
	combout => \a1|a0|a0|gen00:2:a1~0_combout\);

-- Location: LCCOMB_X69_Y51_N6
\a1|a0|a0|gen00:2:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|gen00:2:a1~feeder_combout\ = \a1|a0|a0|gen00:2:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a0|gen00:2:a1~0_combout\,
	combout => \a1|a0|a0|gen00:2:a1~feeder_combout\);

-- Location: FF_X69_Y51_N7
\a1|a0|a0|gen00:2:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a0|ALT_INV_gen00:1:a1~q\,
	d => \a1|a0|a0|gen00:2:a1~feeder_combout\,
	clrn => \a1|a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a0|gen00:2:a1~q\);

-- Location: LCCOMB_X69_Y51_N14
\a1|a0|a0|gen00:3:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a0|gen00:3:a1~0_combout\ = !\a1|a0|a0|gen00:3:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a0|gen00:3:a1~q\,
	combout => \a1|a0|a0|gen00:3:a1~0_combout\);

-- Location: FF_X69_Y51_N15
\a1|a0|a0|gen00:3:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a0|ALT_INV_gen00:2:a1~q\,
	d => \a1|a0|a0|gen00:3:a1~0_combout\,
	clrn => \a1|a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a0|gen00:3:a1~q\);

-- Location: LCCOMB_X70_Y51_N30
\d2|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~0_combout\ = (\a1|a0|a0|gen00:3:a1~q\ & (!\a1|a0|a0|a0~q\ & ((\a1|a0|a0|gen00:2:a1~q\) # (!\a1|a0|a0|gen00:1:a1~q\)))) # (!\a1|a0|a0|gen00:3:a1~q\ & (\a1|a0|a0|a0~q\ & (\a1|a0|a0|gen00:2:a1~q\ & !\a1|a0|a0|gen00:1:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~0_combout\);

-- Location: LCCOMB_X70_Y51_N6
\d2|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~1_combout\ = (\a1|a0|a0|gen00:1:a1~q\ & ((\a1|a0|a0|a0~q\ & ((!\a1|a0|a0|gen00:2:a1~q\))) # (!\a1|a0|a0|a0~q\ & (\a1|a0|a0|gen00:3:a1~q\)))) # (!\a1|a0|a0|gen00:1:a1~q\ & (\a1|a0|a0|gen00:2:a1~q\ & (\a1|a0|a0|gen00:3:a1~q\ $ (!\a1|a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~1_combout\);

-- Location: LCCOMB_X70_Y51_N16
\d2|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~2_combout\ = (\a1|a0|a0|gen00:2:a1~q\ & (\a1|a0|a0|a0~q\ & (\a1|a0|a0|gen00:3:a1~q\ $ (\a1|a0|a0|gen00:1:a1~q\)))) # (!\a1|a0|a0|gen00:2:a1~q\ & (\a1|a0|a0|gen00:3:a1~q\ & ((\a1|a0|a0|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~2_combout\);

-- Location: LCCOMB_X70_Y51_N18
\d2|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~3_combout\ = (\a1|a0|a0|a0~q\ & (\a1|a0|a0|gen00:2:a1~q\ & (\a1|a0|a0|gen00:3:a1~q\ $ (!\a1|a0|a0|gen00:1:a1~q\)))) # (!\a1|a0|a0|a0~q\ & (!\a1|a0|a0|gen00:2:a1~q\ & ((\a1|a0|a0|gen00:3:a1~q\) # (\a1|a0|a0|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~3_combout\);

-- Location: LCCOMB_X70_Y51_N20
\d2|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~4_combout\ = (\a1|a0|a0|gen00:1:a1~q\ & (!\a1|a0|a0|gen00:3:a1~q\ & (!\a1|a0|a0|a0~q\))) # (!\a1|a0|a0|gen00:1:a1~q\ & ((\a1|a0|a0|gen00:2:a1~q\ & (!\a1|a0|a0|gen00:3:a1~q\)) # (!\a1|a0|a0|gen00:2:a1~q\ & ((!\a1|a0|a0|a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~4_combout\);

-- Location: LCCOMB_X70_Y51_N12
\d2|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~5_combout\ = (\a1|a0|a0|gen00:3:a1~q\ & (!\a1|a0|a0|a0~q\ & ((!\a1|a0|a0|gen00:1:a1~q\)))) # (!\a1|a0|a0|gen00:3:a1~q\ & (\a1|a0|a0|gen00:1:a1~q\ & ((\a1|a0|a0|gen00:2:a1~q\) # (!\a1|a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~5_combout\);

-- Location: LCCOMB_X70_Y51_N22
\d2|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d2|D~6_combout\ = (\a1|a0|a0|a0~q\ & (\a1|a0|a0|gen00:3:a1~q\ & ((!\a1|a0|a0|gen00:1:a1~q\)))) # (!\a1|a0|a0|a0~q\ & (!\a1|a0|a0|gen00:2:a1~q\ & (\a1|a0|a0|gen00:3:a1~q\ $ (\a1|a0|a0|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a0|gen00:3:a1~q\,
	datab => \a1|a0|a0|a0~q\,
	datac => \a1|a0|a0|gen00:2:a1~q\,
	datad => \a1|a0|a0|gen00:1:a1~q\,
	combout => \d2|D~6_combout\);

-- Location: LCCOMB_X70_Y52_N30
\a1|a0|a1|a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|a0~0_combout\ = !\a1|a0|a1|a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a1|a0~q\,
	combout => \a1|a0|a1|a0~0_combout\);

-- Location: LCCOMB_X70_Y52_N6
\a1|a0|a1|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|a0~feeder_combout\ = \a1|a0|a1|a0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a1|a0|a1|a0~0_combout\,
	combout => \a1|a0|a1|a0~feeder_combout\);

-- Location: LCCOMB_X72_Y52_N22
\a1|a0|a1|gen00:1:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|gen00:1:a1~0_combout\ = !\a1|a0|a1|gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|a1|gen00:1:a1~q\,
	combout => \a1|a0|a1|gen00:1:a1~0_combout\);

-- Location: LCCOMB_X72_Y52_N30
\a1|a0|a1|gen00:1:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|gen00:1:a1~feeder_combout\ = \a1|a0|a1|gen00:1:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|a1|gen00:1:a1~0_combout\,
	combout => \a1|a0|a1|gen00:1:a1~feeder_combout\);

-- Location: FF_X72_Y52_N31
\a1|a0|a1|gen00:1:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a1|ALT_INV_a0~q\,
	d => \a1|a0|a1|gen00:1:a1~feeder_combout\,
	clrn => \a1|a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a1|gen00:1:a1~q\);

-- Location: LCCOMB_X71_Y52_N18
\a1|a0|a1|gen00:2:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|gen00:2:a1~0_combout\ = !\a1|a0|a1|gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a1|gen00:2:a1~q\,
	combout => \a1|a0|a1|gen00:2:a1~0_combout\);

-- Location: LCCOMB_X71_Y52_N12
\a1|a0|a1|gen00:2:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|gen00:2:a1~feeder_combout\ = \a1|a0|a1|gen00:2:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a1|gen00:2:a1~0_combout\,
	combout => \a1|a0|a1|gen00:2:a1~feeder_combout\);

-- Location: FF_X71_Y52_N13
\a1|a0|a1|gen00:2:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a1|ALT_INV_gen00:1:a1~q\,
	d => \a1|a0|a1|gen00:2:a1~feeder_combout\,
	clrn => \a1|a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a1|gen00:2:a1~q\);

-- Location: LCCOMB_X72_Y52_N4
\a1|a0|a1|gen00:3:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|gen00:3:a1~0_combout\ = !\a1|a0|a1|gen00:3:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|a1|gen00:3:a1~q\,
	combout => \a1|a0|a1|gen00:3:a1~0_combout\);

-- Location: FF_X72_Y52_N5
\a1|a0|a1|gen00:3:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a1|ALT_INV_gen00:2:a1~q\,
	d => \a1|a0|a1|gen00:3:a1~0_combout\,
	clrn => \a1|a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a1|gen00:3:a1~q\);

-- Location: LCCOMB_X71_Y52_N28
\a1|a0|a1|a2|sDec10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|a2|sDec10~combout\ = LCELL((\a1|a0|a1|gen00:3:a1~q\ & (!\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:2:a1~q\ & \a1|a0|a1|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|gen00:3:a1~q\,
	datab => \a1|a0|a1|a0~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \a1|a0|a1|a2|sDec10~combout\);

-- Location: LCCOMB_X71_Y52_N8
\a1|a0|a1|a2|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a1|a0|a1|a2|a0~feeder_combout\);

-- Location: LCCOMB_X71_Y52_N22
\a1|a0|a1|a2|sNew0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a1|a0|a1|a2|sNew0~0_combout\ = (!\a1|a0|a1|gen00:2:a1~q\ & (!\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:1:a1~q\ & !\a1|a0|a1|gen00:3:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|gen00:2:a1~q\,
	datab => \a1|a0|a1|a0~q\,
	datac => \a1|a0|a1|gen00:1:a1~q\,
	datad => \a1|a0|a1|gen00:3:a1~q\,
	combout => \a1|a0|a1|a2|sNew0~0_combout\);

-- Location: FF_X71_Y52_N9
\a1|a0|a1|a2|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a1|a2|sDec10~combout\,
	d => \a1|a0|a1|a2|a0~feeder_combout\,
	clrn => \a1|a0|a1|a2|ALT_INV_sNew0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a1|a2|a0~q\);

-- Location: FF_X70_Y52_N7
\a1|a0|a1|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a1|a0|a0|a2|a0~q\,
	d => \a1|a0|a1|a0~feeder_combout\,
	clrn => \a1|a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a1|a0|a1|a0~q\);

-- Location: LCCOMB_X71_Y52_N30
\d3|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~0_combout\ = (\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:3:a1~q\ & (\a1|a0|a1|gen00:2:a1~q\ & !\a1|a0|a1|gen00:1:a1~q\))) # (!\a1|a0|a1|a0~q\ & (\a1|a0|a1|gen00:3:a1~q\ & ((\a1|a0|a1|gen00:2:a1~q\) # (!\a1|a0|a1|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|a0~q\,
	datab => \a1|a0|a1|gen00:3:a1~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \d3|D~0_combout\);

-- Location: LCCOMB_X71_Y52_N24
\d3|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~1_combout\ = (\a1|a0|a1|gen00:1:a1~q\ & ((\a1|a0|a1|a0~q\ & ((!\a1|a0|a1|gen00:2:a1~q\))) # (!\a1|a0|a1|a0~q\ & (\a1|a0|a1|gen00:3:a1~q\)))) # (!\a1|a0|a1|gen00:1:a1~q\ & (\a1|a0|a1|gen00:2:a1~q\ & (\a1|a0|a1|a0~q\ $ (!\a1|a0|a1|gen00:3:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|a0~q\,
	datab => \a1|a0|a1|gen00:3:a1~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \d3|D~1_combout\);

-- Location: LCCOMB_X72_Y52_N12
\d3|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~2_combout\ = (\a1|a0|a1|gen00:2:a1~q\ & (\a1|a0|a1|a0~q\ & (\a1|a0|a1|gen00:1:a1~q\ $ (\a1|a0|a1|gen00:3:a1~q\)))) # (!\a1|a0|a1|gen00:2:a1~q\ & (\a1|a0|a1|gen00:1:a1~q\ & ((\a1|a0|a1|gen00:3:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|gen00:1:a1~q\,
	datab => \a1|a0|a1|a0~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:3:a1~q\,
	combout => \d3|D~2_combout\);

-- Location: LCCOMB_X71_Y52_N20
\d3|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~3_combout\ = (\a1|a0|a1|a0~q\ & (\a1|a0|a1|gen00:2:a1~q\ & (\a1|a0|a1|gen00:3:a1~q\ $ (!\a1|a0|a1|gen00:1:a1~q\)))) # (!\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:2:a1~q\ & ((\a1|a0|a1|gen00:3:a1~q\) # (\a1|a0|a1|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|a0~q\,
	datab => \a1|a0|a1|gen00:3:a1~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \d3|D~3_combout\);

-- Location: LCCOMB_X71_Y52_N26
\d3|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~4_combout\ = (\a1|a0|a1|gen00:1:a1~q\ & (!\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:3:a1~q\))) # (!\a1|a0|a1|gen00:1:a1~q\ & ((\a1|a0|a1|gen00:2:a1~q\ & ((!\a1|a0|a1|gen00:3:a1~q\))) # (!\a1|a0|a1|gen00:2:a1~q\ & (!\a1|a0|a1|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|a0~q\,
	datab => \a1|a0|a1|gen00:3:a1~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \d3|D~4_combout\);

-- Location: LCCOMB_X71_Y52_N16
\d3|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~5_combout\ = (\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:3:a1~q\ & (\a1|a0|a1|gen00:2:a1~q\ & \a1|a0|a1|gen00:1:a1~q\))) # (!\a1|a0|a1|a0~q\ & (\a1|a0|a1|gen00:3:a1~q\ $ (((\a1|a0|a1|gen00:1:a1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|a0~q\,
	datab => \a1|a0|a1|gen00:3:a1~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \d3|D~5_combout\);

-- Location: LCCOMB_X71_Y52_N14
\d3|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d3|D~6_combout\ = (\a1|a0|a1|a0~q\ & (\a1|a0|a1|gen00:3:a1~q\ & ((!\a1|a0|a1|gen00:1:a1~q\)))) # (!\a1|a0|a1|a0~q\ & (!\a1|a0|a1|gen00:2:a1~q\ & (\a1|a0|a1|gen00:3:a1~q\ $ (\a1|a0|a1|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|a1|a0~q\,
	datab => \a1|a0|a1|gen00:3:a1~q\,
	datac => \a1|a0|a1|gen00:2:a1~q\,
	datad => \a1|a0|a1|gen00:1:a1~q\,
	combout => \d3|D~6_combout\);

-- Location: LCCOMB_X77_Y40_N0
\a0|a0|a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|a0~0_combout\ = !\a0|a0|a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|a0~q\,
	combout => \a0|a0|a0~0_combout\);

-- Location: LCCOMB_X77_Y40_N24
\a0|a0|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|a0~feeder_combout\ = \a0|a0|a0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|a0~0_combout\,
	combout => \a0|a0|a0~feeder_combout\);

-- Location: LCCOMB_X76_Y40_N24
\a0|a0|a2|sDec10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|a2|sDec10~combout\ = LCELL((!\a0|a0|gen00:2:a1~q\ & (\a0|a0|gen00:3:a1~q\ & (\a0|a0|gen00:1:a1~q\ & !\a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:2:a1~q\,
	datab => \a0|a0|gen00:3:a1~q\,
	datac => \a0|a0|gen00:1:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \a0|a0|a2|sDec10~combout\);

-- Location: LCCOMB_X76_Y40_N30
\a0|a0|a2|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a0|a0|a2|a0~feeder_combout\);

-- Location: LCCOMB_X76_Y40_N10
\a0|a0|a2|sNew0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|a2|sNew0~0_combout\ = (!\a0|a0|a0~q\ & (!\a0|a0|gen00:1:a1~q\ & (!\a0|a0|gen00:2:a1~q\ & !\a0|a0|gen00:3:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|a0~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|gen00:3:a1~q\,
	combout => \a0|a0|a2|sNew0~0_combout\);

-- Location: FF_X76_Y40_N31
\a0|a0|a2|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|a2|sDec10~combout\,
	d => \a0|a0|a2|a0~feeder_combout\,
	clrn => \a0|a0|a2|ALT_INV_sNew0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|a2|a0~q\);

-- Location: FF_X77_Y40_N25
\a0|a0|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa|ALT_INV_tmp~clkctrl_outclk\,
	d => \a0|a0|a0~feeder_combout\,
	clrn => \a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|a0~q\);

-- Location: LCCOMB_X77_Y40_N20
\a0|a0|gen00:1:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:1:a1~0_combout\ = !\a0|a0|gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|a0|gen00:1:a1~q\,
	combout => \a0|a0|gen00:1:a1~0_combout\);

-- Location: LCCOMB_X77_Y40_N8
\a0|a0|gen00:1:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:1:a1~feeder_combout\ = \a0|a0|gen00:1:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:1:a1~0_combout\,
	combout => \a0|a0|gen00:1:a1~feeder_combout\);

-- Location: FF_X77_Y40_N9
\a0|a0|gen00:1:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|ALT_INV_a0~q\,
	d => \a0|a0|gen00:1:a1~feeder_combout\,
	clrn => \a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|gen00:1:a1~q\);

-- Location: LCCOMB_X75_Y40_N18
\a0|a0|gen00:2:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:2:a1~0_combout\ = !\a0|a0|gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a0|gen00:2:a1~q\,
	combout => \a0|a0|gen00:2:a1~0_combout\);

-- Location: LCCOMB_X75_Y40_N6
\a0|a0|gen00:2:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:2:a1~feeder_combout\ = \a0|a0|gen00:2:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a0|gen00:2:a1~0_combout\,
	combout => \a0|a0|gen00:2:a1~feeder_combout\);

-- Location: FF_X75_Y40_N7
\a0|a0|gen00:2:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|ALT_INV_gen00:1:a1~q\,
	d => \a0|a0|gen00:2:a1~feeder_combout\,
	clrn => \a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|gen00:2:a1~q\);

-- Location: LCCOMB_X76_Y40_N28
\a0|a0|gen00:3:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:3:a1~0_combout\ = !\a0|a0|gen00:3:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a0|gen00:3:a1~q\,
	combout => \a0|a0|gen00:3:a1~0_combout\);

-- Location: FF_X76_Y40_N29
\a0|a0|gen00:3:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|ALT_INV_gen00:2:a1~q\,
	d => \a0|a0|gen00:3:a1~0_combout\,
	clrn => \a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|gen00:3:a1~q\);

-- Location: LCCOMB_X76_Y40_N26
\d0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~0_combout\ = (\a0|a0|gen00:3:a1~q\ & (\a0|a0|a0~q\ & (\a0|a0|gen00:1:a1~q\ $ (\a0|a0|gen00:2:a1~q\)))) # (!\a0|a0|gen00:3:a1~q\ & (!\a0|a0|gen00:1:a1~q\ & (\a0|a0|gen00:2:a1~q\ $ (\a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~0_combout\);

-- Location: LCCOMB_X76_Y40_N14
\d0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~1_combout\ = (\a0|a0|gen00:3:a1~q\ & ((\a0|a0|a0~q\ & (\a0|a0|gen00:1:a1~q\)) # (!\a0|a0|a0~q\ & ((\a0|a0|gen00:2:a1~q\))))) # (!\a0|a0|gen00:3:a1~q\ & (\a0|a0|gen00:2:a1~q\ & (\a0|a0|gen00:1:a1~q\ $ (\a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~1_combout\);

-- Location: LCCOMB_X76_Y40_N20
\d0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~2_combout\ = (\a0|a0|gen00:3:a1~q\ & (\a0|a0|gen00:2:a1~q\ & ((\a0|a0|gen00:1:a1~q\) # (!\a0|a0|a0~q\)))) # (!\a0|a0|gen00:3:a1~q\ & (\a0|a0|gen00:1:a1~q\ & (!\a0|a0|gen00:2:a1~q\ & !\a0|a0|a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~2_combout\);

-- Location: LCCOMB_X76_Y40_N22
\d0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~3_combout\ = (\a0|a0|gen00:1:a1~q\ & ((\a0|a0|gen00:2:a1~q\ & ((\a0|a0|a0~q\))) # (!\a0|a0|gen00:2:a1~q\ & (\a0|a0|gen00:3:a1~q\ & !\a0|a0|a0~q\)))) # (!\a0|a0|gen00:1:a1~q\ & (!\a0|a0|gen00:3:a1~q\ & (\a0|a0|gen00:2:a1~q\ $ (\a0|a0|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~3_combout\);

-- Location: LCCOMB_X76_Y40_N16
\d0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~4_combout\ = (\a0|a0|gen00:1:a1~q\ & (!\a0|a0|gen00:3:a1~q\ & ((\a0|a0|a0~q\)))) # (!\a0|a0|gen00:1:a1~q\ & ((\a0|a0|gen00:2:a1~q\ & (!\a0|a0|gen00:3:a1~q\)) # (!\a0|a0|gen00:2:a1~q\ & ((\a0|a0|a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~4_combout\);

-- Location: LCCOMB_X76_Y40_N18
\d0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~5_combout\ = (\a0|a0|gen00:1:a1~q\ & (!\a0|a0|gen00:3:a1~q\ & ((\a0|a0|a0~q\) # (!\a0|a0|gen00:2:a1~q\)))) # (!\a0|a0|gen00:1:a1~q\ & (\a0|a0|a0~q\ & (\a0|a0|gen00:3:a1~q\ $ (!\a0|a0|gen00:2:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~5_combout\);

-- Location: LCCOMB_X76_Y40_N12
\d0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d0|D~6_combout\ = (\a0|a0|a0~q\ & (!\a0|a0|gen00:3:a1~q\ & (\a0|a0|gen00:1:a1~q\ $ (!\a0|a0|gen00:2:a1~q\)))) # (!\a0|a0|a0~q\ & (!\a0|a0|gen00:1:a1~q\ & (\a0|a0|gen00:3:a1~q\ $ (!\a0|a0|gen00:2:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|gen00:3:a1~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|a0~q\,
	combout => \d0|D~6_combout\);

-- Location: LCCOMB_X76_Y39_N26
\a0|a1|a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|a0~0_combout\ = !\a0|a1|a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a1|a0~q\,
	combout => \a0|a1|a0~0_combout\);

-- Location: LCCOMB_X76_Y39_N14
\a0|a1|a2|sDec10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|a2|sDec10~combout\ = LCELL((\a0|a1|gen00:3:a1~q\ & (!\a0|a1|a0~q\ & (!\a0|a1|gen00:2:a1~q\ & \a0|a1|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|a0~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|gen00:1:a1~q\,
	combout => \a0|a1|a2|sDec10~combout\);

-- Location: LCCOMB_X76_Y39_N6
\a0|a1|a2|a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a0|a1|a2|a0~feeder_combout\);

-- Location: LCCOMB_X76_Y39_N8
\a0|a1|a2|sNew0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|a2|sNew0~0_combout\ = (!\a0|a1|a0~q\ & (!\a0|a1|gen00:1:a1~q\ & (!\a0|a1|gen00:2:a1~q\ & !\a0|a1|gen00:3:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|a0~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|gen00:3:a1~q\,
	combout => \a0|a1|a2|sNew0~0_combout\);

-- Location: FF_X76_Y39_N7
\a0|a1|a2|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a1|a2|sDec10~combout\,
	d => \a0|a1|a2|a0~feeder_combout\,
	clrn => \a0|a1|a2|ALT_INV_sNew0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a1|a2|a0~q\);

-- Location: FF_X76_Y39_N25
\a0|a1|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|a2|a0~q\,
	asdata => \a0|a1|a0~0_combout\,
	clrn => \a0|a1|a2|ALT_INV_a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a1|a0~q\);

-- Location: LCCOMB_X77_Y39_N30
\a0|a1|gen00:1:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:1:a1~0_combout\ = !\a0|a1|gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|a1|gen00:1:a1~q\,
	combout => \a0|a1|gen00:1:a1~0_combout\);

-- Location: LCCOMB_X77_Y39_N22
\a0|a1|gen00:1:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:1:a1~feeder_combout\ = \a0|a1|gen00:1:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|a1|gen00:1:a1~0_combout\,
	combout => \a0|a1|gen00:1:a1~feeder_combout\);

-- Location: FF_X77_Y39_N23
\a0|a1|gen00:1:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a1|ALT_INV_a0~q\,
	d => \a0|a1|gen00:1:a1~feeder_combout\,
	clrn => \a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a1|gen00:1:a1~q\);

-- Location: LCCOMB_X77_Y39_N24
\a0|a1|gen00:2:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:2:a1~0_combout\ = !\a0|a1|gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:2:a1~q\,
	combout => \a0|a1|gen00:2:a1~0_combout\);

-- Location: LCCOMB_X77_Y39_N20
\a0|a1|gen00:2:a1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:2:a1~feeder_combout\ = \a0|a1|gen00:2:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:2:a1~0_combout\,
	combout => \a0|a1|gen00:2:a1~feeder_combout\);

-- Location: FF_X77_Y39_N21
\a0|a1|gen00:2:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a1|ALT_INV_gen00:1:a1~q\,
	d => \a0|a1|gen00:2:a1~feeder_combout\,
	clrn => \a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a1|gen00:2:a1~q\);

-- Location: LCCOMB_X75_Y39_N14
\a0|a1|gen00:3:a1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:3:a1~0_combout\ = !\a0|a1|gen00:3:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a1|gen00:3:a1~q\,
	combout => \a0|a1|gen00:3:a1~0_combout\);

-- Location: FF_X75_Y39_N15
\a0|a1|gen00:3:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a1|ALT_INV_gen00:2:a1~q\,
	d => \a0|a1|gen00:3:a1~0_combout\,
	clrn => \a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a1|gen00:3:a1~q\);

-- Location: LCCOMB_X76_Y39_N18
\d1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~0_combout\ = (\a0|a1|gen00:3:a1~q\ & (\a0|a1|a0~q\ & (\a0|a1|gen00:1:a1~q\ $ (\a0|a1|gen00:2:a1~q\)))) # (!\a0|a1|gen00:3:a1~q\ & (!\a0|a1|gen00:1:a1~q\ & (\a0|a1|gen00:2:a1~q\ $ (\a0|a1|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~0_combout\);

-- Location: LCCOMB_X76_Y39_N16
\d1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~1_combout\ = (\a0|a1|gen00:3:a1~q\ & ((\a0|a1|a0~q\ & (\a0|a1|gen00:1:a1~q\)) # (!\a0|a1|a0~q\ & ((\a0|a1|gen00:2:a1~q\))))) # (!\a0|a1|gen00:3:a1~q\ & (\a0|a1|gen00:2:a1~q\ & (\a0|a1|gen00:1:a1~q\ $ (\a0|a1|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~1_combout\);

-- Location: LCCOMB_X76_Y39_N22
\d1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~2_combout\ = (\a0|a1|gen00:3:a1~q\ & (\a0|a1|gen00:2:a1~q\ & ((\a0|a1|gen00:1:a1~q\) # (!\a0|a1|a0~q\)))) # (!\a0|a1|gen00:3:a1~q\ & (\a0|a1|gen00:1:a1~q\ & (!\a0|a1|gen00:2:a1~q\ & !\a0|a1|a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~2_combout\);

-- Location: LCCOMB_X76_Y39_N30
\d1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~3_combout\ = (\a0|a1|gen00:1:a1~q\ & ((\a0|a1|gen00:2:a1~q\ & ((\a0|a1|a0~q\))) # (!\a0|a1|gen00:2:a1~q\ & (\a0|a1|gen00:3:a1~q\ & !\a0|a1|a0~q\)))) # (!\a0|a1|gen00:1:a1~q\ & (!\a0|a1|gen00:3:a1~q\ & (\a0|a1|gen00:2:a1~q\ $ (\a0|a1|a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~3_combout\);

-- Location: LCCOMB_X76_Y39_N12
\d1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~4_combout\ = (\a0|a1|gen00:1:a1~q\ & (!\a0|a1|gen00:3:a1~q\ & ((\a0|a1|a0~q\)))) # (!\a0|a1|gen00:1:a1~q\ & ((\a0|a1|gen00:2:a1~q\ & (!\a0|a1|gen00:3:a1~q\)) # (!\a0|a1|gen00:2:a1~q\ & ((\a0|a1|a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~4_combout\);

-- Location: LCCOMB_X76_Y39_N20
\d1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~5_combout\ = (\a0|a1|gen00:1:a1~q\ & (!\a0|a1|gen00:3:a1~q\ & ((\a0|a1|a0~q\) # (!\a0|a1|gen00:2:a1~q\)))) # (!\a0|a1|gen00:1:a1~q\ & (\a0|a1|a0~q\ & (\a0|a1|gen00:3:a1~q\ $ (!\a0|a1|gen00:2:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~5_combout\);

-- Location: LCCOMB_X76_Y39_N28
\d1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \d1|D~6_combout\ = (\a0|a1|a0~q\ & (!\a0|a1|gen00:3:a1~q\ & (\a0|a1|gen00:1:a1~q\ $ (!\a0|a1|gen00:2:a1~q\)))) # (!\a0|a1|a0~q\ & (!\a0|a1|gen00:1:a1~q\ & (\a0|a1|gen00:3:a1~q\ $ (!\a0|a1|gen00:2:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:3:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|a0~q\,
	combout => \d1|D~6_combout\);

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

ww_Dec0(0) <= \Dec0[0]~output_o\;

ww_Dec0(1) <= \Dec0[1]~output_o\;

ww_Dec0(2) <= \Dec0[2]~output_o\;

ww_Dec0(3) <= \Dec0[3]~output_o\;

ww_Dec0(4) <= \Dec0[4]~output_o\;

ww_Dec0(5) <= \Dec0[5]~output_o\;

ww_Dec0(6) <= \Dec0[6]~output_o\;

ww_Dec0(7) <= \Dec0[7]~output_o\;

ww_Dec1(0) <= \Dec1[0]~output_o\;

ww_Dec1(1) <= \Dec1[1]~output_o\;

ww_Dec1(2) <= \Dec1[2]~output_o\;

ww_Dec1(3) <= \Dec1[3]~output_o\;

ww_Dec1(4) <= \Dec1[4]~output_o\;

ww_Dec1(5) <= \Dec1[5]~output_o\;

ww_Dec1(6) <= \Dec1[6]~output_o\;

ww_Dec1(7) <= \Dec1[7]~output_o\;

ww_Inc0(0) <= \Inc0[0]~output_o\;

ww_Inc0(1) <= \Inc0[1]~output_o\;

ww_Inc0(2) <= \Inc0[2]~output_o\;

ww_Inc0(3) <= \Inc0[3]~output_o\;

ww_Inc0(4) <= \Inc0[4]~output_o\;

ww_Inc0(5) <= \Inc0[5]~output_o\;

ww_Inc0(6) <= \Inc0[6]~output_o\;

ww_Inc0(7) <= \Inc0[7]~output_o\;

ww_Inc1(0) <= \Inc1[0]~output_o\;

ww_Inc1(1) <= \Inc1[1]~output_o\;

ww_Inc1(2) <= \Inc1[2]~output_o\;

ww_Inc1(3) <= \Inc1[3]~output_o\;

ww_Inc1(4) <= \Inc1[4]~output_o\;

ww_Inc1(5) <= \Inc1[5]~output_o\;

ww_Inc1(6) <= \Inc1[6]~output_o\;

ww_Inc1(7) <= \Inc1[7]~output_o\;

ww_clock_2hz <= \clock_2hz~output_o\;
END structure;


