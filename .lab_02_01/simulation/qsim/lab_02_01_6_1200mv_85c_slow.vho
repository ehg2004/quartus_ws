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

-- DATE "09/21/2023 22:52:29"

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

ENTITY 	countDec IS
    PORT (
	Si : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	Co : OUT std_logic
	);
END countDec;

-- Design Ports Information
-- Si[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Si[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Si[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Si[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countDec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Si : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL \Si[0]~output_o\ : std_logic;
SIGNAL \Si[1]~output_o\ : std_logic;
SIGNAL \Si[2]~output_o\ : std_logic;
SIGNAL \Si[3]~output_o\ : std_logic;
SIGNAL \Co~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a0~0_combout\ : std_logic;
SIGNAL \a0~feeder_combout\ : std_logic;
SIGNAL \gen00:1:a1~0_combout\ : std_logic;
SIGNAL \gen00:1:a1~feeder_combout\ : std_logic;
SIGNAL \gen00:1:a1~q\ : std_logic;
SIGNAL \gen00:2:a1~0_combout\ : std_logic;
SIGNAL \gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \gen00:2:a1~q\ : std_logic;
SIGNAL \gen00:3:a1~0_combout\ : std_logic;
SIGNAL \gen00:3:a1~q\ : std_logic;
SIGNAL \a2|sDec0~combout\ : std_logic;
SIGNAL \a2|a0~feeder_combout\ : std_logic;
SIGNAL \a2|sNew6~0_combout\ : std_logic;
SIGNAL \a2|a0~q\ : std_logic;
SIGNAL \a0~q\ : std_logic;
SIGNAL \a2|ALT_INV_sNew6~0_combout\ : std_logic;
SIGNAL \ALT_INV_gen00:3:a1~q\ : std_logic;
SIGNAL \ALT_INV_a0~q\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Si <= ww_Si;
ww_clk <= clk;
Co <= ww_Co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\a2|ALT_INV_sNew6~0_combout\ <= NOT \a2|sNew6~0_combout\;
\ALT_INV_gen00:3:a1~q\ <= NOT \gen00:3:a1~q\;
\ALT_INV_a0~q\ <= NOT \a0~q\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X26_Y0_N9
\Si[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_a0~q\,
	devoe => ww_devoe,
	o => \Si[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Si[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:a1~q\,
	devoe => ww_devoe,
	o => \Si[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Si[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:a1~q\,
	devoe => ww_devoe,
	o => \Si[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Si[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_gen00:3:a1~q\,
	devoe => ww_devoe,
	o => \Si[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Co~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a2|a0~q\,
	devoe => ww_devoe,
	o => \Co~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X26_Y1_N30
\a0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0~0_combout\ = !\a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0~q\,
	combout => \a0~0_combout\);

-- Location: LCCOMB_X26_Y1_N26
\a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0~feeder_combout\ = \a0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0~0_combout\,
	combout => \a0~feeder_combout\);

-- Location: LCCOMB_X27_Y1_N22
\gen00:1:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:a1~0_combout\ = !\gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:1:a1~q\,
	combout => \gen00:1:a1~0_combout\);

-- Location: LCCOMB_X27_Y1_N30
\gen00:1:a1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:1:a1~feeder_combout\ = \gen00:1:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:1:a1~0_combout\,
	combout => \gen00:1:a1~feeder_combout\);

-- Location: FF_X27_Y1_N31
\gen00:1:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_a0~q\,
	d => \gen00:1:a1~feeder_combout\,
	clrn => \a2|a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:a1~q\);

-- Location: LCCOMB_X27_Y1_N28
\gen00:2:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:a1~0_combout\ = !\gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:2:a1~q\,
	combout => \gen00:2:a1~0_combout\);

-- Location: LCCOMB_X27_Y1_N18
\gen00:2:a1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:2:a1~feeder_combout\ = \gen00:2:a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:2:a1~0_combout\,
	combout => \gen00:2:a1~feeder_combout\);

-- Location: FF_X27_Y1_N19
\gen00:2:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen00:1:a1~q\,
	d => \gen00:2:a1~feeder_combout\,
	clrn => \a2|a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:a1~q\);

-- Location: LCCOMB_X25_Y1_N14
\gen00:3:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gen00:3:a1~0_combout\ = !\gen00:3:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:3:a1~q\,
	combout => \gen00:3:a1~0_combout\);

-- Location: FF_X25_Y1_N15
\gen00:3:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen00:2:a1~q\,
	d => \gen00:3:a1~0_combout\,
	clrn => \a2|a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:a1~q\);

-- Location: LCCOMB_X26_Y1_N22
\a2|sDec0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|sDec0~combout\ = LCELL((!\gen00:3:a1~q\ & (\gen00:1:a1~q\ & (!\a0~q\ & \gen00:2:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:3:a1~q\,
	datab => \gen00:1:a1~q\,
	datac => \a0~q\,
	datad => \gen00:2:a1~q\,
	combout => \a2|sDec0~combout\);

-- Location: LCCOMB_X26_Y1_N28
\a2|a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a2|a0~feeder_combout\);

-- Location: LCCOMB_X26_Y1_N24
\a2|sNew6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|sNew6~0_combout\ = (!\gen00:2:a1~q\ & (!\a0~q\ & (!\gen00:1:a1~q\ & !\gen00:3:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:2:a1~q\,
	datab => \a0~q\,
	datac => \gen00:1:a1~q\,
	datad => \gen00:3:a1~q\,
	combout => \a2|sNew6~0_combout\);

-- Location: FF_X26_Y1_N29
\a2|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a2|sDec0~combout\,
	d => \a2|a0~feeder_combout\,
	clrn => \a2|ALT_INV_sNew6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a2|a0~q\);

-- Location: FF_X26_Y1_N27
a0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \a0~feeder_combout\,
	clrn => \a2|a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0~q\);

ww_Si(0) <= \Si[0]~output_o\;

ww_Si(1) <= \Si[1]~output_o\;

ww_Si(2) <= \Si[2]~output_o\;

ww_Si(3) <= \Si[3]~output_o\;

ww_Co <= \Co~output_o\;
END structure;


