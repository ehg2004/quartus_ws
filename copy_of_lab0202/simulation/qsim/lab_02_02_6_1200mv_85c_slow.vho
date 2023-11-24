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

-- DATE "09/26/2023 15:21:26"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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

ENTITY 	fourBitRegSixSumTest IS
    PORT (
	D : IN std_logic_vector(3 DOWNTO 0);
	Q0 : OUT std_logic_vector(3 DOWNTO 0);
	Q1 : OUT std_logic_vector(3 DOWNTO 0);
	Q2 : OUT std_logic_vector(3 DOWNTO 0);
	Q3 : OUT std_logic_vector(3 DOWNTO 0);
	Q4 : OUT std_logic_vector(3 DOWNTO 0);
	Q5 : OUT std_logic_vector(3 DOWNTO 0);
	plse : IN std_logic;
	clk : IN std_logic;
	ctrl : IN std_logic
	);
END fourBitRegSixSumTest;

-- Design Ports Information
-- Q0[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plse	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitRegSixSumTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_plse : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ctrl : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen02~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen03~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q0[0]~output_o\ : std_logic;
SIGNAL \Q0[1]~output_o\ : std_logic;
SIGNAL \Q0[2]~output_o\ : std_logic;
SIGNAL \Q0[3]~output_o\ : std_logic;
SIGNAL \Q1[0]~output_o\ : std_logic;
SIGNAL \Q1[1]~output_o\ : std_logic;
SIGNAL \Q1[2]~output_o\ : std_logic;
SIGNAL \Q1[3]~output_o\ : std_logic;
SIGNAL \Q2[0]~output_o\ : std_logic;
SIGNAL \Q2[1]~output_o\ : std_logic;
SIGNAL \Q2[2]~output_o\ : std_logic;
SIGNAL \Q2[3]~output_o\ : std_logic;
SIGNAL \Q3[0]~output_o\ : std_logic;
SIGNAL \Q3[1]~output_o\ : std_logic;
SIGNAL \Q3[2]~output_o\ : std_logic;
SIGNAL \Q3[3]~output_o\ : std_logic;
SIGNAL \Q4[0]~output_o\ : std_logic;
SIGNAL \Q4[1]~output_o\ : std_logic;
SIGNAL \Q4[2]~output_o\ : std_logic;
SIGNAL \Q4[3]~output_o\ : std_logic;
SIGNAL \Q5[0]~output_o\ : std_logic;
SIGNAL \Q5[1]~output_o\ : std_logic;
SIGNAL \Q5[2]~output_o\ : std_logic;
SIGNAL \Q5[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:2:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:0:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:2:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:1:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:1:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:2:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:2:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:0:a0~q\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:1:a0~q\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:2:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:2:a0~q\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:3:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:3:gen01:a0|gen00:3:a0~q\ : std_logic;
SIGNAL \plse~input_o\ : std_logic;
SIGNAL \gen02~0_combout\ : std_logic;
SIGNAL \gen02~0clkctrl_outclk\ : std_logic;
SIGNAL \a2|O[0]~0_combout\ : std_logic;
SIGNAL \gen00:4:gen02:a1|gen00:0:a0~feeder_combout\ : std_logic;
SIGNAL \gen00:4:gen02:a1|gen00:0:a0~q\ : std_logic;
SIGNAL \ctrl~input_o\ : std_logic;
SIGNAL \a4|action_02|gen:1:action|S~0_combout\ : std_logic;
SIGNAL \a2|O[1]~1_combout\ : std_logic;
SIGNAL \gen00:4:gen02:a1|gen00:1:a0~q\ : std_logic;
SIGNAL \a4|action_02|gen:2:action|S~0_combout\ : std_logic;
SIGNAL \a4|action_02|gen:0:action|Co~0_combout\ : std_logic;
SIGNAL \a4|action_02|gen:1:action|Co~0_combout\ : std_logic;
SIGNAL \a2|O[2]~2_combout\ : std_logic;
SIGNAL \gen00:4:gen02:a1|gen00:2:a0~q\ : std_logic;
SIGNAL \a4|action_02|gen:3:action|S~0_combout\ : std_logic;
SIGNAL \a4|action_02|gen:2:action|Co~0_combout\ : std_logic;
SIGNAL \a2|O[3]~3_combout\ : std_logic;
SIGNAL \gen00:4:gen02:a1|gen00:3:a0~q\ : std_logic;
SIGNAL \gen03~0_combout\ : std_logic;
SIGNAL \gen03~0clkctrl_outclk\ : std_logic;
SIGNAL \a7|O[0]~0_combout\ : std_logic;
SIGNAL \a7|O[0]~1_combout\ : std_logic;
SIGNAL \a7|O[0]~2_combout\ : std_logic;
SIGNAL \gen00:5:gen03:a1|gen00:0:a0~q\ : std_logic;
SIGNAL \a7|O~3_combout\ : std_logic;
SIGNAL \gen00:5:gen03:a1|gen00:1:a0~q\ : std_logic;
SIGNAL \a7|O~4_combout\ : std_logic;
SIGNAL \gen00:5:gen03:a1|gen00:2:a0~q\ : std_logic;
SIGNAL \a7|O~5_combout\ : std_logic;
SIGNAL \gen00:5:gen03:a1|gen00:3:a0~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_D <= D;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
Q5 <= ww_Q5;
ww_plse <= plse;
ww_clk <= clk;
ww_ctrl <= ctrl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\gen02~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen02~0_combout\);

\gen03~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen03~0_combout\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y11_N9
\Q0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:gen01:a0|gen00:0:a0~q\,
	devoe => ww_devoe,
	o => \Q0[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\Q0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:gen01:a0|gen00:1:a0~q\,
	devoe => ww_devoe,
	o => \Q0[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Q0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:gen01:a0|gen00:2:a0~q\,
	devoe => ww_devoe,
	o => \Q0[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Q0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:gen01:a0|gen00:3:a0~q\,
	devoe => ww_devoe,
	o => \Q0[3]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\Q1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:gen01:a0|gen00:0:a0~q\,
	devoe => ww_devoe,
	o => \Q1[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\Q1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:gen01:a0|gen00:1:a0~q\,
	devoe => ww_devoe,
	o => \Q1[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\Q1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:gen01:a0|gen00:2:a0~q\,
	devoe => ww_devoe,
	o => \Q1[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\Q1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:gen01:a0|gen00:3:a0~q\,
	devoe => ww_devoe,
	o => \Q1[3]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\Q2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:gen01:a0|gen00:0:a0~q\,
	devoe => ww_devoe,
	o => \Q2[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\Q2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:gen01:a0|gen00:1:a0~q\,
	devoe => ww_devoe,
	o => \Q2[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Q2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:gen01:a0|gen00:2:a0~q\,
	devoe => ww_devoe,
	o => \Q2[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Q2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:gen01:a0|gen00:3:a0~q\,
	devoe => ww_devoe,
	o => \Q2[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\Q3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:gen01:a0|gen00:0:a0~q\,
	devoe => ww_devoe,
	o => \Q3[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\Q3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:gen01:a0|gen00:1:a0~q\,
	devoe => ww_devoe,
	o => \Q3[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Q3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:gen01:a0|gen00:2:a0~q\,
	devoe => ww_devoe,
	o => \Q3[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\Q3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:gen01:a0|gen00:3:a0~q\,
	devoe => ww_devoe,
	o => \Q3[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\Q4[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:gen02:a1|gen00:0:a0~q\,
	devoe => ww_devoe,
	o => \Q4[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\Q4[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:gen02:a1|gen00:1:a0~q\,
	devoe => ww_devoe,
	o => \Q4[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\Q4[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:gen02:a1|gen00:2:a0~q\,
	devoe => ww_devoe,
	o => \Q4[2]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\Q4[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:4:gen02:a1|gen00:3:a0~q\,
	devoe => ww_devoe,
	o => \Q4[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Q5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:gen03:a1|gen00:0:a0~q\,
	devoe => ww_devoe,
	o => \Q5[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\Q5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:gen03:a1|gen00:1:a0~q\,
	devoe => ww_devoe,
	o => \Q5[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\Q5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:gen03:a1|gen00:2:a0~q\,
	devoe => ww_devoe,
	o => \Q5[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\Q5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:5:gen03:a1|gen00:3:a0~q\,
	devoe => ww_devoe,
	o => \Q5[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y24_N8
\D[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X31_Y11_N26
\gen00:0:gen01:a0|gen00:0:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:gen01:a0|gen00:0:a0~feeder_combout\ = \D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[0]~input_o\,
	combout => \gen00:0:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X31_Y11_N27
\gen00:0:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:0:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:0:gen01:a0|gen00:0:a0~q\);

-- Location: IOIBUF_X31_Y0_N1
\D[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X31_Y11_N14
\gen00:0:gen01:a0|gen00:1:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:gen01:a0|gen00:1:a0~feeder_combout\ = \D[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~input_o\,
	combout => \gen00:0:gen01:a0|gen00:1:a0~feeder_combout\);

-- Location: FF_X31_Y11_N15
\gen00:0:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:0:gen01:a0|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:0:gen01:a0|gen00:1:a0~q\);

-- Location: IOIBUF_X31_Y31_N1
\D[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X31_Y11_N10
\gen00:0:gen01:a0|gen00:2:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:gen01:a0|gen00:2:a0~feeder_combout\ = \D[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[2]~input_o\,
	combout => \gen00:0:gen01:a0|gen00:2:a0~feeder_combout\);

-- Location: FF_X31_Y11_N11
\gen00:0:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:0:gen01:a0|gen00:2:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:0:gen01:a0|gen00:2:a0~q\);

-- Location: IOIBUF_X29_Y31_N1
\D[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X30_Y11_N8
\gen00:0:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:gen01:a0|gen00:3:a0~feeder_combout\ = \D[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[3]~input_o\,
	combout => \gen00:0:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X30_Y11_N9
\gen00:0:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:0:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:0:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X31_Y11_N28
\gen00:1:gen01:a0|gen00:0:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:gen01:a0|gen00:0:a0~feeder_combout\ = \gen00:0:gen01:a0|gen00:0:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:0:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:1:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X31_Y11_N29
\gen00:1:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:1:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:gen01:a0|gen00:0:a0~q\);

-- Location: LCCOMB_X31_Y11_N4
\gen00:1:gen01:a0|gen00:1:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:gen01:a0|gen00:1:a0~feeder_combout\ = \gen00:0:gen01:a0|gen00:1:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:0:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:1:gen01:a0|gen00:1:a0~feeder_combout\);

-- Location: FF_X31_Y11_N5
\gen00:1:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:1:gen01:a0|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X30_Y11_N14
\gen00:1:gen01:a0|gen00:2:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:gen01:a0|gen00:2:a0~feeder_combout\ = \gen00:0:gen01:a0|gen00:2:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:0:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:1:gen01:a0|gen00:2:a0~feeder_combout\);

-- Location: FF_X30_Y11_N15
\gen00:1:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:1:gen01:a0|gen00:2:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X30_Y11_N12
\gen00:1:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:gen01:a0|gen00:3:a0~feeder_combout\ = \gen00:0:gen01:a0|gen00:3:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:0:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:1:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X30_Y11_N13
\gen00:1:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:1:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X32_Y11_N28
\gen00:2:gen01:a0|gen00:0:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:gen01:a0|gen00:0:a0~feeder_combout\ = \gen00:1:gen01:a0|gen00:0:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:2:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X32_Y11_N29
\gen00:2:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:2:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:gen01:a0|gen00:0:a0~q\);

-- Location: LCCOMB_X31_Y11_N8
\gen00:2:gen01:a0|gen00:1:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:gen01:a0|gen00:1:a0~feeder_combout\ = \gen00:1:gen01:a0|gen00:1:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:1:gen01:a0|gen00:1:a0~q\,
	combout => \gen00:2:gen01:a0|gen00:1:a0~feeder_combout\);

-- Location: FF_X31_Y11_N9
\gen00:2:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:2:gen01:a0|gen00:1:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X30_Y11_N6
\gen00:2:gen01:a0|gen00:2:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:gen01:a0|gen00:2:a0~feeder_combout\ = \gen00:1:gen01:a0|gen00:2:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:1:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:2:gen01:a0|gen00:2:a0~feeder_combout\);

-- Location: FF_X30_Y11_N7
\gen00:2:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:2:gen01:a0|gen00:2:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X30_Y11_N20
\gen00:2:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:gen01:a0|gen00:3:a0~feeder_combout\ = \gen00:1:gen01:a0|gen00:3:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen00:1:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:2:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X30_Y11_N21
\gen00:2:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:2:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:gen01:a0|gen00:3:a0~q\);

-- Location: LCCOMB_X32_Y11_N14
\gen00:3:gen01:a0|gen00:0:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:gen01:a0|gen00:0:a0~feeder_combout\ = \gen00:2:gen01:a0|gen00:0:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen00:2:gen01:a0|gen00:0:a0~q\,
	combout => \gen00:3:gen01:a0|gen00:0:a0~feeder_combout\);

-- Location: FF_X32_Y11_N15
\gen00:3:gen01:a0|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:3:gen01:a0|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:gen01:a0|gen00:0:a0~q\);

-- Location: FF_X31_Y11_N17
\gen00:3:gen01:a0|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \gen00:2:gen01:a0|gen00:1:a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:gen01:a0|gen00:1:a0~q\);

-- Location: LCCOMB_X30_Y11_N22
\gen00:3:gen01:a0|gen00:2:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:gen01:a0|gen00:2:a0~feeder_combout\ = \gen00:2:gen01:a0|gen00:2:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen00:2:gen01:a0|gen00:2:a0~q\,
	combout => \gen00:3:gen01:a0|gen00:2:a0~feeder_combout\);

-- Location: FF_X30_Y11_N23
\gen00:3:gen01:a0|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:3:gen01:a0|gen00:2:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:gen01:a0|gen00:2:a0~q\);

-- Location: LCCOMB_X30_Y11_N16
\gen00:3:gen01:a0|gen00:3:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:gen01:a0|gen00:3:a0~feeder_combout\ = \gen00:2:gen01:a0|gen00:3:a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen00:2:gen01:a0|gen00:3:a0~q\,
	combout => \gen00:3:gen01:a0|gen00:3:a0~feeder_combout\);

-- Location: FF_X30_Y11_N17
\gen00:3:gen01:a0|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \gen00:3:gen01:a0|gen00:3:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:gen01:a0|gen00:3:a0~q\);

-- Location: IOIBUF_X20_Y0_N8
\plse~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plse,
	o => \plse~input_o\);

-- Location: LCCOMB_X16_Y1_N24
\gen02~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen02~0_combout\ = LCELL((!\clk~input_o\) # (!\plse~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse~input_o\,
	datad => \clk~input_o\,
	combout => \gen02~0_combout\);

-- Location: CLKCTRL_G15
\gen02~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen02~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen02~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N10
\a2|O[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|O[0]~0_combout\ = (\plse~input_o\ & (((\gen00:3:gen01:a0|gen00:0:a0~q\)))) # (!\plse~input_o\ & (\gen00:1:gen01:a0|gen00:0:a0~q\ $ (((\gen00:0:gen01:a0|gen00:0:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plse~input_o\,
	datab => \gen00:1:gen01:a0|gen00:0:a0~q\,
	datac => \gen00:3:gen01:a0|gen00:0:a0~q\,
	datad => \gen00:0:gen01:a0|gen00:0:a0~q\,
	combout => \a2|O[0]~0_combout\);

-- Location: LCCOMB_X32_Y11_N12
\gen00:4:gen02:a1|gen00:0:a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:4:gen02:a1|gen00:0:a0~feeder_combout\ = \a2|O[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2|O[0]~0_combout\,
	combout => \gen00:4:gen02:a1|gen00:0:a0~feeder_combout\);

-- Location: FF_X32_Y11_N13
\gen00:4:gen02:a1|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen02~0clkctrl_outclk\,
	d => \gen00:4:gen02:a1|gen00:0:a0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:4:gen02:a1|gen00:0:a0~q\);

-- Location: IOIBUF_X31_Y0_N8
\ctrl~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl,
	o => \ctrl~input_o\);

-- Location: LCCOMB_X31_Y11_N2
\a4|action_02|gen:1:action|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a4|action_02|gen:1:action|S~0_combout\ = \gen00:1:gen01:a0|gen00:1:a0~q\ $ (((\gen00:1:gen01:a0|gen00:0:a0~q\ & (\gen00:0:gen01:a0|gen00:0:a0~q\ $ (\ctrl~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \ctrl~input_o\,
	datac => \gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \a4|action_02|gen:1:action|S~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\a2|O[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|O[1]~1_combout\ = (\plse~input_o\ & (((\gen00:3:gen01:a0|gen00:1:a0~q\)))) # (!\plse~input_o\ & (\gen00:0:gen01:a0|gen00:1:a0~q\ $ (((\a4|action_02|gen:1:action|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plse~input_o\,
	datab => \gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \gen00:3:gen01:a0|gen00:1:a0~q\,
	datad => \a4|action_02|gen:1:action|S~0_combout\,
	combout => \a2|O[1]~1_combout\);

-- Location: FF_X32_Y14_N9
\gen00:4:gen02:a1|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen02~0clkctrl_outclk\,
	asdata => \a2|O[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:4:gen02:a1|gen00:1:a0~q\);

-- Location: LCCOMB_X31_Y11_N24
\a4|action_02|gen:2:action|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a4|action_02|gen:2:action|S~0_combout\ = \ctrl~input_o\ $ (\gen00:0:gen01:a0|gen00:2:a0~q\ $ (\gen00:1:gen01:a0|gen00:2:a0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl~input_o\,
	datac => \gen00:0:gen01:a0|gen00:2:a0~q\,
	datad => \gen00:1:gen01:a0|gen00:2:a0~q\,
	combout => \a4|action_02|gen:2:action|S~0_combout\);

-- Location: LCCOMB_X31_Y11_N16
\a4|action_02|gen:0:action|Co~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a4|action_02|gen:0:action|Co~0_combout\ = (\gen00:1:gen01:a0|gen00:0:a0~q\ & (\gen00:0:gen01:a0|gen00:0:a0~q\)) # (!\gen00:1:gen01:a0|gen00:0:a0~q\ & ((\ctrl~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:gen01:a0|gen00:0:a0~q\,
	datab => \ctrl~input_o\,
	datad => \gen00:1:gen01:a0|gen00:0:a0~q\,
	combout => \a4|action_02|gen:0:action|Co~0_combout\);

-- Location: LCCOMB_X31_Y11_N20
\a4|action_02|gen:1:action|Co~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a4|action_02|gen:1:action|Co~0_combout\ = (\gen00:0:gen01:a0|gen00:1:a0~q\ & (!\a4|action_02|gen:0:action|Co~0_combout\ & (\ctrl~input_o\ $ (!\gen00:1:gen01:a0|gen00:1:a0~q\)))) # (!\gen00:0:gen01:a0|gen00:1:a0~q\ & ((\ctrl~input_o\ $ 
-- (!\gen00:1:gen01:a0|gen00:1:a0~q\)) # (!\a4|action_02|gen:0:action|Co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~input_o\,
	datab => \gen00:0:gen01:a0|gen00:1:a0~q\,
	datac => \gen00:1:gen01:a0|gen00:1:a0~q\,
	datad => \a4|action_02|gen:0:action|Co~0_combout\,
	combout => \a4|action_02|gen:1:action|Co~0_combout\);

-- Location: LCCOMB_X32_Y14_N14
\a2|O[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|O[2]~2_combout\ = (\plse~input_o\ & (((\gen00:3:gen01:a0|gen00:2:a0~q\)))) # (!\plse~input_o\ & (\a4|action_02|gen:2:action|S~0_combout\ $ ((!\a4|action_02|gen:1:action|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4|action_02|gen:2:action|S~0_combout\,
	datab => \a4|action_02|gen:1:action|Co~0_combout\,
	datac => \plse~input_o\,
	datad => \gen00:3:gen01:a0|gen00:2:a0~q\,
	combout => \a2|O[2]~2_combout\);

-- Location: FF_X32_Y14_N15
\gen00:4:gen02:a1|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen02~0clkctrl_outclk\,
	d => \a2|O[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:4:gen02:a1|gen00:2:a0~q\);

-- Location: LCCOMB_X31_Y11_N12
\a4|action_02|gen:3:action|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a4|action_02|gen:3:action|S~0_combout\ = \gen00:1:gen01:a0|gen00:3:a0~q\ $ (\ctrl~input_o\ $ (\gen00:0:gen01:a0|gen00:3:a0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:1:gen01:a0|gen00:3:a0~q\,
	datab => \ctrl~input_o\,
	datad => \gen00:0:gen01:a0|gen00:3:a0~q\,
	combout => \a4|action_02|gen:3:action|S~0_combout\);

-- Location: LCCOMB_X31_Y11_N22
\a4|action_02|gen:2:action|Co~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a4|action_02|gen:2:action|Co~0_combout\ = (\gen00:0:gen01:a0|gen00:2:a0~q\ & (\a4|action_02|gen:1:action|Co~0_combout\ & (\ctrl~input_o\ $ (!\gen00:1:gen01:a0|gen00:2:a0~q\)))) # (!\gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- ((\a4|action_02|gen:1:action|Co~0_combout\) # (\ctrl~input_o\ $ (!\gen00:1:gen01:a0|gen00:2:a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \ctrl~input_o\,
	datac => \gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a4|action_02|gen:1:action|Co~0_combout\,
	combout => \a4|action_02|gen:2:action|Co~0_combout\);

-- Location: LCCOMB_X32_Y14_N28
\a2|O[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|O[3]~3_combout\ = (\plse~input_o\ & (\gen00:3:gen01:a0|gen00:3:a0~q\)) # (!\plse~input_o\ & ((\a4|action_02|gen:3:action|S~0_combout\ $ (!\a4|action_02|gen:2:action|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:3:gen01:a0|gen00:3:a0~q\,
	datab => \a4|action_02|gen:3:action|S~0_combout\,
	datac => \plse~input_o\,
	datad => \a4|action_02|gen:2:action|Co~0_combout\,
	combout => \a2|O[3]~3_combout\);

-- Location: FF_X32_Y14_N29
\gen00:4:gen02:a1|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen02~0clkctrl_outclk\,
	d => \a2|O[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:4:gen02:a1|gen00:3:a0~q\);

-- Location: LCCOMB_X16_Y1_N18
\gen03~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen03~0_combout\ = LCELL((!\clk~input_o\) # (!\plse~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse~input_o\,
	datad => \clk~input_o\,
	combout => \gen03~0_combout\);

-- Location: CLKCTRL_G18
\gen03~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen03~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen03~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N18
\a7|O[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a7|O[0]~0_combout\ = (\gen00:0:gen01:a0|gen00:2:a0~q\ & ((\a4|action_02|gen:1:action|Co~0_combout\ & ((\gen00:1:gen01:a0|gen00:2:a0~q\))) # (!\a4|action_02|gen:1:action|Co~0_combout\ & (!\ctrl~input_o\)))) # (!\gen00:0:gen01:a0|gen00:2:a0~q\ & 
-- ((\a4|action_02|gen:1:action|Co~0_combout\ & (\ctrl~input_o\)) # (!\a4|action_02|gen:1:action|Co~0_combout\ & ((\gen00:1:gen01:a0|gen00:2:a0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:gen01:a0|gen00:2:a0~q\,
	datab => \ctrl~input_o\,
	datac => \gen00:1:gen01:a0|gen00:2:a0~q\,
	datad => \a4|action_02|gen:1:action|Co~0_combout\,
	combout => \a7|O[0]~0_combout\);

-- Location: LCCOMB_X31_Y11_N6
\a7|O[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a7|O[0]~1_combout\ = (\gen00:1:gen01:a0|gen00:3:a0~q\ & ((\a7|O[0]~0_combout\ & (!\ctrl~input_o\)) # (!\a7|O[0]~0_combout\ & ((\gen00:0:gen01:a0|gen00:3:a0~q\))))) # (!\gen00:1:gen01:a0|gen00:3:a0~q\ & ((\a7|O[0]~0_combout\ & 
-- ((\gen00:0:gen01:a0|gen00:3:a0~q\))) # (!\a7|O[0]~0_combout\ & (\ctrl~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:1:gen01:a0|gen00:3:a0~q\,
	datab => \ctrl~input_o\,
	datac => \gen00:0:gen01:a0|gen00:3:a0~q\,
	datad => \a7|O[0]~0_combout\,
	combout => \a7|O[0]~1_combout\);

-- Location: LCCOMB_X31_Y11_N30
\a7|O[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a7|O[0]~2_combout\ = (\plse~input_o\ & (\gen00:4:gen02:a1|gen00:0:a0~q\)) # (!\plse~input_o\ & ((\a7|O[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plse~input_o\,
	datac => \gen00:4:gen02:a1|gen00:0:a0~q\,
	datad => \a7|O[0]~1_combout\,
	combout => \a7|O[0]~2_combout\);

-- Location: FF_X31_Y11_N31
\gen00:5:gen03:a1|gen00:0:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen03~0clkctrl_outclk\,
	d => \a7|O[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:5:gen03:a1|gen00:0:a0~q\);

-- Location: LCCOMB_X32_Y14_N10
\a7|O~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a7|O~3_combout\ = (\plse~input_o\ & \gen00:4:gen02:a1|gen00:1:a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse~input_o\,
	datad => \gen00:4:gen02:a1|gen00:1:a0~q\,
	combout => \a7|O~3_combout\);

-- Location: FF_X32_Y14_N11
\gen00:5:gen03:a1|gen00:1:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen03~0clkctrl_outclk\,
	d => \a7|O~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:5:gen03:a1|gen00:1:a0~q\);

-- Location: LCCOMB_X32_Y14_N20
\a7|O~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a7|O~4_combout\ = (\plse~input_o\ & \gen00:4:gen02:a1|gen00:2:a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse~input_o\,
	datad => \gen00:4:gen02:a1|gen00:2:a0~q\,
	combout => \a7|O~4_combout\);

-- Location: FF_X32_Y14_N21
\gen00:5:gen03:a1|gen00:2:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen03~0clkctrl_outclk\,
	d => \a7|O~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:5:gen03:a1|gen00:2:a0~q\);

-- Location: LCCOMB_X32_Y14_N2
\a7|O~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a7|O~5_combout\ = (\plse~input_o\ & \gen00:4:gen02:a1|gen00:3:a0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \plse~input_o\,
	datad => \gen00:4:gen02:a1|gen00:3:a0~q\,
	combout => \a7|O~5_combout\);

-- Location: FF_X32_Y14_N3
\gen00:5:gen03:a1|gen00:3:a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen03~0clkctrl_outclk\,
	d => \a7|O~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:5:gen03:a1|gen00:3:a0~q\);

ww_Q0(0) <= \Q0[0]~output_o\;

ww_Q0(1) <= \Q0[1]~output_o\;

ww_Q0(2) <= \Q0[2]~output_o\;

ww_Q0(3) <= \Q0[3]~output_o\;

ww_Q1(0) <= \Q1[0]~output_o\;

ww_Q1(1) <= \Q1[1]~output_o\;

ww_Q1(2) <= \Q1[2]~output_o\;

ww_Q1(3) <= \Q1[3]~output_o\;

ww_Q2(0) <= \Q2[0]~output_o\;

ww_Q2(1) <= \Q2[1]~output_o\;

ww_Q2(2) <= \Q2[2]~output_o\;

ww_Q2(3) <= \Q2[3]~output_o\;

ww_Q3(0) <= \Q3[0]~output_o\;

ww_Q3(1) <= \Q3[1]~output_o\;

ww_Q3(2) <= \Q3[2]~output_o\;

ww_Q3(3) <= \Q3[3]~output_o\;

ww_Q4(0) <= \Q4[0]~output_o\;

ww_Q4(1) <= \Q4[1]~output_o\;

ww_Q4(2) <= \Q4[2]~output_o\;

ww_Q4(3) <= \Q4[3]~output_o\;

ww_Q5(0) <= \Q5[0]~output_o\;

ww_Q5(1) <= \Q5[1]~output_o\;

ww_Q5(2) <= \Q5[2]~output_o\;

ww_Q5(3) <= \Q5[3]~output_o\;
END structure;


