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

-- DATE "10/26/2023 14:23:21"

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

ENTITY 	async_9_count IS
    PORT (
	clk : IN std_logic;
	clk_a : IN std_logic;
	pb_rst : IN std_logic;
	pause_ant : IN std_logic;
	pb_pause : IN std_logic;
	cmp_in : IN std_logic_vector(3 DOWNTO 0);
	Co : OUT std_logic;
	psed_o : OUT std_logic;
	cmp_oo : OUT std_logic;
	bool_test : OUT std_logic;
	outp : OUT std_logic_vector(3 DOWNTO 0)
	);
END async_9_count;

-- Design Ports Information
-- clk_a	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- psed_o	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_oo	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bool_test	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmp_in[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_pause	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause_ant	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_rst	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF async_9_count IS
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
SIGNAL ww_clk_a : std_logic;
SIGNAL ww_pb_rst : std_logic;
SIGNAL ww_pause_ant : std_logic;
SIGNAL ww_pb_pause : std_logic;
SIGNAL ww_cmp_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Co : std_logic;
SIGNAL ww_psed_o : std_logic;
SIGNAL ww_cmp_oo : std_logic;
SIGNAL ww_bool_test : std_logic;
SIGNAL ww_outp : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_a~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Co~output_o\ : std_logic;
SIGNAL \psed_o~output_o\ : std_logic;
SIGNAL \cmp_oo~output_o\ : std_logic;
SIGNAL \bool_test~output_o\ : std_logic;
SIGNAL \outp[0]~output_o\ : std_logic;
SIGNAL \outp[1]~output_o\ : std_logic;
SIGNAL \outp[2]~output_o\ : std_logic;
SIGNAL \outp[3]~output_o\ : std_logic;
SIGNAL \pb_pause~input_o\ : std_logic;
SIGNAL \cmp_in[3]~input_o\ : std_logic;
SIGNAL \cmp_in[2]~input_o\ : std_logic;
SIGNAL \gen00:3:ff0i~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pb_rst~input_o\ : std_logic;
SIGNAL \ff10~0_combout\ : std_logic;
SIGNAL \ff10~feeder_combout\ : std_logic;
SIGNAL \ff10~q\ : std_logic;
SIGNAL \gen00:3:ff0i~q\ : std_logic;
SIGNAL \pse_cmp|outp~1_combout\ : std_logic;
SIGNAL \cmp_in[0]~input_o\ : std_logic;
SIGNAL \cmp_in[1]~input_o\ : std_logic;
SIGNAL \pse_cmp|outp~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \clk_ps~0_combout\ : std_logic;
SIGNAL \clk_ps~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \ff00~0_combout\ : std_logic;
SIGNAL \ff00~q\ : std_logic;
SIGNAL \gen00:1:ff0i~0_combout\ : std_logic;
SIGNAL \gen00:1:ff0i~feeder_combout\ : std_logic;
SIGNAL \gen00:1:ff0i~q\ : std_logic;
SIGNAL \gen00:2:ff0i~0_combout\ : std_logic;
SIGNAL \gen00:2:ff0i~feeder_combout\ : std_logic;
SIGNAL \gen00:2:ff0i~q\ : std_logic;
SIGNAL \rst_cmp|outp~0_combout\ : std_logic;
SIGNAL \pse_cmp|outp~combout\ : std_logic;
SIGNAL \pause_ant~input_o\ : std_logic;
SIGNAL \bool_test~0_combout\ : std_logic;
SIGNAL \pse_cmp|ALT_INV_outp~combout\ : std_logic;
SIGNAL \ALT_INV_gen00:1:ff0i~q\ : std_logic;
SIGNAL \ALT_INV_gen00:2:ff0i~q\ : std_logic;
SIGNAL \ALT_INV_ff00~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clk_a <= clk_a;
ww_pb_rst <= pb_rst;
ww_pause_ant <= pause_ant;
ww_pb_pause <= pb_pause;
ww_cmp_in <= cmp_in;
Co <= ww_Co;
psed_o <= ww_psed_o;
cmp_oo <= ww_cmp_oo;
bool_test <= ww_bool_test;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\pse_cmp|ALT_INV_outp~combout\ <= NOT \pse_cmp|outp~combout\;
\ALT_INV_gen00:1:ff0i~q\ <= NOT \gen00:1:ff0i~q\;
\ALT_INV_gen00:2:ff0i~q\ <= NOT \gen00:2:ff0i~q\;
\ALT_INV_ff00~q\ <= NOT \ff00~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X54_Y54_N16
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

-- Location: IOOBUF_X54_Y54_N30
\psed_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_ps~q\,
	devoe => ww_devoe,
	o => \psed_o~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\cmp_oo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pse_cmp|ALT_INV_outp~combout\,
	devoe => ww_devoe,
	o => \cmp_oo~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\bool_test~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bool_test~0_combout\,
	devoe => ww_devoe,
	o => \bool_test~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\outp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff00~q\,
	devoe => ww_devoe,
	o => \outp[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
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

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOIBUF_X56_Y54_N15
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

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: IOIBUF_X60_Y54_N22
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

-- Location: LCCOMB_X55_Y53_N6
\gen00:3:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:3:ff0i~0_combout\ = !\gen00:3:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:3:ff0i~q\,
	combout => \gen00:3:ff0i~0_combout\);

-- Location: IOIBUF_X56_Y54_N22
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

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X56_Y53_N16
\ff10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ff10~0_combout\ = \rst_cmp|outp~0_combout\ $ (\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_cmp|outp~0_combout\,
	datad => \pb_rst~input_o\,
	combout => \ff10~0_combout\);

-- Location: LCCOMB_X56_Y53_N6
\ff10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ff10~feeder_combout\ = \ff10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ff10~0_combout\,
	combout => \ff10~feeder_combout\);

-- Location: FF_X56_Y53_N7
ff10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ff10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff10~q\);

-- Location: FF_X55_Y53_N7
\gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen00:2:ff0i~q\,
	d => \gen00:3:ff0i~0_combout\,
	clrn => \ff10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:3:ff0i~q\);

-- Location: LCCOMB_X56_Y53_N26
\pse_cmp|outp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pse_cmp|outp~1_combout\ = (\cmp_in[3]~input_o\ & ((\cmp_in[2]~input_o\ $ (\gen00:2:ff0i~q\)) # (!\gen00:3:ff0i~q\))) # (!\cmp_in[3]~input_o\ & ((\gen00:3:ff0i~q\) # (\cmp_in[2]~input_o\ $ (\gen00:2:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_in[3]~input_o\,
	datab => \cmp_in[2]~input_o\,
	datac => \gen00:3:ff0i~q\,
	datad => \gen00:2:ff0i~q\,
	combout => \pse_cmp|outp~1_combout\);

-- Location: IOIBUF_X58_Y54_N8
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

-- Location: IOIBUF_X58_Y54_N1
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

-- Location: LCCOMB_X57_Y53_N26
\pse_cmp|outp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pse_cmp|outp~0_combout\ = (\cmp_in[0]~input_o\ & ((\cmp_in[1]~input_o\ $ (\gen00:1:ff0i~q\)) # (!\ff00~q\))) # (!\cmp_in[0]~input_o\ & ((\ff00~q\) # (\cmp_in[1]~input_o\ $ (\gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_in[0]~input_o\,
	datab => \ff00~q\,
	datac => \cmp_in[1]~input_o\,
	datad => \gen00:1:ff0i~q\,
	combout => \pse_cmp|outp~0_combout\);

-- Location: LCCOMB_X56_Y53_N28
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL(\pb_pause~input_o\ $ (((!\pse_cmp|outp~1_combout\ & !\pse_cmp|outp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_pause~input_o\,
	datac => \pse_cmp|outp~1_combout\,
	datad => \pse_cmp|outp~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X55_Y53_N24
\clk_ps~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_ps~0_combout\ = !\clk_ps~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_ps~q\,
	combout => \clk_ps~0_combout\);

-- Location: FF_X55_Y53_N25
clk_ps : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	d => \clk_ps~0_combout\,
	clrn => \pb_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_ps~q\);

-- Location: LCCOMB_X57_Y53_N30
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = LCELL((!\clk_ps~q\ & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_ps~q\,
	datad => \clk~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X57_Y53_N28
\ff00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ff00~0_combout\ = !\ff00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff00~q\,
	combout => \ff00~0_combout\);

-- Location: FF_X57_Y53_N31
ff00 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~1_combout\,
	asdata => \ff00~0_combout\,
	clrn => \ff10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff00~q\);

-- Location: LCCOMB_X57_Y53_N24
\gen00:1:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:ff0i~0_combout\ = !\gen00:1:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:1:ff0i~q\,
	combout => \gen00:1:ff0i~0_combout\);

-- Location: LCCOMB_X57_Y53_N20
\gen00:1:ff0i~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:1:ff0i~feeder_combout\ = \gen00:1:ff0i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:1:ff0i~0_combout\,
	combout => \gen00:1:ff0i~feeder_combout\);

-- Location: FF_X57_Y53_N21
\gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ff00~q\,
	d => \gen00:1:ff0i~feeder_combout\,
	clrn => \ff10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:1:ff0i~q\);

-- Location: LCCOMB_X56_Y53_N12
\gen00:2:ff0i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:ff0i~0_combout\ = !\gen00:2:ff0i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:2:ff0i~q\,
	combout => \gen00:2:ff0i~0_combout\);

-- Location: LCCOMB_X56_Y53_N24
\gen00:2:ff0i~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen00:2:ff0i~feeder_combout\ = \gen00:2:ff0i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen00:2:ff0i~0_combout\,
	combout => \gen00:2:ff0i~feeder_combout\);

-- Location: FF_X56_Y53_N25
\gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_gen00:1:ff0i~q\,
	d => \gen00:2:ff0i~feeder_combout\,
	clrn => \ff10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen00:2:ff0i~q\);

-- Location: LCCOMB_X56_Y53_N30
\rst_cmp|outp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rst_cmp|outp~0_combout\ = (!\gen00:2:ff0i~q\ & (!\gen00:1:ff0i~q\ & (\gen00:3:ff0i~q\ & \ff00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen00:2:ff0i~q\,
	datab => \gen00:1:ff0i~q\,
	datac => \gen00:3:ff0i~q\,
	datad => \ff00~q\,
	combout => \rst_cmp|outp~0_combout\);

-- Location: LCCOMB_X56_Y53_N10
\pse_cmp|outp\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pse_cmp|outp~combout\ = (\pse_cmp|outp~1_combout\) # (\pse_cmp|outp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pse_cmp|outp~1_combout\,
	datad => \pse_cmp|outp~0_combout\,
	combout => \pse_cmp|outp~combout\);

-- Location: IOIBUF_X56_Y54_N8
\pause_ant~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause_ant,
	o => \pause_ant~input_o\);

-- Location: LCCOMB_X56_Y53_N22
\bool_test~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bool_test~0_combout\ = \pb_pause~input_o\ $ (((!\pse_cmp|outp~0_combout\ & (!\pse_cmp|outp~1_combout\ & \pause_ant~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_pause~input_o\,
	datab => \pse_cmp|outp~0_combout\,
	datac => \pse_cmp|outp~1_combout\,
	datad => \pause_ant~input_o\,
	combout => \bool_test~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\clk_a~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_a,
	o => \clk_a~input_o\);

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

ww_cmp_oo <= \cmp_oo~output_o\;

ww_bool_test <= \bool_test~output_o\;

ww_outp(0) <= \outp[0]~output_o\;

ww_outp(1) <= \outp[1]~output_o\;

ww_outp(2) <= \outp[2]~output_o\;

ww_outp(3) <= \outp[3]~output_o\;
END structure;


