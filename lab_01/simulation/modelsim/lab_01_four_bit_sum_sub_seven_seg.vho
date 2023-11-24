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

-- DATE "09/01/2023 09:35:18"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	four_bit_sum_seven_seg IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	ctrl : IN std_logic;
	A_dec : OUT std_logic_vector(7 DOWNTO 0);
	B_dec : OUT std_logic_vector(7 DOWNTO 0);
	S_dec : OUT std_logic_vector(7 DOWNTO 0);
	Cout_dec : OUT std_logic_vector(7 DOWNTO 0)
	);
END four_bit_sum_seven_seg;

-- Design Ports Information
-- A_dec[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout_dec[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_sum_seven_seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ctrl : std_logic;
SIGNAL ww_A_dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S_dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout_dec : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A_dec[0]~output_o\ : std_logic;
SIGNAL \A_dec[1]~output_o\ : std_logic;
SIGNAL \A_dec[2]~output_o\ : std_logic;
SIGNAL \A_dec[3]~output_o\ : std_logic;
SIGNAL \A_dec[4]~output_o\ : std_logic;
SIGNAL \A_dec[5]~output_o\ : std_logic;
SIGNAL \A_dec[6]~output_o\ : std_logic;
SIGNAL \A_dec[7]~output_o\ : std_logic;
SIGNAL \B_dec[0]~output_o\ : std_logic;
SIGNAL \B_dec[1]~output_o\ : std_logic;
SIGNAL \B_dec[2]~output_o\ : std_logic;
SIGNAL \B_dec[3]~output_o\ : std_logic;
SIGNAL \B_dec[4]~output_o\ : std_logic;
SIGNAL \B_dec[5]~output_o\ : std_logic;
SIGNAL \B_dec[6]~output_o\ : std_logic;
SIGNAL \B_dec[7]~output_o\ : std_logic;
SIGNAL \S_dec[0]~output_o\ : std_logic;
SIGNAL \S_dec[1]~output_o\ : std_logic;
SIGNAL \S_dec[2]~output_o\ : std_logic;
SIGNAL \S_dec[3]~output_o\ : std_logic;
SIGNAL \S_dec[4]~output_o\ : std_logic;
SIGNAL \S_dec[5]~output_o\ : std_logic;
SIGNAL \S_dec[6]~output_o\ : std_logic;
SIGNAL \S_dec[7]~output_o\ : std_logic;
SIGNAL \Cout_dec[0]~output_o\ : std_logic;
SIGNAL \Cout_dec[1]~output_o\ : std_logic;
SIGNAL \Cout_dec[2]~output_o\ : std_logic;
SIGNAL \Cout_dec[3]~output_o\ : std_logic;
SIGNAL \Cout_dec[4]~output_o\ : std_logic;
SIGNAL \Cout_dec[5]~output_o\ : std_logic;
SIGNAL \Cout_dec[6]~output_o\ : std_logic;
SIGNAL \Cout_dec[7]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \action_02|D~0_combout\ : std_logic;
SIGNAL \action_02|D~1_combout\ : std_logic;
SIGNAL \action_02|D~2_combout\ : std_logic;
SIGNAL \action_02|D~3_combout\ : std_logic;
SIGNAL \action_02|D~4_combout\ : std_logic;
SIGNAL \action_02|D~5_combout\ : std_logic;
SIGNAL \action_02|D~6_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \action_03|D~0_combout\ : std_logic;
SIGNAL \action_03|D~1_combout\ : std_logic;
SIGNAL \action_03|D~2_combout\ : std_logic;
SIGNAL \action_03|D~3_combout\ : std_logic;
SIGNAL \action_03|D~4_combout\ : std_logic;
SIGNAL \action_03|D~5_combout\ : std_logic;
SIGNAL \action_03|D~6_combout\ : std_logic;
SIGNAL \ctrl~input_o\ : std_logic;
SIGNAL \action_01|action_02|gen:3:action|Co~0_combout\ : std_logic;
SIGNAL \action_01|action_02|gen:3:action|Co~1_combout\ : std_logic;
SIGNAL \action_01|action_02|gen:3:action|Co~2_combout\ : std_logic;
SIGNAL \action_01|action_02|gen:3:action|Co~3_combout\ : std_logic;
SIGNAL \action_01|action_02|gen:3:action|ALT_INV_Co~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ctrl <= ctrl;
A_dec <= ww_A_dec;
B_dec <= ww_B_dec;
S_dec <= ww_S_dec;
Cout_dec <= ww_Cout_dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\action_01|action_02|gen:3:action|ALT_INV_Co~3_combout\ <= NOT \action_01|action_02|gen:3:action|Co~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N24
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
\A_dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~0_combout\,
	devoe => ww_devoe,
	o => \A_dec[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\A_dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~1_combout\,
	devoe => ww_devoe,
	o => \A_dec[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\A_dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~2_combout\,
	devoe => ww_devoe,
	o => \A_dec[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\A_dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~3_combout\,
	devoe => ww_devoe,
	o => \A_dec[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\A_dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~4_combout\,
	devoe => ww_devoe,
	o => \A_dec[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\A_dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~5_combout\,
	devoe => ww_devoe,
	o => \A_dec[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\A_dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_02|D~6_combout\,
	devoe => ww_devoe,
	o => \A_dec[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\A_dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A_dec[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\B_dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~0_combout\,
	devoe => ww_devoe,
	o => \B_dec[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\B_dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~1_combout\,
	devoe => ww_devoe,
	o => \B_dec[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\B_dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~2_combout\,
	devoe => ww_devoe,
	o => \B_dec[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\B_dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~3_combout\,
	devoe => ww_devoe,
	o => \B_dec[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\B_dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~4_combout\,
	devoe => ww_devoe,
	o => \B_dec[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\B_dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~5_combout\,
	devoe => ww_devoe,
	o => \B_dec[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\B_dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_03|D~6_combout\,
	devoe => ww_devoe,
	o => \B_dec[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\B_dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B_dec[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\S_dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\S_dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\S_dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\S_dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\S_dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\S_dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\S_dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\S_dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_dec[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Cout_dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_01|action_02|gen:3:action|ALT_INV_Co~3_combout\,
	devoe => ww_devoe,
	o => \Cout_dec[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Cout_dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cout_dec[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Cout_dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cout_dec[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\Cout_dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_01|action_02|gen:3:action|ALT_INV_Co~3_combout\,
	devoe => ww_devoe,
	o => \Cout_dec[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Cout_dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_01|action_02|gen:3:action|ALT_INV_Co~3_combout\,
	devoe => ww_devoe,
	o => \Cout_dec[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Cout_dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \action_01|action_02|gen:3:action|ALT_INV_Co~3_combout\,
	devoe => ww_devoe,
	o => \Cout_dec[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\Cout_dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Cout_dec[6]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\Cout_dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Cout_dec[7]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X59_Y53_N8
\action_02|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~0_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[0]~input_o\ $ (!\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~0_combout\);

-- Location: LCCOMB_X59_Y53_N26
\action_02|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~1_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((\A[3]~input_o\))) # (!\A[0]~input_o\ & (\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[2]~input_o\ & (\A[0]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~1_combout\);

-- Location: LCCOMB_X59_Y53_N12
\action_02|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~2_combout\ = (\A[2]~input_o\ & (\A[3]~input_o\ & ((\A[1]~input_o\) # (!\A[0]~input_o\)))) # (!\A[2]~input_o\ & (\A[1]~input_o\ & (!\A[0]~input_o\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~2_combout\);

-- Location: LCCOMB_X59_Y53_N6
\action_02|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~3_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & (\A[2]~input_o\)) # (!\A[0]~input_o\ & (!\A[2]~input_o\ & \A[3]~input_o\)))) # (!\A[1]~input_o\ & (!\A[3]~input_o\ & (\A[0]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~3_combout\);

-- Location: LCCOMB_X59_Y53_N16
\action_02|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~4_combout\ = (\A[1]~input_o\ & (\A[0]~input_o\ & ((!\A[3]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ & ((!\A[3]~input_o\))) # (!\A[2]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~4_combout\);

-- Location: LCCOMB_X59_Y53_N10
\action_02|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~5_combout\ = (\A[1]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\) # (!\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\A[2]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~5_combout\);

-- Location: LCCOMB_X59_Y53_N20
\action_02|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_02|D~6_combout\ = (\A[0]~input_o\ & (!\A[3]~input_o\ & (\A[1]~input_o\ $ (!\A[2]~input_o\)))) # (!\A[0]~input_o\ & (!\A[1]~input_o\ & (\A[2]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \action_02|D~6_combout\);

-- Location: IOIBUF_X58_Y54_N29
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X70_Y51_N8
\action_03|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~0_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~0_combout\);

-- Location: LCCOMB_X70_Y51_N26
\action_03|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~1_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\B[3]~input_o\))) # (!\B[0]~input_o\ & (\B[2]~input_o\)))) # (!\B[1]~input_o\ & (\B[2]~input_o\ & (\B[0]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~1_combout\);

-- Location: LCCOMB_X70_Y51_N12
\action_03|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~2_combout\ = (\B[2]~input_o\ & (\B[3]~input_o\ & ((\B[1]~input_o\) # (!\B[0]~input_o\)))) # (!\B[2]~input_o\ & (\B[1]~input_o\ & (!\B[0]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~2_combout\);

-- Location: LCCOMB_X70_Y51_N6
\action_03|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~3_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\B[0]~input_o\)) # (!\B[2]~input_o\ & (!\B[0]~input_o\ & \B[3]~input_o\)))) # (!\B[1]~input_o\ & (!\B[3]~input_o\ & (\B[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~3_combout\);

-- Location: LCCOMB_X70_Y51_N0
\action_03|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~4_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & !\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((!\B[3]~input_o\))) # (!\B[2]~input_o\ & (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~4_combout\);

-- Location: LCCOMB_X70_Y51_N18
\action_03|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~5_combout\ = (\B[1]~input_o\ & (!\B[3]~input_o\ & ((\B[0]~input_o\) # (!\B[2]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\B[2]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~5_combout\);

-- Location: LCCOMB_X70_Y51_N4
\action_03|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_03|D~6_combout\ = (\B[0]~input_o\ & (!\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\B[2]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_03|D~6_combout\);

-- Location: IOIBUF_X54_Y54_N22
\ctrl~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl,
	o => \ctrl~input_o\);

-- Location: LCCOMB_X59_Y53_N22
\action_01|action_02|gen:3:action|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_01|action_02|gen:3:action|Co~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (\ctrl~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \ctrl~input_o\,
	datad => \B[0]~input_o\,
	combout => \action_01|action_02|gen:3:action|Co~0_combout\);

-- Location: LCCOMB_X59_Y53_N24
\action_01|action_02|gen:3:action|Co~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_01|action_02|gen:3:action|Co~1_combout\ = (\action_01|action_02|gen:3:action|Co~0_combout\ & ((\B[1]~input_o\) # (\A[1]~input_o\ $ (\ctrl~input_o\)))) # (!\action_01|action_02|gen:3:action|Co~0_combout\ & (\B[1]~input_o\ & (\A[1]~input_o\ $ 
-- (\ctrl~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ctrl~input_o\,
	datac => \action_01|action_02|gen:3:action|Co~0_combout\,
	datad => \B[1]~input_o\,
	combout => \action_01|action_02|gen:3:action|Co~1_combout\);

-- Location: LCCOMB_X59_Y53_N18
\action_01|action_02|gen:3:action|Co~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_01|action_02|gen:3:action|Co~2_combout\ = (\B[2]~input_o\ & ((\action_01|action_02|gen:3:action|Co~1_combout\) # (\ctrl~input_o\ $ (\A[2]~input_o\)))) # (!\B[2]~input_o\ & (\action_01|action_02|gen:3:action|Co~1_combout\ & (\ctrl~input_o\ $ 
-- (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ctrl~input_o\,
	datac => \A[2]~input_o\,
	datad => \action_01|action_02|gen:3:action|Co~1_combout\,
	combout => \action_01|action_02|gen:3:action|Co~2_combout\);

-- Location: LCCOMB_X59_Y53_N4
\action_01|action_02|gen:3:action|Co~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \action_01|action_02|gen:3:action|Co~3_combout\ = (\action_01|action_02|gen:3:action|Co~2_combout\ & ((\B[3]~input_o\ & ((\ctrl~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\)))) # (!\action_01|action_02|gen:3:action|Co~2_combout\ & ((\B[3]~input_o\ & 
-- (!\A[3]~input_o\)) # (!\B[3]~input_o\ & ((!\ctrl~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \action_01|action_02|gen:3:action|Co~2_combout\,
	datac => \ctrl~input_o\,
	datad => \B[3]~input_o\,
	combout => \action_01|action_02|gen:3:action|Co~3_combout\);

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

ww_A_dec(0) <= \A_dec[0]~output_o\;

ww_A_dec(1) <= \A_dec[1]~output_o\;

ww_A_dec(2) <= \A_dec[2]~output_o\;

ww_A_dec(3) <= \A_dec[3]~output_o\;

ww_A_dec(4) <= \A_dec[4]~output_o\;

ww_A_dec(5) <= \A_dec[5]~output_o\;

ww_A_dec(6) <= \A_dec[6]~output_o\;

ww_A_dec(7) <= \A_dec[7]~output_o\;

ww_B_dec(0) <= \B_dec[0]~output_o\;

ww_B_dec(1) <= \B_dec[1]~output_o\;

ww_B_dec(2) <= \B_dec[2]~output_o\;

ww_B_dec(3) <= \B_dec[3]~output_o\;

ww_B_dec(4) <= \B_dec[4]~output_o\;

ww_B_dec(5) <= \B_dec[5]~output_o\;

ww_B_dec(6) <= \B_dec[6]~output_o\;

ww_B_dec(7) <= \B_dec[7]~output_o\;

ww_S_dec(0) <= \S_dec[0]~output_o\;

ww_S_dec(1) <= \S_dec[1]~output_o\;

ww_S_dec(2) <= \S_dec[2]~output_o\;

ww_S_dec(3) <= \S_dec[3]~output_o\;

ww_S_dec(4) <= \S_dec[4]~output_o\;

ww_S_dec(5) <= \S_dec[5]~output_o\;

ww_S_dec(6) <= \S_dec[6]~output_o\;

ww_S_dec(7) <= \S_dec[7]~output_o\;

ww_Cout_dec(0) <= \Cout_dec[0]~output_o\;

ww_Cout_dec(1) <= \Cout_dec[1]~output_o\;

ww_Cout_dec(2) <= \Cout_dec[2]~output_o\;

ww_Cout_dec(3) <= \Cout_dec[3]~output_o\;

ww_Cout_dec(4) <= \Cout_dec[4]~output_o\;

ww_Cout_dec(5) <= \Cout_dec[5]~output_o\;

ww_Cout_dec(6) <= \Cout_dec[6]~output_o\;

ww_Cout_dec(7) <= \Cout_dec[7]~output_o\;
END structure;


