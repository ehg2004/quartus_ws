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

-- DATE "10/20/2023 11:16:18"

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

ENTITY 	seq_detector_3bit_dec IS
    PORT (
	PB0 : IN std_logic;
	PB1 : IN std_logic;
	SW_i : IN std_logic;
	Q_dec : OUT std_logic_vector(7 DOWNTO 0)
	);
END seq_detector_3bit_dec;

-- Design Ports Information
-- Q_dec[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_dec[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_i	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seq_detector_3bit_dec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL ww_SW_i : std_logic;
SIGNAL ww_Q_dec : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q_dec[0]~output_o\ : std_logic;
SIGNAL \Q_dec[1]~output_o\ : std_logic;
SIGNAL \Q_dec[2]~output_o\ : std_logic;
SIGNAL \Q_dec[3]~output_o\ : std_logic;
SIGNAL \Q_dec[4]~output_o\ : std_logic;
SIGNAL \Q_dec[5]~output_o\ : std_logic;
SIGNAL \Q_dec[6]~output_o\ : std_logic;
SIGNAL \Q_dec[7]~output_o\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \SW_i~input_o\ : std_logic;
SIGNAL \seq_detec|D_s[0]~0_combout\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \seq_detec|gen00:0:ffi0~q\ : std_logic;
SIGNAL \seq_detec|D_s[2]~1_combout\ : std_logic;
SIGNAL \seq_detec|gen00:2:ffi0~q\ : std_logic;
SIGNAL \seq_detec|D_s[1]~2_combout\ : std_logic;
SIGNAL \seq_detec|gen00:1:ffi0~q\ : std_logic;
SIGNAL \dec_seq|D~0_combout\ : std_logic;
SIGNAL \dec_seq|D~1_combout\ : std_logic;
SIGNAL \dec_seq|D~2_combout\ : std_logic;
SIGNAL \dec_seq|D~3_combout\ : std_logic;
SIGNAL \dec_seq|D~4_combout\ : std_logic;
SIGNAL \dec_seq|D~5_combout\ : std_logic;
SIGNAL \dec_seq|D~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_PB0 <= PB0;
ww_PB1 <= PB1;
ww_SW_i <= SW_i;
Q_dec <= ww_Q_dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
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

-- Location: IOOBUF_X78_Y45_N9
\Q_dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~0_combout\,
	devoe => ww_devoe,
	o => \Q_dec[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Q_dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~1_combout\,
	devoe => ww_devoe,
	o => \Q_dec[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Q_dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~2_combout\,
	devoe => ww_devoe,
	o => \Q_dec[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\Q_dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~3_combout\,
	devoe => ww_devoe,
	o => \Q_dec[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Q_dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~4_combout\,
	devoe => ww_devoe,
	o => \Q_dec[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Q_dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~5_combout\,
	devoe => ww_devoe,
	o => \Q_dec[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Q_dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_seq|D~6_combout\,
	devoe => ww_devoe,
	o => \Q_dec[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\Q_dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q_dec[7]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\PB0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB0,
	o => \PB0~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW_i~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_i,
	o => \SW_i~input_o\);

-- Location: LCCOMB_X47_Y51_N24
\seq_detec|D_s[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seq_detec|D_s[0]~0_combout\ = (\SW_i~input_o\ & (\seq_detec|gen00:2:ffi0~q\ & (!\seq_detec|gen00:0:ffi0~q\ & \seq_detec|gen00:1:ffi0~q\))) # (!\SW_i~input_o\ & (((\seq_detec|gen00:1:ffi0~q\) # (!\seq_detec|gen00:0:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_i~input_o\,
	datab => \seq_detec|gen00:2:ffi0~q\,
	datac => \seq_detec|gen00:0:ffi0~q\,
	datad => \seq_detec|gen00:1:ffi0~q\,
	combout => \seq_detec|D_s[0]~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\PB1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB1,
	o => \PB1~input_o\);

-- Location: FF_X47_Y51_N25
\seq_detec|gen00:0:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	d => \seq_detec|D_s[0]~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seq_detec|gen00:0:ffi0~q\);

-- Location: LCCOMB_X47_Y51_N2
\seq_detec|D_s[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seq_detec|D_s[2]~1_combout\ = (\SW_i~input_o\ & (\seq_detec|gen00:1:ffi0~q\ & (\seq_detec|gen00:2:ffi0~q\ $ (\seq_detec|gen00:0:ffi0~q\)))) # (!\SW_i~input_o\ & (!\seq_detec|gen00:1:ffi0~q\ & (\seq_detec|gen00:2:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_i~input_o\,
	datab => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \seq_detec|D_s[2]~1_combout\);

-- Location: FF_X47_Y51_N3
\seq_detec|gen00:2:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	d => \seq_detec|D_s[2]~1_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seq_detec|gen00:2:ffi0~q\);

-- Location: LCCOMB_X47_Y51_N28
\seq_detec|D_s[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seq_detec|D_s[1]~2_combout\ = (\seq_detec|gen00:1:ffi0~q\ & ((\seq_detec|gen00:2:ffi0~q\ & ((!\seq_detec|gen00:0:ffi0~q\))) # (!\seq_detec|gen00:2:ffi0~q\ & (!\SW_i~input_o\)))) # (!\seq_detec|gen00:1:ffi0~q\ & (!\SW_i~input_o\ & 
-- ((\seq_detec|gen00:0:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_i~input_o\,
	datab => \seq_detec|gen00:2:ffi0~q\,
	datac => \seq_detec|gen00:1:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \seq_detec|D_s[1]~2_combout\);

-- Location: FF_X47_Y51_N29
\seq_detec|gen00:1:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	d => \seq_detec|D_s[1]~2_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seq_detec|gen00:1:ffi0~q\);

-- Location: LCCOMB_X71_Y50_N0
\dec_seq|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~0_combout\ = (!\seq_detec|gen00:1:ffi0~q\ & (\seq_detec|gen00:2:ffi0~q\ $ (\seq_detec|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~0_combout\);

-- Location: LCCOMB_X71_Y50_N6
\dec_seq|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~1_combout\ = (\seq_detec|gen00:2:ffi0~q\ & (\seq_detec|gen00:1:ffi0~q\ $ (\seq_detec|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~1_combout\);

-- Location: LCCOMB_X71_Y50_N4
\dec_seq|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~2_combout\ = (\seq_detec|gen00:1:ffi0~q\ & (!\seq_detec|gen00:2:ffi0~q\ & !\seq_detec|gen00:0:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~2_combout\);

-- Location: LCCOMB_X71_Y50_N14
\dec_seq|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~3_combout\ = (\seq_detec|gen00:1:ffi0~q\ & (\seq_detec|gen00:2:ffi0~q\ & \seq_detec|gen00:0:ffi0~q\)) # (!\seq_detec|gen00:1:ffi0~q\ & (\seq_detec|gen00:2:ffi0~q\ $ (\seq_detec|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~3_combout\);

-- Location: LCCOMB_X71_Y50_N20
\dec_seq|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~4_combout\ = (\seq_detec|gen00:0:ffi0~q\) # ((!\seq_detec|gen00:1:ffi0~q\ & \seq_detec|gen00:2:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~4_combout\);

-- Location: LCCOMB_X71_Y50_N18
\dec_seq|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~5_combout\ = (\seq_detec|gen00:1:ffi0~q\ & ((\seq_detec|gen00:0:ffi0~q\) # (!\seq_detec|gen00:2:ffi0~q\))) # (!\seq_detec|gen00:1:ffi0~q\ & (!\seq_detec|gen00:2:ffi0~q\ & \seq_detec|gen00:0:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~5_combout\);

-- Location: LCCOMB_X71_Y50_N12
\dec_seq|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec_seq|D~6_combout\ = (\seq_detec|gen00:1:ffi0~q\ & (\seq_detec|gen00:2:ffi0~q\ & \seq_detec|gen00:0:ffi0~q\)) # (!\seq_detec|gen00:1:ffi0~q\ & (!\seq_detec|gen00:2:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seq_detec|gen00:1:ffi0~q\,
	datac => \seq_detec|gen00:2:ffi0~q\,
	datad => \seq_detec|gen00:0:ffi0~q\,
	combout => \dec_seq|D~6_combout\);

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

ww_Q_dec(0) <= \Q_dec[0]~output_o\;

ww_Q_dec(1) <= \Q_dec[1]~output_o\;

ww_Q_dec(2) <= \Q_dec[2]~output_o\;

ww_Q_dec(3) <= \Q_dec[3]~output_o\;

ww_Q_dec(4) <= \Q_dec[4]~output_o\;

ww_Q_dec(5) <= \Q_dec[5]~output_o\;

ww_Q_dec(6) <= \Q_dec[6]~output_o\;

ww_Q_dec(7) <= \Q_dec[7]~output_o\;
END structure;


