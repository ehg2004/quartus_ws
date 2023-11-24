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

-- DATE "09/21/2023 23:48:23"

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

ENTITY 	twoDigcountDecComp IS
    PORT (
	D0 : OUT std_logic_vector(3 DOWNTO 0);
	D1 : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	Co : OUT std_logic
	);
END twoDigcountDecComp;

-- Design Ports Information
-- D0[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF twoDigcountDecComp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL \D0[0]~output_o\ : std_logic;
SIGNAL \D0[1]~output_o\ : std_logic;
SIGNAL \D0[2]~output_o\ : std_logic;
SIGNAL \D0[3]~output_o\ : std_logic;
SIGNAL \D1[0]~output_o\ : std_logic;
SIGNAL \D1[1]~output_o\ : std_logic;
SIGNAL \D1[2]~output_o\ : std_logic;
SIGNAL \D1[3]~output_o\ : std_logic;
SIGNAL \Co~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a0|a0|a0~0_combout\ : std_logic;
SIGNAL \a0|a0|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a0|gen00:1:a1~0_combout\ : std_logic;
SIGNAL \a0|a0|gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a0|gen00:2:a1~0_combout\ : std_logic;
SIGNAL \a0|a0|gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a0|gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a0|gen00:3:a1~0_combout\ : std_logic;
SIGNAL \a0|a0|gen00:3:a1~q\ : std_logic;
SIGNAL \a0|a0|a2|sDec10~combout\ : std_logic;
SIGNAL \a0|a0|a2|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a0|a2|sNew0~0_combout\ : std_logic;
SIGNAL \a0|a0|a2|a0~q\ : std_logic;
SIGNAL \a0|a0|a0~q\ : std_logic;
SIGNAL \a1|action_02|gen:2:action|S~combout\ : std_logic;
SIGNAL \a1|action_02|gen:3:action|S~combout\ : std_logic;
SIGNAL \a0|a1|a0~0_combout\ : std_logic;
SIGNAL \a0|a1|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a1|gen00:1:a1~0_combout\ : std_logic;
SIGNAL \a0|a1|gen00:1:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a1|gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a1|gen00:2:a1~0_combout\ : std_logic;
SIGNAL \a0|a1|gen00:2:a1~feeder_combout\ : std_logic;
SIGNAL \a0|a1|gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a1|gen00:3:a1~0_combout\ : std_logic;
SIGNAL \a0|a1|gen00:3:a1~q\ : std_logic;
SIGNAL \a0|a1|a2|sDec10~combout\ : std_logic;
SIGNAL \a0|a1|a2|a0~feeder_combout\ : std_logic;
SIGNAL \a0|a1|a2|sNew0~0_combout\ : std_logic;
SIGNAL \a0|a1|a2|a0~q\ : std_logic;
SIGNAL \a0|a1|a0~q\ : std_logic;
SIGNAL \a2|action_02|gen:2:action|S~combout\ : std_logic;
SIGNAL \a2|action_02|gen:3:action|S~combout\ : std_logic;
SIGNAL \a1|action_02|gen:3:action|ALT_INV_S~combout\ : std_logic;
SIGNAL \a0|a1|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a1|ALT_INV_gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a0|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a0|ALT_INV_gen00:1:a1~q\ : std_logic;
SIGNAL \a0|a1|ALT_INV_gen00:2:a1~q\ : std_logic;
SIGNAL \a0|a0|ALT_INV_gen00:2:a1~q\ : std_logic;
SIGNAL \a2|action_02|gen:3:action|ALT_INV_S~combout\ : std_logic;
SIGNAL \a0|a0|a2|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a1|a2|ALT_INV_a0~q\ : std_logic;
SIGNAL \a0|a1|a2|ALT_INV_sNew0~0_combout\ : std_logic;
SIGNAL \a0|a0|a2|ALT_INV_sNew0~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D0 <= ww_D0;
D1 <= ww_D1;
ww_clk <= clk;
Co <= ww_Co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\a1|action_02|gen:3:action|ALT_INV_S~combout\ <= NOT \a1|action_02|gen:3:action|S~combout\;
\a0|a1|ALT_INV_a0~q\ <= NOT \a0|a1|a0~q\;
\a0|a1|ALT_INV_gen00:1:a1~q\ <= NOT \a0|a1|gen00:1:a1~q\;
\a0|a0|ALT_INV_a0~q\ <= NOT \a0|a0|a0~q\;
\a0|a0|ALT_INV_gen00:1:a1~q\ <= NOT \a0|a0|gen00:1:a1~q\;
\a0|a1|ALT_INV_gen00:2:a1~q\ <= NOT \a0|a1|gen00:2:a1~q\;
\a0|a0|ALT_INV_gen00:2:a1~q\ <= NOT \a0|a0|gen00:2:a1~q\;
\a2|action_02|gen:3:action|ALT_INV_S~combout\ <= NOT \a2|action_02|gen:3:action|S~combout\;
\a0|a0|a2|ALT_INV_a0~q\ <= NOT \a0|a0|a2|a0~q\;
\a0|a1|a2|ALT_INV_a0~q\ <= NOT \a0|a1|a2|a0~q\;
\a0|a1|a2|ALT_INV_sNew0~0_combout\ <= NOT \a0|a1|a2|sNew0~0_combout\;
\a0|a0|a2|ALT_INV_sNew0~0_combout\ <= NOT \a0|a0|a2|sNew0~0_combout\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y31_N2
\D0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|a0|ALT_INV_a0~q\,
	devoe => ww_devoe,
	o => \D0[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\D0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|a0|gen00:1:a1~q\,
	devoe => ww_devoe,
	o => \D0[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\D0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a1|action_02|gen:2:action|S~combout\,
	devoe => ww_devoe,
	o => \D0[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\D0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a1|action_02|gen:3:action|ALT_INV_S~combout\,
	devoe => ww_devoe,
	o => \D0[3]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\D1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|a1|ALT_INV_a0~q\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\D1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|a1|gen00:1:a1~q\,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\D1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a2|action_02|gen:2:action|S~combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\D1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a2|action_02|gen:3:action|ALT_INV_S~combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\Co~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|a1|a2|ALT_INV_a0~q\,
	devoe => ww_devoe,
	o => \Co~output_o\);

-- Location: IOIBUF_X22_Y31_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X22_Y29_N4
\a0|a0|a0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a0|a0~0_combout\ = !\a0|a0|a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a0|a0~q\,
	combout => \a0|a0|a0~0_combout\);

-- Location: LCCOMB_X22_Y29_N14
\a0|a0|a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a0|a0~feeder_combout\ = \a0|a0|a0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a0|a0~0_combout\,
	combout => \a0|a0|a0~feeder_combout\);

-- Location: LCCOMB_X21_Y29_N4
\a0|a0|gen00:1:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:1:a1~0_combout\ = !\a0|a0|gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|a0|gen00:1:a1~q\,
	combout => \a0|a0|gen00:1:a1~0_combout\);

-- Location: FF_X21_Y29_N31
\a0|a0|gen00:1:a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|ALT_INV_a0~q\,
	asdata => \a0|a0|gen00:1:a1~0_combout\,
	clrn => \a0|a0|a2|ALT_INV_a0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|gen00:1:a1~q\);

-- Location: LCCOMB_X21_Y29_N26
\a0|a0|gen00:2:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a0|gen00:2:a1~0_combout\ = !\a0|a0|gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|a0|gen00:2:a1~q\,
	combout => \a0|a0|gen00:2:a1~0_combout\);

-- Location: LCCOMB_X21_Y29_N28
\a0|a0|gen00:2:a1~feeder\ : cycloneiv_lcell_comb
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

-- Location: FF_X21_Y29_N29
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

-- Location: LCCOMB_X23_Y29_N28
\a0|a0|gen00:3:a1~0\ : cycloneiv_lcell_comb
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

-- Location: FF_X23_Y29_N29
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

-- Location: LCCOMB_X22_Y29_N30
\a0|a0|a2|sDec10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a0|a2|sDec10~combout\ = LCELL((!\a0|a0|a0~q\ & (\a0|a0|gen00:1:a1~q\ & (!\a0|a0|gen00:2:a1~q\ & \a0|a0|gen00:3:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a0|a0~q\,
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|gen00:3:a1~q\,
	combout => \a0|a0|a2|sDec10~combout\);

-- Location: LCCOMB_X22_Y29_N0
\a0|a0|a2|a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a0|a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a0|a0|a2|a0~feeder_combout\);

-- Location: LCCOMB_X22_Y29_N22
\a0|a0|a2|sNew0~0\ : cycloneiv_lcell_comb
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

-- Location: FF_X22_Y29_N1
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

-- Location: FF_X22_Y29_N15
\a0|a0|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \a0|a0|a0~feeder_combout\,
	clrn => \a0|a0|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a0|a0~q\);

-- Location: LCCOMB_X22_Y29_N24
\a1|action_02|gen:2:action|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a1|action_02|gen:2:action|S~combout\ = \a0|a0|gen00:2:a1~q\ $ (\a0|a0|gen00:1:a1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|gen00:1:a1~q\,
	combout => \a1|action_02|gen:2:action|S~combout\);

-- Location: LCCOMB_X22_Y29_N26
\a1|action_02|gen:3:action|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a1|action_02|gen:3:action|S~combout\ = \a0|a0|gen00:3:a1~q\ $ (((\a0|a0|gen00:1:a1~q\) # (\a0|a0|gen00:2:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|a0|gen00:1:a1~q\,
	datac => \a0|a0|gen00:2:a1~q\,
	datad => \a0|a0|gen00:3:a1~q\,
	combout => \a1|action_02|gen:3:action|S~combout\);

-- Location: LCCOMB_X22_Y28_N30
\a0|a1|a0~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X22_Y28_N14
\a0|a1|a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a1|a0~feeder_combout\ = \a0|a1|a0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|a0~0_combout\,
	combout => \a0|a1|a0~feeder_combout\);

-- Location: LCCOMB_X20_Y28_N24
\a0|a1|gen00:1:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:1:a1~0_combout\ = !\a0|a1|gen00:1:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:1:a1~q\,
	combout => \a0|a1|gen00:1:a1~0_combout\);

-- Location: LCCOMB_X20_Y28_N28
\a0|a1|gen00:1:a1~feeder\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y28_N29
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

-- Location: LCCOMB_X20_Y28_N20
\a0|a1|gen00:2:a1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a1|gen00:2:a1~0_combout\ = !\a0|a1|gen00:2:a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0|a1|gen00:2:a1~q\,
	combout => \a0|a1|gen00:2:a1~0_combout\);

-- Location: LCCOMB_X20_Y28_N16
\a0|a1|gen00:2:a1~feeder\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y28_N17
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

-- Location: LCCOMB_X21_Y28_N24
\a0|a1|gen00:3:a1~0\ : cycloneiv_lcell_comb
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

-- Location: FF_X21_Y28_N25
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

-- Location: LCCOMB_X21_Y28_N16
\a0|a1|a2|sDec10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a1|a2|sDec10~combout\ = LCELL((!\a0|a1|gen00:2:a1~q\ & (\a0|a1|gen00:3:a1~q\ & (!\a0|a1|a0~q\ & \a0|a1|gen00:1:a1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:2:a1~q\,
	datab => \a0|a1|gen00:3:a1~q\,
	datac => \a0|a1|a0~q\,
	datad => \a0|a1|gen00:1:a1~q\,
	combout => \a0|a1|a2|sDec10~combout\);

-- Location: LCCOMB_X21_Y28_N28
\a0|a1|a2|a0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a1|a2|a0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \a0|a1|a2|a0~feeder_combout\);

-- Location: LCCOMB_X21_Y28_N8
\a0|a1|a2|sNew0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a0|a1|a2|sNew0~0_combout\ = (!\a0|a1|gen00:2:a1~q\ & (!\a0|a1|gen00:1:a1~q\ & (!\a0|a1|a0~q\ & !\a0|a1|gen00:3:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0|a1|gen00:2:a1~q\,
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|a0~q\,
	datad => \a0|a1|gen00:3:a1~q\,
	combout => \a0|a1|a2|sNew0~0_combout\);

-- Location: FF_X21_Y28_N29
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

-- Location: FF_X22_Y28_N15
\a0|a1|a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \a0|a0|a2|a0~q\,
	d => \a0|a1|a0~feeder_combout\,
	clrn => \a0|a1|a2|ALT_INV_a0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a0|a1|a0~q\);

-- Location: LCCOMB_X20_Y28_N30
\a2|action_02|gen:2:action|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|action_02|gen:2:action|S~combout\ = \a0|a1|gen00:2:a1~q\ $ (\a0|a1|gen00:1:a1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|gen00:1:a1~q\,
	combout => \a2|action_02|gen:2:action|S~combout\);

-- Location: LCCOMB_X20_Y28_N26
\a2|action_02|gen:3:action|S\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a2|action_02|gen:3:action|S~combout\ = \a0|a1|gen00:3:a1~q\ $ (((\a0|a1|gen00:1:a1~q\) # (\a0|a1|gen00:2:a1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a0|a1|gen00:1:a1~q\,
	datac => \a0|a1|gen00:2:a1~q\,
	datad => \a0|a1|gen00:3:a1~q\,
	combout => \a2|action_02|gen:3:action|S~combout\);

ww_D0(0) <= \D0[0]~output_o\;

ww_D0(1) <= \D0[1]~output_o\;

ww_D0(2) <= \D0[2]~output_o\;

ww_D0(3) <= \D0[3]~output_o\;

ww_D1(0) <= \D1[0]~output_o\;

ww_D1(1) <= \D1[1]~output_o\;

ww_D1(2) <= \D1[2]~output_o\;

ww_D1(3) <= \D1[3]~output_o\;

ww_Co <= \Co~output_o\;
END structure;


