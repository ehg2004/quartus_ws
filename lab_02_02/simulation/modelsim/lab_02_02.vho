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

-- DATE "09/28/2023 13:48:14"

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

ENTITY 	lab_02_02 IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	DEC0 : OUT std_logic_vector(7 DOWNTO 0);
	DEC1 : OUT std_logic_vector(7 DOWNTO 0);
	DEC2 : OUT std_logic_vector(7 DOWNTO 0);
	DEC3 : OUT std_logic_vector(7 DOWNTO 0);
	DEC4 : OUT std_logic_vector(7 DOWNTO 0);
	DEC5 : OUT std_logic_vector(7 DOWNTO 0);
	plse_PB1 : IN std_logic;
	clk_PB0 : IN std_logic;
	ctrl_SW_4 : IN std_logic
	);
END lab_02_02;

-- Design Ports Information
-- DEC0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_PB0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plse_PB1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_SW_4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_02_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DEC0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEC1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEC2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEC3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEC4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEC5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_plse_PB1 : std_logic;
SIGNAL ww_clk_PB0 : std_logic;
SIGNAL ww_ctrl_SW_4 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a0|gen03~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a0|gen02~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DEC0[0]~output_o\ : std_logic;
SIGNAL \DEC0[1]~output_o\ : std_logic;
SIGNAL \DEC0[2]~output_o\ : std_logic;
SIGNAL \DEC0[3]~output_o\ : std_logic;
SIGNAL \DEC0[4]~output_o\ : std_logic;
SIGNAL \DEC0[5]~output_o\ : std_logic;
SIGNAL \DEC0[6]~output_o\ : std_logic;
SIGNAL \DEC0[7]~output_o\ : std_logic;
SIGNAL \DEC1[0]~output_o\ : std_logic;
SIGNAL \DEC1[1]~output_o\ : std_logic;
SIGNAL \DEC1[2]~output_o\ : std_logic;
SIGNAL \DEC1[3]~output_o\ : std_logic;
SIGNAL \DEC1[4]~output_o\ : std_logic;
SIGNAL \DEC1[5]~output_o\ : std_logic;
SIGNAL \DEC1[6]~output_o\ : std_logic;
SIGNAL \DEC1[7]~output_o\ : std_logic;
SIGNAL \DEC2[0]~output_o\ : std_logic;
SIGNAL \DEC2[1]~output_o\ : std_logic;
SIGNAL \DEC2[2]~output_o\ : std_logic;
SIGNAL \DEC2[3]~output_o\ : std_logic;
SIGNAL \DEC2[4]~output_o\ : std_logic;
SIGNAL \DEC2[5]~output_o\ : std_logic;
SIGNAL \DEC2[6]~output_o\ : std_logic;
SIGNAL \DEC2[7]~output_o\ : std_logic;
SIGNAL \DEC3[0]~output_o\ : std_logic;
SIGNAL \DEC3[1]~output_o\ : std_logic;
SIGNAL \DEC3[2]~output_o\ : std_logic;
SIGNAL \DEC3[3]~output_o\ : std_logic;
SIGNAL \DEC3[4]~output_o\ : std_logic;
SIGNAL \DEC3[5]~output_o\ : std_logic;
SIGNAL \DEC3[6]~output_o\ : std_logic;
SIGNAL \DEC3[7]~output_o\ : std_logic;
SIGNAL \DEC4[0]~output_o\ : std_logic;
SIGNAL \DEC4[1]~output_o\ : std_logic;
SIGNAL \DEC4[2]~output_o\ : std_logic;
SIGNAL \DEC4[3]~output_o\ : std_logic;
SIGNAL \DEC4[4]~output_o\ : std_logic;
SIGNAL \DEC4[5]~output_o\ : std_logic;
SIGNAL \DEC4[6]~output_o\ : std_logic;
SIGNAL \DEC4[7]~output_o\ : std_logic;
SIGNAL \DEC5[0]~output_o\ : std_logic;
SIGNAL \DEC5[1]~output_o\ : std_logic;
SIGNAL \DEC5[2]~output_o\ : std_logic;
SIGNAL \DEC5[3]~output_o\ : std_logic;
SIGNAL \DEC5[4]~output_o\ : std_logic;
SIGNAL \DEC5[5]~output_o\ : std_logic;
SIGNAL \DEC5[6]~output_o\ : std_logic;
SIGNAL \DEC5[7]~output_o\ : std_logic;
SIGNAL \clk_PB0~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \gen00:0:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:1:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:2:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:2:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:3:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:3:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:3:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:3:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:3:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:3:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:3:aa1|D~6_combout\ : std_logic;
SIGNAL \plse_PB1~input_o\ : std_logic;
SIGNAL \a0|gen02~0_combout\ : std_logic;
SIGNAL \a0|gen02~0clkctrl_outclk\ : std_logic;
SIGNAL \ctrl_SW_4~input_o\ : std_logic;
SIGNAL \a0|a4|action_02|gen:0:action|Co~0_combout\ : std_logic;
SIGNAL \a0|a4|action_02|gen:1:action|Co~0_combout\ : std_logic;
SIGNAL \a0|a4|action_02|gen:2:action|S~0_combout\ : std_logic;
SIGNAL \a0|a2|O[2]~2_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:2:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|a4|action_02|gen:3:action|S~0_combout\ : std_logic;
SIGNAL \a0|a4|action_02|gen:2:action|Co~0_combout\ : std_logic;
SIGNAL \a0|a2|O[3]~1_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|a2|O[0]~0_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|a4|action_02|gen:1:action|S~0_combout\ : std_logic;
SIGNAL \a0|a2|O[1]~3_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:4:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:4:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:4:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:4:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:4:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:4:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:4:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen03~0_combout\ : std_logic;
SIGNAL \a0|gen03~0clkctrl_outclk\ : std_logic;
SIGNAL \a0|a7|O~4_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:1:a0~q\ : std_logic;
SIGNAL \a0|a7|O~2_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|a7|O[0]~0_combout\ : std_logic;
SIGNAL \a0|a7|O[0]~1_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|a7|O~3_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:2:a0~q\ : std_logic;
SIGNAL \gen00:5:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~6_combout\ : std_logic;
SIGNAL \ALT_INV_clk_PB0~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
DEC0 <= ww_DEC0;
DEC1 <= ww_DEC1;
DEC2 <= ww_DEC2;
DEC3 <= ww_DEC3;
DEC4 <= ww_DEC4;
DEC5 <= ww_DEC5;
ww_plse_PB1 <= plse_PB1;
ww_clk_PB0 <= clk_PB0;
ww_ctrl_SW_4 <= ctrl_SW_4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\a0|gen03~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \a0|gen03~0_combout\);

\a0|gen02~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \a0|gen02~0_combout\);
\ALT_INV_clk_PB0~input_o\ <= NOT \clk_PB0~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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
\DEC0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\DEC0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\DEC0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\DEC0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\DEC0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\DEC0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\DEC0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\DEC0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\DEC1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\DEC1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\DEC1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\DEC1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\DEC1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\DEC1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\DEC1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\DEC1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\DEC2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\DEC2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\DEC2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\DEC2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\DEC2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\DEC2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\DEC2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\DEC2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC2[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\DEC3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\DEC3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\DEC3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\DEC3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\DEC3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\DEC3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\DEC3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\DEC3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC3[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\DEC4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\DEC4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\DEC4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\DEC4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\DEC4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\DEC4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\DEC4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\DEC4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC4[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\DEC5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\DEC5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\DEC5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\DEC5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\DEC5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\DEC5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\DEC5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\DEC5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC5[7]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\clk_PB0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_PB0,
	o => \clk_PB0~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X66_Y50_N27
\a0|gen00:0:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:0:a0~q\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X66_Y50_N15
\a0|gen00:0:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:1:a0~q\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X66_Y50_N5
\a0|gen00:0:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:3:a0~q\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X66_Y50_N31
\a0|gen00:0:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X67_Y50_N20
\gen00:0:aa1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~0_combout\ = (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:0:aa1|D~0_combout\);

-- Location: LCCOMB_X67_Y50_N14
\gen00:0:aa1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~1_combout\ = (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\)) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:2:a0~q\))))) # 
-- (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:0:aa1|D~1_combout\);

-- Location: LCCOMB_X66_Y50_N26
\gen00:0:aa1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~2_combout\ = (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & !\a0|gen00:0:gen01:a0|gen00:3:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:0:aa1|D~2_combout\);

-- Location: LCCOMB_X66_Y50_N4
\gen00:0:aa1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~3_combout\ = (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\))) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & 
-- !\a0|gen00:0:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:0:aa1|D~3_combout\);

-- Location: LCCOMB_X67_Y50_N28
\gen00:0:aa1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~4_combout\ = (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- ((!\a0|gen00:0:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:0:aa1|D~4_combout\);

-- Location: LCCOMB_X67_Y50_N18
\gen00:0:aa1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~5_combout\ = (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ $ (((\a0|gen00:0:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\))))) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & 
-- (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & !\a0|gen00:0:gen01:a0|gen00:2:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:0:aa1|D~5_combout\);

-- Location: LCCOMB_X67_Y50_N0
\gen00:0:aa1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~6_combout\ = (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:0:aa1|D~6_combout\);

-- Location: FF_X66_Y50_N21
\a0|gen00:1:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:0:a0~q\);

-- Location: FF_X66_Y50_N13
\a0|gen00:1:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:3:a0~q\);

-- Location: FF_X66_Y50_N23
\a0|gen00:1:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:2:a0~q\);

-- Location: FF_X66_Y50_N19
\a0|gen00:1:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X65_Y50_N16
\gen00:1:aa1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~0_combout\ = (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:1:aa1|D~0_combout\);

-- Location: LCCOMB_X66_Y50_N12
\gen00:1:aa1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~1_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:1:aa1|D~1_combout\);

-- Location: LCCOMB_X66_Y50_N16
\gen00:1:aa1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~2_combout\ = (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & 
-- (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & !\a0|gen00:1:gen01:a0|gen00:0:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:1:aa1|D~2_combout\);

-- Location: LCCOMB_X65_Y50_N22
\gen00:1:aa1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~3_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:2:a0~q\))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & 
-- !\a0|gen00:1:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:1:aa1|D~3_combout\);

-- Location: LCCOMB_X65_Y50_N12
\gen00:1:aa1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~4_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (((!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & \a0|gen00:1:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\)) # (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:1:aa1|D~4_combout\);

-- Location: LCCOMB_X66_Y50_N22
\gen00:1:aa1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~5_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:0:a0~q\) # (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & 
-- (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:1:aa1|D~5_combout\);

-- Location: LCCOMB_X66_Y50_N18
\gen00:1:aa1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~6_combout\ = (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:1:aa1|D~6_combout\);

-- Location: FF_X65_Y50_N13
\a0|gen00:2:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X65_Y50_N18
\a0|gen00:2:gen01:a0|gen00:0:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:2:gen01:a0|gen00:0:a0~feeder_combout\ = \a0|gen00:1:gen01:a0|gen00:0:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \a0|gen00:2:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X65_Y50_N19
\a0|gen00:2:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	d => \a0|gen00:2:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:0:a0~q\);

-- Location: FF_X66_Y50_N17
\a0|gen00:2:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	asdata => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X65_Y50_N20
\a0|gen00:2:gen01:a0|gen00:1:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:2:gen01:a0|gen00:1:a0~feeder_combout\ = \a0|gen00:1:gen01:a0|gen00:1:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	combout => \a0|gen00:2:gen01:a0|gen00:1:a0~feeder_combout\);

-- Location: FF_X65_Y50_N21
\a0|gen00:2:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	d => \a0|gen00:2:gen01:a0|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X65_Y50_N26
\gen00:2:aa1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~0_combout\ = (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ $ (\a0|gen00:2:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:2:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\gen00:2:aa1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~1_combout\ = (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:1:a0~q\))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:2:gen01:a0|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~1_combout\);

-- Location: LCCOMB_X65_Y50_N2
\gen00:2:aa1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~2_combout\ = (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & \a0|gen00:2:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~2_combout\);

-- Location: LCCOMB_X65_Y50_N8
\gen00:2:aa1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~3_combout\ = (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:2:a0~q\))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & 
-- !\a0|gen00:2:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:2:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~3_combout\);

-- Location: LCCOMB_X65_Y50_N6
\gen00:2:aa1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~4_combout\ = (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\))) # (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\)) # (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~4_combout\);

-- Location: LCCOMB_X65_Y50_N4
\gen00:2:aa1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~5_combout\ = (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ $ (((\a0|gen00:2:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\))))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & \a0|gen00:2:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~5_combout\);

-- Location: LCCOMB_X65_Y50_N30
\gen00:2:aa1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~6_combout\ = (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ $ (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:aa1|D~6_combout\);

-- Location: LCCOMB_X65_Y50_N0
\a0|gen00:3:gen01:a0|gen00:0:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:3:gen01:a0|gen00:0:a0~feeder_combout\ = \a0|gen00:2:gen01:a0|gen00:0:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	combout => \a0|gen00:3:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X65_Y50_N1
\a0|gen00:3:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	d => \a0|gen00:3:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:0:a0~q\);

-- Location: LCCOMB_X65_Y50_N10
\a0|gen00:3:gen01:a0|gen00:3:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:3:gen01:a0|gen00:3:a0~feeder_combout\ = \a0|gen00:2:gen01:a0|gen00:3:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \a0|gen00:3:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X65_Y50_N11
\a0|gen00:3:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	d => \a0|gen00:3:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X65_Y50_N24
\a0|gen00:3:gen01:a0|gen00:2:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:3:gen01:a0|gen00:2:a0~feeder_combout\ = \a0|gen00:2:gen01:a0|gen00:2:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	combout => \a0|gen00:3:gen01:a0|gen00:2:a0~feeder_combout\);

-- Location: FF_X65_Y50_N25
\a0|gen00:3:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	d => \a0|gen00:3:gen01:a0|gen00:2:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X65_Y50_N14
\a0|gen00:3:gen01:a0|gen00:1:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\ = \a0|gen00:2:gen01:a0|gen00:1:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\);

-- Location: FF_X65_Y50_N15
\a0|gen00:3:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~input_o\,
	d => \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X67_Y50_N26
\gen00:3:aa1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~0_combout\ = (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~0_combout\);

-- Location: LCCOMB_X67_Y50_N16
\gen00:3:aa1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~1_combout\ = (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:1:a0~q\))) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~1_combout\);

-- Location: LCCOMB_X67_Y50_N30
\gen00:3:aa1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~2_combout\ = (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & \a0|gen00:3:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~2_combout\);

-- Location: LCCOMB_X67_Y50_N24
\gen00:3:aa1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~3_combout\ = (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:2:a0~q\))) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & 
-- !\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~3_combout\);

-- Location: LCCOMB_X67_Y50_N6
\gen00:3:aa1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~4_combout\ = (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & 
-- ((!\a0|gen00:3:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~4_combout\);

-- Location: LCCOMB_X67_Y50_N4
\gen00:3:aa1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~5_combout\ = (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ $ (((\a0|gen00:3:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & \a0|gen00:3:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~5_combout\);

-- Location: LCCOMB_X67_Y50_N10
\gen00:3:aa1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~6_combout\ = (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\ $ (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:3:aa1|D~6_combout\);

-- Location: IOIBUF_X49_Y54_N29
\plse_PB1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plse_PB1,
	o => \plse_PB1~input_o\);

-- Location: LCCOMB_X45_Y53_N18
\a0|gen02~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen02~0_combout\ = LCELL((!\clk_PB0~input_o\) # (!\plse_PB1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse_PB1~input_o\,
	datad => \clk_PB0~input_o\,
	combout => \a0|gen02~0_combout\);

-- Location: CLKCTRL_G13
\a0|gen02~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \a0|gen02~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \a0|gen02~0clkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N22
\ctrl_SW_4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_SW_4,
	o => \ctrl_SW_4~input_o\);

-- Location: LCCOMB_X66_Y50_N14
\a0|a4|action_02|gen:0:action|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:0:action|Co~0_combout\ = (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\)) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & ((\ctrl_SW_4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \ctrl_SW_4~input_o\,
	datad => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \a0|a4|action_02|gen:0:action|Co~0_combout\);

-- Location: LCCOMB_X66_Y50_N8
\a0|a4|action_02|gen:1:action|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:1:action|Co~0_combout\ = (\a0|a4|action_02|gen:0:action|Co~0_combout\ & (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\ctrl_SW_4~input_o\ $ (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\)))) # (!\a0|a4|action_02|gen:0:action|Co~0_combout\ & 
-- ((\ctrl_SW_4~input_o\ $ (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\)) # (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_SW_4~input_o\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|a4|action_02|gen:0:action|Co~0_combout\,
	datad => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \a0|a4|action_02|gen:1:action|Co~0_combout\);

-- Location: LCCOMB_X66_Y50_N20
\a0|a4|action_02|gen:2:action|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:2:action|S~0_combout\ = \a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (\ctrl_SW_4~input_o\ $ (\a0|gen00:0:gen01:a0|gen00:2:a0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datab => \ctrl_SW_4~input_o\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \a0|a4|action_02|gen:2:action|S~0_combout\);

-- Location: LCCOMB_X66_Y50_N2
\a0|a2|O[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a2|O[2]~2_combout\ = (\plse_PB1~input_o\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\)) # (!\plse_PB1~input_o\ & ((\a0|a4|action_02|gen:1:action|Co~0_combout\ $ (!\a0|a4|action_02|gen:2:action|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datab => \plse_PB1~input_o\,
	datac => \a0|a4|action_02|gen:1:action|Co~0_combout\,
	datad => \a0|a4|action_02|gen:2:action|S~0_combout\,
	combout => \a0|a2|O[2]~2_combout\);

-- Location: LCCOMB_X70_Y50_N6
\a0|gen00:4:gen02:a1|gen00:2:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:4:gen02:a1|gen00:2:a0~feeder_combout\ = \a0|a2|O[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a2|O[2]~2_combout\,
	combout => \a0|gen00:4:gen02:a1|gen00:2:a0~feeder_combout\);

-- Location: FF_X70_Y50_N7
\a0|gen00:4:gen02:a1|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	d => \a0|gen00:4:gen02:a1|gen00:2:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:2:a0~q\);

-- Location: LCCOMB_X66_Y50_N30
\a0|a4|action_02|gen:3:action|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:3:action|S~0_combout\ = \a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ $ (\ctrl_SW_4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \ctrl_SW_4~input_o\,
	combout => \a0|a4|action_02|gen:3:action|S~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\a0|a4|action_02|gen:2:action|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:2:action|Co~0_combout\ = (\a0|a4|action_02|gen:1:action|Co~0_combout\ & ((\ctrl_SW_4~input_o\ $ (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\)) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\))) # (!\a0|a4|action_02|gen:1:action|Co~0_combout\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\ctrl_SW_4~input_o\ $ (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_SW_4~input_o\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|a4|action_02|gen:1:action|Co~0_combout\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \a0|a4|action_02|gen:2:action|Co~0_combout\);

-- Location: LCCOMB_X66_Y50_N6
\a0|a2|O[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a2|O[3]~1_combout\ = (\plse_PB1~input_o\ & (((\a0|gen00:3:gen01:a0|gen00:3:a0~q\)))) # (!\plse_PB1~input_o\ & (\a0|a4|action_02|gen:3:action|S~0_combout\ $ (((!\a0|a4|action_02|gen:2:action|Co~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a4|action_02|gen:3:action|S~0_combout\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \plse_PB1~input_o\,
	datad => \a0|a4|action_02|gen:2:action|Co~0_combout\,
	combout => \a0|a2|O[3]~1_combout\);

-- Location: LCCOMB_X70_Y50_N16
\a0|gen00:4:gen02:a1|gen00:3:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:4:gen02:a1|gen00:3:a0~feeder_combout\ = \a0|a2|O[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|a2|O[3]~1_combout\,
	combout => \a0|gen00:4:gen02:a1|gen00:3:a0~feeder_combout\);

-- Location: FF_X70_Y50_N17
\a0|gen00:4:gen02:a1|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	d => \a0|gen00:4:gen02:a1|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:3:a0~q\);

-- Location: LCCOMB_X67_Y50_N8
\a0|a2|O[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a2|O[0]~0_combout\ = (\plse_PB1~input_o\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\)) # (!\plse_PB1~input_o\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datad => \plse_PB1~input_o\,
	combout => \a0|a2|O[0]~0_combout\);

-- Location: LCCOMB_X67_Y50_N12
\a0|gen00:4:gen02:a1|gen00:0:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:4:gen02:a1|gen00:0:a0~feeder_combout\ = \a0|a2|O[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a2|O[0]~0_combout\,
	combout => \a0|gen00:4:gen02:a1|gen00:0:a0~feeder_combout\);

-- Location: FF_X67_Y50_N13
\a0|gen00:4:gen02:a1|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	d => \a0|gen00:4:gen02:a1|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:0:a0~q\);

-- Location: LCCOMB_X66_Y50_N24
\a0|a4|action_02|gen:1:action|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:1:action|S~0_combout\ = \a0|gen00:1:gen01:a0|gen00:1:a0~q\ $ (((\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\ctrl_SW_4~input_o\ $ (\a0|gen00:0:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_SW_4~input_o\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	combout => \a0|a4|action_02|gen:1:action|S~0_combout\);

-- Location: LCCOMB_X66_Y50_N10
\a0|a2|O[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a2|O[1]~3_combout\ = (\plse_PB1~input_o\ & (((\a0|gen00:3:gen01:a0|gen00:1:a0~q\)))) # (!\plse_PB1~input_o\ & (\a0|a4|action_02|gen:1:action|S~0_combout\ $ ((\a0|gen00:0:gen01:a0|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a4|action_02|gen:1:action|S~0_combout\,
	datab => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \plse_PB1~input_o\,
	datad => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	combout => \a0|a2|O[1]~3_combout\);

-- Location: LCCOMB_X70_Y50_N24
\a0|gen00:4:gen02:a1|gen00:1:a0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen00:4:gen02:a1|gen00:1:a0~feeder_combout\ = \a0|a2|O[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a2|O[1]~3_combout\,
	combout => \a0|gen00:4:gen02:a1|gen00:1:a0~feeder_combout\);

-- Location: FF_X70_Y50_N25
\a0|gen00:4:gen02:a1|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	d => \a0|gen00:4:gen02:a1|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:1:a0~q\);

-- Location: LCCOMB_X70_Y50_N22
\gen00:4:aa1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~0_combout\ = (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ $ (!\a0|gen00:4:gen02:a1|gen00:0:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & 
-- (\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ $ (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~0_combout\);

-- Location: LCCOMB_X70_Y50_N28
\gen00:4:aa1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~1_combout\ = (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:1:a0~q\))) # (!\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:0:a0~q\ $ (\a0|gen00:4:gen02:a1|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~1_combout\);

-- Location: LCCOMB_X70_Y50_N18
\gen00:4:aa1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~2_combout\ = (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:1:a0~q\) # (!\a0|gen00:4:gen02:a1|gen00:0:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & 
-- (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & (!\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & \a0|gen00:4:gen02:a1|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~2_combout\);

-- Location: LCCOMB_X70_Y50_N20
\gen00:4:aa1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~3_combout\ = (\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:0:a0~q\))) # (!\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & 
-- !\a0|gen00:4:gen02:a1|gen00:0:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ $ (\a0|gen00:4:gen02:a1|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~3_combout\);

-- Location: LCCOMB_X70_Y50_N30
\gen00:4:aa1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~4_combout\ = (\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & (((!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & \a0|gen00:4:gen02:a1|gen00:0:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & 
-- (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\)) # (!\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~4_combout\);

-- Location: LCCOMB_X70_Y50_N8
\gen00:4:aa1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~5_combout\ = (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ $ (\a0|gen00:4:gen02:a1|gen00:1:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & 
-- (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & ((\a0|gen00:4:gen02:a1|gen00:0:a0~q\) # (\a0|gen00:4:gen02:a1|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~5_combout\);

-- Location: LCCOMB_X70_Y50_N2
\gen00:4:aa1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~6_combout\ = (\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ $ (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & 
-- (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ $ (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \gen00:4:aa1|D~6_combout\);

-- Location: LCCOMB_X45_Y53_N8
\a0|gen03~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|gen03~0_combout\ = LCELL((!\clk_PB0~input_o\) # (!\plse_PB1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse_PB1~input_o\,
	datad => \clk_PB0~input_o\,
	combout => \a0|gen03~0_combout\);

-- Location: CLKCTRL_G10
\a0|gen03~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \a0|gen03~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \a0|gen03~0clkctrl_outclk\);

-- Location: LCCOMB_X70_Y50_N12
\a0|a7|O~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a7|O~4_combout\ = (\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & \plse_PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	datac => \plse_PB1~input_o\,
	combout => \a0|a7|O~4_combout\);

-- Location: FF_X70_Y50_N13
\a0|gen00:5:gen03:a1|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen03~0clkctrl_outclk\,
	d => \a0|a7|O~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:5:gen03:a1|gen00:1:a0~q\);

-- Location: LCCOMB_X70_Y50_N4
\a0|a7|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a7|O~2_combout\ = (\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & \plse_PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	datac => \plse_PB1~input_o\,
	combout => \a0|a7|O~2_combout\);

-- Location: FF_X70_Y50_N5
\a0|gen00:5:gen03:a1|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen03~0clkctrl_outclk\,
	d => \a0|a7|O~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:5:gen03:a1|gen00:3:a0~q\);

-- Location: LCCOMB_X66_Y50_N0
\a0|a7|O[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a7|O[0]~0_combout\ = (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (\ctrl_SW_4~input_o\)) # (!\a0|a4|action_02|gen:2:action|Co~0_combout\))) # (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|a4|action_02|gen:2:action|Co~0_combout\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (\ctrl_SW_4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datac => \ctrl_SW_4~input_o\,
	datad => \a0|a4|action_02|gen:2:action|Co~0_combout\,
	combout => \a0|a7|O[0]~0_combout\);

-- Location: LCCOMB_X67_Y50_N22
\a0|a7|O[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a7|O[0]~1_combout\ = (\plse_PB1~input_o\ & (\a0|gen00:4:gen02:a1|gen00:0:a0~q\)) # (!\plse_PB1~input_o\ & ((\a0|a7|O[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datac => \a0|a7|O[0]~0_combout\,
	datad => \plse_PB1~input_o\,
	combout => \a0|a7|O[0]~1_combout\);

-- Location: FF_X67_Y50_N23
\a0|gen00:5:gen03:a1|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen03~0clkctrl_outclk\,
	d => \a0|a7|O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:5:gen03:a1|gen00:0:a0~q\);

-- Location: LCCOMB_X70_Y50_N26
\a0|a7|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a0|a7|O~3_combout\ = (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ & \plse_PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datac => \plse_PB1~input_o\,
	combout => \a0|a7|O~3_combout\);

-- Location: FF_X70_Y50_N27
\a0|gen00:5:gen03:a1|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen03~0clkctrl_outclk\,
	d => \a0|a7|O~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:5:gen03:a1|gen00:2:a0~q\);

-- Location: LCCOMB_X77_Y38_N4
\gen00:5:aa1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~0_combout\ = (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ $ (\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & 
-- (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ $ (\a0|gen00:5:gen03:a1|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~0_combout\);

-- Location: LCCOMB_X77_Y38_N10
\gen00:5:aa1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~1_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\)) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:2:a0~q\))))) # 
-- (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ $ (\a0|gen00:5:gen03:a1|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~1_combout\);

-- Location: LCCOMB_X77_Y38_N8
\gen00:5:aa1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~2_combout\ = (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:1:a0~q\) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & 
-- (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & !\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~2_combout\);

-- Location: LCCOMB_X77_Y38_N6
\gen00:5:aa1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~3_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:2:a0~q\))) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & 
-- !\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ $ (\a0|gen00:5:gen03:a1|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~3_combout\);

-- Location: LCCOMB_X77_Y38_N0
\gen00:5:aa1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~4_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:0:a0~q\))) # (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & 
-- (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\)) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~4_combout\);

-- Location: LCCOMB_X77_Y38_N22
\gen00:5:aa1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~5_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & 
-- (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~5_combout\);

-- Location: LCCOMB_X77_Y38_N12
\gen00:5:aa1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~6_combout\ = (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & 
-- (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	combout => \gen00:5:aa1|D~6_combout\);

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

ww_DEC0(0) <= \DEC0[0]~output_o\;

ww_DEC0(1) <= \DEC0[1]~output_o\;

ww_DEC0(2) <= \DEC0[2]~output_o\;

ww_DEC0(3) <= \DEC0[3]~output_o\;

ww_DEC0(4) <= \DEC0[4]~output_o\;

ww_DEC0(5) <= \DEC0[5]~output_o\;

ww_DEC0(6) <= \DEC0[6]~output_o\;

ww_DEC0(7) <= \DEC0[7]~output_o\;

ww_DEC1(0) <= \DEC1[0]~output_o\;

ww_DEC1(1) <= \DEC1[1]~output_o\;

ww_DEC1(2) <= \DEC1[2]~output_o\;

ww_DEC1(3) <= \DEC1[3]~output_o\;

ww_DEC1(4) <= \DEC1[4]~output_o\;

ww_DEC1(5) <= \DEC1[5]~output_o\;

ww_DEC1(6) <= \DEC1[6]~output_o\;

ww_DEC1(7) <= \DEC1[7]~output_o\;

ww_DEC2(0) <= \DEC2[0]~output_o\;

ww_DEC2(1) <= \DEC2[1]~output_o\;

ww_DEC2(2) <= \DEC2[2]~output_o\;

ww_DEC2(3) <= \DEC2[3]~output_o\;

ww_DEC2(4) <= \DEC2[4]~output_o\;

ww_DEC2(5) <= \DEC2[5]~output_o\;

ww_DEC2(6) <= \DEC2[6]~output_o\;

ww_DEC2(7) <= \DEC2[7]~output_o\;

ww_DEC3(0) <= \DEC3[0]~output_o\;

ww_DEC3(1) <= \DEC3[1]~output_o\;

ww_DEC3(2) <= \DEC3[2]~output_o\;

ww_DEC3(3) <= \DEC3[3]~output_o\;

ww_DEC3(4) <= \DEC3[4]~output_o\;

ww_DEC3(5) <= \DEC3[5]~output_o\;

ww_DEC3(6) <= \DEC3[6]~output_o\;

ww_DEC3(7) <= \DEC3[7]~output_o\;

ww_DEC4(0) <= \DEC4[0]~output_o\;

ww_DEC4(1) <= \DEC4[1]~output_o\;

ww_DEC4(2) <= \DEC4[2]~output_o\;

ww_DEC4(3) <= \DEC4[3]~output_o\;

ww_DEC4(4) <= \DEC4[4]~output_o\;

ww_DEC4(5) <= \DEC4[5]~output_o\;

ww_DEC4(6) <= \DEC4[6]~output_o\;

ww_DEC4(7) <= \DEC4[7]~output_o\;

ww_DEC5(0) <= \DEC5[0]~output_o\;

ww_DEC5(1) <= \DEC5[1]~output_o\;

ww_DEC5(2) <= \DEC5[2]~output_o\;

ww_DEC5(3) <= \DEC5[3]~output_o\;

ww_DEC5(4) <= \DEC5[4]~output_o\;

ww_DEC5(5) <= \DEC5[5]~output_o\;

ww_DEC5(6) <= \DEC5[6]~output_o\;

ww_DEC5(7) <= \DEC5[7]~output_o\;
END structure;


