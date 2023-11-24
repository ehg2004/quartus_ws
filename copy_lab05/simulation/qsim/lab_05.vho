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

-- DATE "11/09/2023 15:35:39"

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

ENTITY 	sync_9_count IS
    PORT (
	clk : IN std_logic;
	pb_rst : IN std_logic;
	auto_ps : IN std_logic;
	pb_pause : IN std_logic;
	cmp_in : IN std_logic_vector(3 DOWNTO 0);
	Co : BUFFER std_logic;
	psed_o : BUFFER std_logic;
	outp : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END sync_9_count;

-- Design Ports Information
-- Co	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psed_o	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- auto_ps	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_pause	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sync_9_count IS
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
SIGNAL ww_pb_rst : std_logic;
SIGNAL ww_auto_ps : std_logic;
SIGNAL ww_pb_pause : std_logic;
SIGNAL ww_cmp_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Co : std_logic;
SIGNAL ww_psed_o : std_logic;
SIGNAL ww_outp : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Co~output_o\ : std_logic;
SIGNAL \psed_o~output_o\ : std_logic;
SIGNAL \outp[0]~output_o\ : std_logic;
SIGNAL \outp[1]~output_o\ : std_logic;
SIGNAL \outp[2]~output_o\ : std_logic;
SIGNAL \outp[3]~output_o\ : std_logic;
SIGNAL \pb_pause~input_o\ : std_logic;
SIGNAL \pause_trigger~0_combout\ : std_logic;
SIGNAL \pb_rst~input_o\ : std_logic;
SIGNAL \auto_ps~input_o\ : std_logic;
SIGNAL \cmp_in[2]~input_o\ : std_logic;
SIGNAL \cmp_in[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \gen00~0_combout\ : std_logic;
SIGNAL \lock_compTant~0_combout\ : std_logic;
SIGNAL \gen00~2_combout\ : std_logic;
SIGNAL \cmp_in[1]~input_o\ : std_logic;
SIGNAL \D_sM[1]~2_combout\ : std_logic;
SIGNAL \gen00~3_combout\ : std_logic;
SIGNAL \cmp_in[0]~input_o\ : std_logic;
SIGNAL \D_sM[0]~1_combout\ : std_logic;
SIGNAL \gen00:0:ff0i~feeder_combout\ : std_logic;
SIGNAL \gen00:0:ff0i~q\ : std_logic;
SIGNAL \gen00:3:ff0i~0_combout\ : std_logic;
SIGNAL \gen00:1:ff0i~q\ : std_logic;
SIGNAL \D_sM[3]~0_combout\ : std_logic;
SIGNAL \gen00:3:ff0i~q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \lock_compare_trigger~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \lock_compare_trigger~q\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \pause_trigger~q\ : std_logic;
SIGNAL \gen00~1_combout\ : std_logic;
SIGNAL \D_s[2]~0_combout\ : std_logic;
SIGNAL \gen00:2:ff0i~0_combout\ : std_logic;
SIGNAL \gen00:2:ff0i~q\ : std_logic;
SIGNAL \rst_cmp|outp~0_combout\ : std_logic;
SIGNAL \ALT_INV_pb_pause~input_o\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_pb_rst <= pb_rst;
ww_auto_ps <= auto_ps;
ww_pb_pause <= pb_pause;
ww_cmp_in <= cmp_in;
Co <= ww_Co;
psed_o <= ww_psed_o;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_pb_pause~input_o\ <= NOT \pb_pause~input_o\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
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

-- Location: IOOBUF_X49_Y54_N16
\Co~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rst_cmp|outp~0_combout\,
	devoe => ww_devoe,
	o => \Co~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\psed_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lock_compTant~0_combout\,
	devoe => ww_devoe,
	o => \psed_o~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\outp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \outp[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\outp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \outp[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\outp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \outp[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\outp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \outp[3]~output_o\);

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

-- Location: LCCOMB_X49_Y53_N6
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

-- Location: IOIBUF_X49_Y54_N22
\cmp_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_in(2),
	o => \cmp_in[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\cmp_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_in(3),
	o => \cmp_in[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
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

-- Location: LCCOMB_X50_Y53_N6
\gen00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00~0_combout\ = LCELL((!\pause_trigger~q\ & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pause_trigger~q\,
	datad => \clk~input_o\,
	combout => \gen00~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\lock_compTant~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lock_compTant~0_combout\ = (\auto_ps~input_o\ & \lock_compare_trigger~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datac => \lock_compare_trigger~q\,
	combout => \lock_compTant~0_combout\);

-- Location: LCCOMB_X52_Y53_N18
\gen00~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00~2_combout\ = LCELL((\clk~input_o\ & !\pause_trigger~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \pause_trigger~q\,
	combout => \gen00~2_combout\);

-- Location: IOIBUF_X54_Y54_N1
\cmp_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_in(1),
	o => \cmp_in[1]~input_o\);

-- Location: LCCOMB_X52_Y53_N28
\D_sM[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sM[1]~2_combout\ = (\lock_compTant~0_combout\ & (\cmp_in[1]~input_o\)) # (!\lock_compTant~0_combout\ & (((!\gen00:1:ff0i~q\ & !\gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_in[1]~input_o\,
	datab => \lock_compTant~0_combout\,
	datac => \gen00:1:ff0i~q\,
	datad => \gen00:3:ff0i~q\,
	combout => \D_sM[1]~2_combout\);

-- Location: LCCOMB_X50_Y53_N14
\gen00~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00~3_combout\ = LCELL((!\pause_trigger~q\ & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pause_trigger~q\,
	datad => \clk~input_o\,
	combout => \gen00~3_combout\);

-- Location: IOIBUF_X51_Y54_N22
\cmp_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmp_in(0),
	o => \cmp_in[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N28
\D_sM[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sM[0]~1_combout\ = (\auto_ps~input_o\ & ((\lock_compare_trigger~q\ & ((\cmp_in[0]~input_o\))) # (!\lock_compare_trigger~q\ & (!\gen00:0:ff0i~q\)))) # (!\auto_ps~input_o\ & (!\gen00:0:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:ff0i~q\,
	datab => \auto_ps~input_o\,
	datac => \cmp_in[0]~input_o\,
	datad => \lock_compare_trigger~q\,
	combout => \D_sM[0]~1_combout\);

-- Location: LCCOMB_X51_Y53_N6
\gen00:0:ff0i~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:0:ff0i~feeder_combout\ = \D_sM[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D_sM[0]~1_combout\,
	combout => \gen00:0:ff0i~feeder_combout\);

-- Location: FF_X51_Y53_N7
\gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen00~3_combout\,
	d => \gen00:0:ff0i~feeder_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:0:ff0i~q\);

-- Location: LCCOMB_X51_Y53_N12
\gen00:3:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:ff0i~0_combout\ = (\gen00:0:ff0i~q\) # ((\auto_ps~input_o\ & \lock_compare_trigger~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datac => \lock_compare_trigger~q\,
	datad => \gen00:0:ff0i~q\,
	combout => \gen00:3:ff0i~0_combout\);

-- Location: FF_X52_Y53_N29
\gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen00~2_combout\,
	d => \D_sM[1]~2_combout\,
	clrn => \pb_rst~input_o\,
	ena => \gen00:3:ff0i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:ff0i~q\);

-- Location: LCCOMB_X51_Y53_N30
\D_sM[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sM[3]~0_combout\ = (\lock_compTant~0_combout\ & (((\cmp_in[3]~input_o\)))) # (!\lock_compTant~0_combout\ & (\gen00:1:ff0i~q\ & ((\gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lock_compTant~0_combout\,
	datab => \gen00:1:ff0i~q\,
	datac => \cmp_in[3]~input_o\,
	datad => \gen00:2:ff0i~q\,
	combout => \D_sM[3]~0_combout\);

-- Location: FF_X51_Y53_N31
\gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen00~0_combout\,
	d => \D_sM[3]~0_combout\,
	clrn => \pb_rst~input_o\,
	ena => \gen00:3:ff0i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:ff0i~q\);

-- Location: LCCOMB_X50_Y53_N22
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\cmp_in[2]~input_o\ & (\gen00:2:ff0i~q\ & (\cmp_in[3]~input_o\ $ (!\gen00:3:ff0i~q\)))) # (!\cmp_in[2]~input_o\ & (!\gen00:2:ff0i~q\ & (\cmp_in[3]~input_o\ $ (!\gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_in[2]~input_o\,
	datab => \cmp_in[3]~input_o\,
	datac => \gen00:3:ff0i~q\,
	datad => \gen00:2:ff0i~q\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X51_Y53_N20
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\gen00:0:ff0i~q\ & (\cmp_in[0]~input_o\ & (\cmp_in[1]~input_o\ $ (!\gen00:1:ff0i~q\)))) # (!\gen00:0:ff0i~q\ & (!\cmp_in[0]~input_o\ & (\cmp_in[1]~input_o\ $ (!\gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:0:ff0i~q\,
	datab => \cmp_in[1]~input_o\,
	datac => \cmp_in[0]~input_o\,
	datad => \gen00:1:ff0i~q\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X50_Y53_N18
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL((\comb~3_combout\ & (\comb~2_combout\ & \auto_ps~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datac => \comb~2_combout\,
	datad => \auto_ps~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X49_Y53_N0
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

-- Location: LCCOMB_X49_Y53_N28
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

-- Location: FF_X49_Y53_N1
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

-- Location: LCCOMB_X49_Y53_N22
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ((\auto_ps~input_o\ & \lock_compare_trigger~q\)) # (!\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_rst~input_o\,
	datac => \auto_ps~input_o\,
	datad => \lock_compare_trigger~q\,
	combout => \comb~5_combout\);

-- Location: FF_X49_Y53_N7
pause_trigger : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb_pause~input_o\,
	d => \pause_trigger~0_combout\,
	clrn => \ALT_INV_comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pause_trigger~q\);

-- Location: LCCOMB_X50_Y53_N4
\gen00~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00~1_combout\ = LCELL((!\pause_trigger~q\ & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pause_trigger~q\,
	datad => \clk~input_o\,
	combout => \gen00~1_combout\);

-- Location: LCCOMB_X50_Y53_N28
\D_s[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_s[2]~0_combout\ = \gen00:2:ff0i~q\ $ (\gen00:0:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:2:ff0i~q\,
	datad => \gen00:0:ff0i~q\,
	combout => \D_s[2]~0_combout\);

-- Location: LCCOMB_X50_Y53_N12
\gen00:2:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:ff0i~0_combout\ = (\gen00:1:ff0i~q\ & ((\D_s[2]~0_combout\))) # (!\gen00:1:ff0i~q\ & (\gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen00:1:ff0i~q\,
	datac => \gen00:2:ff0i~q\,
	datad => \D_s[2]~0_combout\,
	combout => \gen00:2:ff0i~0_combout\);

-- Location: FF_X50_Y53_N13
\gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen00~1_combout\,
	d => \gen00:2:ff0i~0_combout\,
	asdata => \cmp_in[2]~input_o\,
	clrn => \pb_rst~input_o\,
	sload => \lock_compTant~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:ff0i~q\);

-- Location: LCCOMB_X50_Y53_N10
\rst_cmp|outp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rst_cmp|outp~0_combout\ = (!\gen00:2:ff0i~q\ & (\gen00:3:ff0i~q\ & (!\gen00:1:ff0i~q\ & \gen00:0:ff0i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:2:ff0i~q\,
	datab => \gen00:3:ff0i~q\,
	datac => \gen00:1:ff0i~q\,
	datad => \gen00:0:ff0i~q\,
	combout => \rst_cmp|outp~0_combout\);

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

ww_Co <= \Co~output_o\;

ww_psed_o <= \psed_o~output_o\;

ww_outp(0) <= \outp[0]~output_o\;

ww_outp(1) <= \outp[1]~output_o\;

ww_outp(2) <= \outp[2]~output_o\;

ww_outp(3) <= \outp[3]~output_o\;
END structure;


