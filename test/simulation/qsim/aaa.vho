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

-- DATE "11/11/2023 12:51:05"

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

ENTITY 	countMOD16sync IS
    PORT (
	clk : IN std_logic;
	mod8 : OUT std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END countMOD16sync;

-- Design Ports Information
-- mod8	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countMOD16sync IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mod8 : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mod8~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen00:0:a00~0_combout\ : std_logic;
SIGNAL \gen00:0:a00~q\ : std_logic;
SIGNAL \gen00:1:a00~0_combout\ : std_logic;
SIGNAL \gen00:1:a00~q\ : std_logic;
SIGNAL \gen00:2:a00~0_combout\ : std_logic;
SIGNAL \gen00:2:a00~q\ : std_logic;
SIGNAL \clk_prcss:v_cmp~0_combout\ : std_logic;
SIGNAL \mod08dff~q\ : std_logic;
SIGNAL \gen00:3:a00~0_combout\ : std_logic;
SIGNAL \gen00:3:a00~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
mod8 <= ww_mod8;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N2
\mod8~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod08dff~q\,
	devoe => ww_devoe,
	o => \mod8~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:a00~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:a00~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:a00~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:a00~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

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

-- Location: LCCOMB_X22_Y1_N10
\gen00:0:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:0:a00~0_combout\ = !\gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:0:a00~q\,
	combout => \gen00:0:a00~0_combout\);

-- Location: FF_X22_Y1_N11
\gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen00:0:a00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:0:a00~q\);

-- Location: LCCOMB_X22_Y1_N28
\gen00:1:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:a00~0_combout\ = \gen00:1:a00~q\ $ (\gen00:0:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:1:a00~q\,
	datad => \gen00:0:a00~q\,
	combout => \gen00:1:a00~0_combout\);

-- Location: FF_X22_Y1_N29
\gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen00:1:a00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:a00~q\);

-- Location: LCCOMB_X22_Y1_N18
\gen00:2:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:a00~0_combout\ = \gen00:2:a00~q\ $ (((\gen00:1:a00~q\ & \gen00:0:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen00:1:a00~q\,
	datac => \gen00:2:a00~q\,
	datad => \gen00:0:a00~q\,
	combout => \gen00:2:a00~0_combout\);

-- Location: FF_X22_Y1_N19
\gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen00:2:a00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:a00~q\);

-- Location: LCCOMB_X22_Y1_N24
\clk_prcss:v_cmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_prcss:v_cmp~0_combout\ = (\gen00:0:a00~q\ & (\gen00:1:a00~q\ & \gen00:2:a00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:a00~q\,
	datab => \gen00:1:a00~q\,
	datad => \gen00:2:a00~q\,
	combout => \clk_prcss:v_cmp~0_combout\);

-- Location: FF_X22_Y1_N25
mod08dff : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_prcss:v_cmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod08dff~q\);

-- Location: LCCOMB_X22_Y1_N16
\gen00:3:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:a00~0_combout\ = \gen00:3:a00~q\ $ (((\gen00:0:a00~q\ & (\gen00:2:a00~q\ & \gen00:1:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:a00~q\,
	datab => \gen00:2:a00~q\,
	datac => \gen00:3:a00~q\,
	datad => \gen00:1:a00~q\,
	combout => \gen00:3:a00~0_combout\);

-- Location: FF_X22_Y1_N17
\gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen00:3:a00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:a00~q\);

ww_mod8 <= \mod8~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


