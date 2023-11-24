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

-- DATE "09/21/2023 21:14:39"

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

ENTITY 	lab_02 IS
    PORT (
	pin_name2 : OUT std_logic;
	pin_name1 : IN std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic
	);
END lab_02;

-- Design Ports Information
-- pin_name2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL \pin_name2~output_o\ : std_logic;
SIGNAL \pin_name3~output_o\ : std_logic;
SIGNAL \pin_name4~output_o\ : std_logic;
SIGNAL \pin_name5~output_o\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~feeder_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~feeder_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst2~feeder_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~q\ : std_logic;
SIGNAL \ALT_INV_inst4~q\ : std_logic;
SIGNAL \ALT_INV_inst3~q\ : std_logic;
SIGNAL \ALT_INV_inst~q\ : std_logic;
SIGNAL \ALT_INV_pin_name1~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

pin_name2 <= ww_pin_name2;
ww_pin_name1 <= pin_name1;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst8~0_combout\ <= NOT \inst8~0_combout\;
\ALT_INV_inst2~q\ <= NOT \inst2~q\;
\ALT_INV_inst4~q\ <= NOT \inst4~q\;
\ALT_INV_inst3~q\ <= NOT \inst3~q\;
\ALT_INV_inst~q\ <= NOT \inst~q\;
\ALT_INV_pin_name1~input_o\ <= NOT \pin_name1~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
\pin_name2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \pin_name2~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\pin_name3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \pin_name3~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\pin_name4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \pin_name4~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\pin_name5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \pin_name5~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\pin_name1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: LCCOMB_X17_Y4_N24
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst~q\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = !\inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~q\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X16_Y4_N30
\inst3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~feeder_combout\ = \inst3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~0_combout\,
	combout => \inst3~feeder_combout\);

-- Location: FF_X16_Y4_N31
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst~q\,
	d => \inst3~feeder_combout\,
	clrn => \ALT_INV_inst2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X16_Y4_N20
\inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = !\inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X16_Y4_N6
\inst4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~feeder_combout\ = \inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~0_combout\,
	combout => \inst4~feeder_combout\);

-- Location: FF_X16_Y4_N7
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst3~q\,
	d => \inst4~feeder_combout\,
	clrn => \ALT_INV_inst2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X18_Y4_N24
\inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = !\inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5~q\,
	combout => \inst5~0_combout\);

-- Location: FF_X18_Y4_N25
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst4~q\,
	d => \inst5~0_combout\,
	clrn => \ALT_INV_inst2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X17_Y4_N2
inst7 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~combout\ = LCELL((!\inst~q\ & (\inst5~q\ & (!\inst4~q\ & \inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \inst5~q\,
	datac => \inst4~q\,
	datad => \inst3~q\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X17_Y4_N6
\inst2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N30
\inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (!\inst3~q\ & (!\inst4~q\ & (!\inst~q\ & !\inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst4~q\,
	datac => \inst~q\,
	datad => \inst5~q\,
	combout => \inst8~0_combout\);

-- Location: FF_X17_Y4_N7
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst2~feeder_combout\,
	clrn => \ALT_INV_inst8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: FF_X17_Y4_N13
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pin_name1~input_o\,
	asdata => \inst~0_combout\,
	clrn => \ALT_INV_inst2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

ww_pin_name2 <= \pin_name2~output_o\;

ww_pin_name3 <= \pin_name3~output_o\;

ww_pin_name4 <= \pin_name4~output_o\;

ww_pin_name5 <= \pin_name5~output_o\;
END structure;


