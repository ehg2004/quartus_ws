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

-- DATE "09/26/2023 15:09:56"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
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
-- DEC0[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC0[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC1[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC2[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC3[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC4[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[2]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[4]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[5]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEC5[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_PB0	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plse_PB1	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_SW_4	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clk_PB0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a0|gen02~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a0|gen03~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk_PB0~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:0:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \gen00:0:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:0:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:1:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \gen00:1:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:1:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:2:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \gen00:2:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:2:aa1|D~6_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|gen00:3:gen01:a0|gen00:2:a0~q\ : std_logic;
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
SIGNAL \a0|gen00:4:gen02:a1|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|a4|action_02|gen:3:action|S~0_combout\ : std_logic;
SIGNAL \a0|a4|action_02|gen:2:action|Co~0_combout\ : std_logic;
SIGNAL \a0|a2|O[3]~1_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|a2|O[0]~0_combout\ : std_logic;
SIGNAL \a0|gen00:4:gen02:a1|gen00:0:a0~q\ : std_logic;
SIGNAL \a0|a4|action_02|gen:1:action|S~0_combout\ : std_logic;
SIGNAL \a0|a2|O[1]~3_combout\ : std_logic;
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
SIGNAL \a0|a7|O~3_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:2:a0~q\ : std_logic;
SIGNAL \a0|a7|O~2_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:3:a0~q\ : std_logic;
SIGNAL \a0|a7|O[0]~0_combout\ : std_logic;
SIGNAL \a0|a7|O[0]~1_combout\ : std_logic;
SIGNAL \a0|gen00:5:gen03:a1|gen00:0:a0~q\ : std_logic;
SIGNAL \gen00:5:aa1|D~0_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~1_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~2_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~3_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~4_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~5_combout\ : std_logic;
SIGNAL \gen00:5:aa1|D~6_combout\ : std_logic;
SIGNAL \ALT_INV_clk_PB0~inputclkctrl_outclk\ : std_logic;

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

\clk_PB0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_PB0~input_o\);

\a0|gen02~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \a0|gen02~0_combout\);

\a0|gen03~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \a0|gen03~0_combout\);
\ALT_INV_clk_PB0~inputclkctrl_outclk\ <= NOT \clk_PB0~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X21_Y0_N9
\DEC0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC0[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\DEC0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC0[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DEC0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC0[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DEC0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC0[3]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\DEC0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC0[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\DEC0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC0[5]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\DEC0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC0[6]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\DEC0[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC0[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\DEC1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC1[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\DEC1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC1[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DEC1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC1[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DEC1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\DEC1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC1[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\DEC1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC1[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\DEC1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC1[6]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\DEC1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC1[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\DEC2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC2[0]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\DEC2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC2[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\DEC2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC2[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\DEC2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC2[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\DEC2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC2[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\DEC2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC2[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\DEC2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC2[6]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\DEC2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC2[7]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\DEC3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC3[0]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\DEC3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC3[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\DEC3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC3[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\DEC3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC3[3]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\DEC3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC3[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\DEC3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC3[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\DEC3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC3[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\DEC3[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC3[7]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\DEC4[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC4[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DEC4[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC4[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\DEC4[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC4[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\DEC4[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC4[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\DEC4[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC4[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\DEC4[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC4[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DEC4[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC4[6]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\DEC4[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC4[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\DEC5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~0_combout\,
	devoe => ww_devoe,
	o => \DEC5[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\DEC5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~1_combout\,
	devoe => ww_devoe,
	o => \DEC5[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\DEC5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~2_combout\,
	devoe => ww_devoe,
	o => \DEC5[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\DEC5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~3_combout\,
	devoe => ww_devoe,
	o => \DEC5[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\DEC5[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~4_combout\,
	devoe => ww_devoe,
	o => \DEC5[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\DEC5[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~5_combout\,
	devoe => ww_devoe,
	o => \DEC5[5]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\DEC5[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:aa1|D~6_combout\,
	devoe => ww_devoe,
	o => \DEC5[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\DEC5[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC5[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk_PB0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_PB0,
	o => \clk_PB0~input_o\);

-- Location: CLKCTRL_G17
\clk_PB0~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_PB0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_PB0~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y0_N8
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X29_Y1_N15
\a0|gen00:0:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:2:a0~q\);

-- Location: IOIBUF_X52_Y21_N8
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X29_Y1_N26
\a0|gen00:0:gen01:a0|gen00:0:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|gen00:0:gen01:a0|gen00:0:a0~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \a0|gen00:0:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X29_Y1_N27
\a0|gen00:0:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	d => \a0|gen00:0:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:0:a0~q\);

-- Location: IOIBUF_X31_Y41_N8
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X29_Y1_N23
\a0|gen00:0:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:1:a0~q\);

-- Location: IOIBUF_X52_Y21_N1
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X31_Y1_N12
\a0|gen00:0:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|gen00:0:gen01:a0|gen00:3:a0~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \a0|gen00:0:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X31_Y1_N13
\a0|gen00:0:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	d => \a0|gen00:0:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:0:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X29_Y1_N22
\gen00:0:aa1|D~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~0_combout\ = (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:0:aa1|D~0_combout\);

-- Location: LCCOMB_X28_Y1_N0
\gen00:0:aa1|D~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~1_combout\ = (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:1:a0~q\))) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:1:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:0:aa1|D~1_combout\);

-- Location: LCCOMB_X28_Y1_N2
\gen00:0:aa1|D~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~2_combout\ = (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & \a0|gen00:0:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:0:aa1|D~2_combout\);

-- Location: LCCOMB_X28_Y1_N16
\gen00:0:aa1|D~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~3_combout\ = (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\)) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & 
-- \a0|gen00:0:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:0:aa1|D~3_combout\);

-- Location: LCCOMB_X29_Y1_N30
\gen00:0:aa1|D~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~4_combout\ = (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\)) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:0:aa1|D~4_combout\);

-- Location: LCCOMB_X29_Y1_N14
\gen00:0:aa1|D~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~5_combout\ = (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ $ (((\a0|gen00:0:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\))))) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & \a0|gen00:0:gen01:a0|gen00:1:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:0:aa1|D~5_combout\);

-- Location: LCCOMB_X30_Y1_N8
\gen00:0:aa1|D~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:aa1|D~6_combout\ = (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:0:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	datab => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:0:aa1|D~6_combout\);

-- Location: FF_X29_Y1_N31
\a0|gen00:1:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:0:a0~q\);

-- Location: FF_X29_Y1_N9
\a0|gen00:1:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:2:a0~q\);

-- Location: FF_X29_Y1_N5
\a0|gen00:1:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X31_Y1_N18
\a0|gen00:1:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|gen00:1:gen01:a0|gen00:3:a0~feeder_combout\ = \a0|gen00:0:gen01:a0|gen00:3:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	combout => \a0|gen00:1:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X31_Y1_N19
\a0|gen00:1:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	d => \a0|gen00:1:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:1:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X31_Y1_N24
\gen00:1:aa1|D~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~0_combout\ = (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & 
-- (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~0_combout\);

-- Location: LCCOMB_X31_Y1_N14
\gen00:1:aa1|D~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~1_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~1_combout\);

-- Location: LCCOMB_X31_Y1_N8
\gen00:1:aa1|D~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~2_combout\ = (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & !\a0|gen00:1:gen01:a0|gen00:3:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~2_combout\);

-- Location: LCCOMB_X31_Y1_N30
\gen00:1:aa1|D~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~3_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\)) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & 
-- \a0|gen00:1:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~3_combout\);

-- Location: LCCOMB_X31_Y1_N20
\gen00:1:aa1|D~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~4_combout\ = (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & ((!\a0|gen00:1:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & 
-- ((!\a0|gen00:1:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~4_combout\);

-- Location: LCCOMB_X29_Y1_N8
\gen00:1:aa1|D~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~5_combout\ = (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (((\a0|gen00:1:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\))))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & 
-- (\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:2:a0~q\ & !\a0|gen00:1:gen01:a0|gen00:3:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~5_combout\);

-- Location: LCCOMB_X31_Y1_N10
\gen00:1:aa1|D~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:aa1|D~6_combout\ = (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (!\a0|gen00:1:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:aa1|D~6_combout\);

-- Location: FF_X29_Y1_N1
\a0|gen00:2:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:0:a0~q\);

-- Location: FF_X29_Y1_N3
\a0|gen00:2:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:1:a0~q\);

-- Location: FF_X29_Y1_N19
\a0|gen00:2:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X31_Y1_N16
\a0|gen00:2:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|gen00:2:gen01:a0|gen00:3:a0~feeder_combout\ = \a0|gen00:1:gen01:a0|gen00:3:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \a0|gen00:2:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X31_Y1_N17
\a0|gen00:2:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	d => \a0|gen00:2:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:2:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X30_Y1_N10
\gen00:2:aa1|D~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~0_combout\ = (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ $ (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & 
-- (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~0_combout\);

-- Location: LCCOMB_X30_Y1_N24
\gen00:2:aa1|D~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~1_combout\ = (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:2:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~1_combout\);

-- Location: LCCOMB_X30_Y1_N26
\gen00:2:aa1|D~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~2_combout\ = (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & !\a0|gen00:2:gen01:a0|gen00:3:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~2_combout\);

-- Location: LCCOMB_X30_Y1_N4
\gen00:2:aa1|D~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~3_combout\ = (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\)) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & 
-- \a0|gen00:2:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:2:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~3_combout\);

-- Location: LCCOMB_X30_Y1_N14
\gen00:2:aa1|D~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~4_combout\ = (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & ((!\a0|gen00:2:gen01:a0|gen00:3:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & 
-- ((!\a0|gen00:2:gen01:a0|gen00:3:a0~q\))) # (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~4_combout\);

-- Location: LCCOMB_X30_Y1_N0
\gen00:2:aa1|D~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~5_combout\ = (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:3:a0~q\ $ (((\a0|gen00:2:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\))))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & 
-- (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\ & !\a0|gen00:2:gen01:a0|gen00:3:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~5_combout\);

-- Location: LCCOMB_X30_Y1_N6
\gen00:2:aa1|D~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:aa1|D~6_combout\ = (\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:2:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:2:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:2:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:2:gen01:a0|gen00:2:a0~q\ $ (!\a0|gen00:2:gen01:a0|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	datad => \a0|gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:aa1|D~6_combout\);

-- Location: LCCOMB_X29_Y1_N20
\a0|gen00:3:gen01:a0|gen00:1:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\ = \a0|gen00:2:gen01:a0|gen00:1:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|gen00:2:gen01:a0|gen00:1:a0~q\,
	combout => \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\);

-- Location: FF_X29_Y1_N21
\a0|gen00:3:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	d => \a0|gen00:3:gen01:a0|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X31_Y1_N22
\a0|gen00:3:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
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

-- Location: FF_X31_Y1_N23
\a0|gen00:3:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	d => \a0|gen00:3:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:3:a0~q\);

-- Location: FF_X29_Y1_N13
\a0|gen00:3:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:2:gen01:a0|gen00:0:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:0:a0~q\);

-- Location: FF_X29_Y1_N17
\a0|gen00:3:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_PB0~inputclkctrl_outclk\,
	asdata => \a0|gen00:2:gen01:a0|gen00:2:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:3:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X30_Y1_N20
\gen00:3:aa1|D~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~0_combout\ = (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~0_combout\);

-- Location: LCCOMB_X30_Y1_N30
\gen00:3:aa1|D~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~1_combout\ = (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\)) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))) # 
-- (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~1_combout\);

-- Location: LCCOMB_X30_Y1_N28
\gen00:3:aa1|D~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~2_combout\ = (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:1:a0~q\) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & 
-- (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & !\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~2_combout\);

-- Location: LCCOMB_X30_Y1_N22
\gen00:3:aa1|D~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~3_combout\ = (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:2:a0~q\))) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & 
-- !\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ $ (\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~3_combout\);

-- Location: LCCOMB_X30_Y1_N16
\gen00:3:aa1|D~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~4_combout\ = (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:0:a0~q\))) # (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\)) # (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~4_combout\);

-- Location: LCCOMB_X30_Y1_N2
\gen00:3:aa1|D~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~5_combout\ = (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & ((\a0|gen00:3:gen01:a0|gen00:0:a0~q\) # (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & 
-- (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~5_combout\);

-- Location: LCCOMB_X30_Y1_N12
\gen00:3:aa1|D~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:aa1|D~6_combout\ = (\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & (!\a0|gen00:3:gen01:a0|gen00:3:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:1:a0~q\ $ (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\a0|gen00:3:gen01:a0|gen00:0:a0~q\ & 
-- (!\a0|gen00:3:gen01:a0|gen00:1:a0~q\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\ $ (!\a0|gen00:3:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:aa1|D~6_combout\);

-- Location: IOIBUF_X25_Y0_N8
\plse_PB1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plse_PB1,
	o => \plse_PB1~input_o\);

-- Location: LCCOMB_X27_Y1_N4
\a0|gen02~0\ : cycloneiv_lcell_comb
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

-- Location: CLKCTRL_G16
\a0|gen02~0clkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X10_Y0_N1
\ctrl_SW_4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_SW_4,
	o => \ctrl_SW_4~input_o\);

-- Location: LCCOMB_X29_Y1_N12
\a0|a4|action_02|gen:0:action|Co~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:0:action|Co~0_combout\ = (\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & ((\a0|gen00:0:gen01:a0|gen00:0:a0~q\))) # (!\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\ctrl_SW_4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datab => \ctrl_SW_4~input_o\,
	datad => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	combout => \a0|a4|action_02|gen:0:action|Co~0_combout\);

-- Location: LCCOMB_X29_Y1_N2
\a0|a4|action_02|gen:1:action|Co~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:1:action|Co~0_combout\ = (\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a0|a4|action_02|gen:0:action|Co~0_combout\ & (\ctrl_SW_4~input_o\ $ (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\)))) # (!\a0|gen00:0:gen01:a0|gen00:1:a0~q\ & 
-- ((\ctrl_SW_4~input_o\ $ (!\a0|gen00:1:gen01:a0|gen00:1:a0~q\)) # (!\a0|a4|action_02|gen:0:action|Co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datab => \ctrl_SW_4~input_o\,
	datac => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a0|a4|action_02|gen:0:action|Co~0_combout\,
	combout => \a0|a4|action_02|gen:1:action|Co~0_combout\);

-- Location: LCCOMB_X29_Y1_N18
\a0|a4|action_02|gen:2:action|S~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N22
\a0|a2|O[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a2|O[2]~2_combout\ = (\plse_PB1~input_o\ & (((\a0|gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\plse_PB1~input_o\ & (\a0|a4|action_02|gen:1:action|Co~0_combout\ $ (((!\a0|a4|action_02|gen:2:action|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plse_PB1~input_o\,
	datab => \a0|a4|action_02|gen:1:action|Co~0_combout\,
	datac => \a0|gen00:3:gen01:a0|gen00:2:a0~q\,
	datad => \a0|a4|action_02|gen:2:action|S~0_combout\,
	combout => \a0|a2|O[2]~2_combout\);

-- Location: FF_X28_Y1_N23
\a0|gen00:4:gen02:a1|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	d => \a0|a2|O[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:2:a0~q\);

-- Location: LCCOMB_X29_Y1_N16
\a0|a4|action_02|gen:3:action|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:3:action|S~0_combout\ = \ctrl_SW_4~input_o\ $ (\a0|gen00:1:gen01:a0|gen00:3:a0~q\ $ (\a0|gen00:0:gen01:a0|gen00:3:a0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_SW_4~input_o\,
	datab => \a0|gen00:1:gen01:a0|gen00:3:a0~q\,
	datad => \a0|gen00:0:gen01:a0|gen00:3:a0~q\,
	combout => \a0|a4|action_02|gen:3:action|S~0_combout\);

-- Location: LCCOMB_X29_Y1_N28
\a0|a4|action_02|gen:2:action|Co~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:2:action|Co~0_combout\ = (\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & (\a0|a4|action_02|gen:1:action|Co~0_combout\ & (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (!\ctrl_SW_4~input_o\)))) # (!\a0|gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- ((\a0|a4|action_02|gen:1:action|Co~0_combout\) # (\a0|gen00:1:gen01:a0|gen00:2:a0~q\ $ (!\ctrl_SW_4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:1:gen01:a0|gen00:2:a0~q\,
	datab => \ctrl_SW_4~input_o\,
	datac => \a0|gen00:0:gen01:a0|gen00:2:a0~q\,
	datad => \a0|a4|action_02|gen:1:action|Co~0_combout\,
	combout => \a0|a4|action_02|gen:2:action|Co~0_combout\);

-- Location: LCCOMB_X28_Y1_N28
\a0|a2|O[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a2|O[3]~1_combout\ = (\plse_PB1~input_o\ & (\a0|gen00:3:gen01:a0|gen00:3:a0~q\)) # (!\plse_PB1~input_o\ & ((\a0|a4|action_02|gen:3:action|S~0_combout\ $ (!\a0|a4|action_02|gen:2:action|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plse_PB1~input_o\,
	datab => \a0|gen00:3:gen01:a0|gen00:3:a0~q\,
	datac => \a0|a4|action_02|gen:3:action|S~0_combout\,
	datad => \a0|a4|action_02|gen:2:action|Co~0_combout\,
	combout => \a0|a2|O[3]~1_combout\);

-- Location: FF_X28_Y1_N29
\a0|gen00:4:gen02:a1|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	d => \a0|a2|O[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:3:a0~q\);

-- Location: LCCOMB_X29_Y1_N0
\a0|a2|O[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a2|O[0]~0_combout\ = (\plse_PB1~input_o\ & (((\a0|gen00:3:gen01:a0|gen00:0:a0~q\)))) # (!\plse_PB1~input_o\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (((\a0|gen00:1:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:3:gen01:a0|gen00:0:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datad => \plse_PB1~input_o\,
	combout => \a0|a2|O[0]~0_combout\);

-- Location: FF_X28_Y1_N15
\a0|gen00:4:gen02:a1|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	asdata => \a0|a2|O[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:0:a0~q\);

-- Location: LCCOMB_X29_Y1_N6
\a0|a4|action_02|gen:1:action|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a4|action_02|gen:1:action|S~0_combout\ = \a0|gen00:1:gen01:a0|gen00:1:a0~q\ $ (((\a0|gen00:1:gen01:a0|gen00:0:a0~q\ & (\a0|gen00:0:gen01:a0|gen00:0:a0~q\ $ (\ctrl_SW_4~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \a0|gen00:1:gen01:a0|gen00:1:a0~q\,
	datac => \a0|gen00:1:gen01:a0|gen00:0:a0~q\,
	datad => \ctrl_SW_4~input_o\,
	combout => \a0|a4|action_02|gen:1:action|S~0_combout\);

-- Location: LCCOMB_X29_Y1_N4
\a0|a2|O[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a2|O[1]~3_combout\ = (\plse_PB1~input_o\ & (\a0|gen00:3:gen01:a0|gen00:1:a0~q\)) # (!\plse_PB1~input_o\ & ((\a0|gen00:0:gen01:a0|gen00:1:a0~q\ $ (\a0|a4|action_02|gen:1:action|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:3:gen01:a0|gen00:1:a0~q\,
	datab => \plse_PB1~input_o\,
	datac => \a0|gen00:0:gen01:a0|gen00:1:a0~q\,
	datad => \a0|a4|action_02|gen:1:action|S~0_combout\,
	combout => \a0|a2|O[1]~3_combout\);

-- Location: FF_X28_Y1_N9
\a0|gen00:4:gen02:a1|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|gen02~0clkctrl_outclk\,
	asdata => \a0|a2|O[1]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|gen00:4:gen02:a1|gen00:1:a0~q\);

-- Location: LCCOMB_X28_Y1_N18
\gen00:4:aa1|D~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N24
\gen00:4:aa1|D~1\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N26
\gen00:4:aa1|D~2\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N20
\gen00:4:aa1|D~3\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N30
\gen00:4:aa1|D~4\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N4
\gen00:4:aa1|D~5\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X28_Y1_N8
\gen00:4:aa1|D~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:4:aa1|D~6_combout\ = (\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ $ (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\)))) # (!\a0|gen00:4:gen02:a1|gen00:0:a0~q\ & 
-- (!\a0|gen00:4:gen02:a1|gen00:1:a0~q\ & (\a0|gen00:4:gen02:a1|gen00:2:a0~q\ $ (!\a0|gen00:4:gen02:a1|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	datab => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datac => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	datad => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	combout => \gen00:4:aa1|D~6_combout\);

-- Location: LCCOMB_X27_Y1_N14
\a0|gen03~0\ : cycloneiv_lcell_comb
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

-- Location: CLKCTRL_G15
\a0|gen03~0clkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X28_Y1_N6
\a0|a7|O~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a7|O~4_combout\ = (\plse_PB1~input_o\ & \a0|gen00:4:gen02:a1|gen00:1:a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse_PB1~input_o\,
	datad => \a0|gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \a0|a7|O~4_combout\);

-- Location: FF_X28_Y1_N7
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

-- Location: LCCOMB_X28_Y1_N12
\a0|a7|O~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a7|O~3_combout\ = (\plse_PB1~input_o\ & \a0|gen00:4:gen02:a1|gen00:2:a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plse_PB1~input_o\,
	datac => \a0|gen00:4:gen02:a1|gen00:2:a0~q\,
	combout => \a0|a7|O~3_combout\);

-- Location: FF_X28_Y1_N13
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

-- Location: LCCOMB_X28_Y1_N10
\a0|a7|O~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a7|O~2_combout\ = (\plse_PB1~input_o\ & \a0|gen00:4:gen02:a1|gen00:3:a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse_PB1~input_o\,
	datad => \a0|gen00:4:gen02:a1|gen00:3:a0~q\,
	combout => \a0|a7|O~2_combout\);

-- Location: FF_X28_Y1_N11
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

-- Location: LCCOMB_X29_Y1_N10
\a0|a7|O[0]~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X29_Y1_N24
\a0|a7|O[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a7|O[0]~1_combout\ = (\plse_PB1~input_o\ & (\a0|gen00:4:gen02:a1|gen00:0:a0~q\)) # (!\plse_PB1~input_o\ & ((\a0|a7|O[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:4:gen02:a1|gen00:0:a0~q\,
	datab => \plse_PB1~input_o\,
	datad => \a0|a7|O[0]~0_combout\,
	combout => \a0|a7|O[0]~1_combout\);

-- Location: FF_X29_Y1_N25
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

-- Location: LCCOMB_X41_Y1_N20
\gen00:5:aa1|D~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~0_combout\ = (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & 
-- (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~0_combout\);

-- Location: LCCOMB_X41_Y1_N30
\gen00:5:aa1|D~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~1_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:3:a0~q\))) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # 
-- (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ $ (\a0|gen00:5:gen03:a1|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~1_combout\);

-- Location: LCCOMB_X41_Y1_N4
\gen00:5:aa1|D~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~2_combout\ = (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:1:a0~q\) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & 
-- (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & !\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~2_combout\);

-- Location: LCCOMB_X41_Y1_N6
\gen00:5:aa1|D~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~3_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\))) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & 
-- !\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ $ (\a0|gen00:5:gen03:a1|gen00:0:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~3_combout\);

-- Location: LCCOMB_X41_Y1_N12
\gen00:5:aa1|D~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~4_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (((!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & \a0|gen00:5:gen03:a1|gen00:0:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & 
-- (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\)) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~4_combout\);

-- Location: LCCOMB_X41_Y1_N10
\gen00:5:aa1|D~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~5_combout\ = (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & ((\a0|gen00:5:gen03:a1|gen00:0:a0~q\) # (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & 
-- (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~5_combout\);

-- Location: LCCOMB_X41_Y1_N24
\gen00:5:aa1|D~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:5:aa1|D~6_combout\ = (\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:1:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:2:a0~q\)))) # (!\a0|gen00:5:gen03:a1|gen00:0:a0~q\ & 
-- (!\a0|gen00:5:gen03:a1|gen00:1:a0~q\ & (\a0|gen00:5:gen03:a1|gen00:2:a0~q\ $ (!\a0|gen00:5:gen03:a1|gen00:3:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|gen00:5:gen03:a1|gen00:1:a0~q\,
	datab => \a0|gen00:5:gen03:a1|gen00:2:a0~q\,
	datac => \a0|gen00:5:gen03:a1|gen00:3:a0~q\,
	datad => \a0|gen00:5:gen03:a1|gen00:0:a0~q\,
	combout => \gen00:5:aa1|D~6_combout\);

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


