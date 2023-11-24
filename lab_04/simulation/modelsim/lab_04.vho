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

-- DATE "10/20/2023 11:30:10"

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

ENTITY 	lab_04 IS
    PORT (
	clk : IN std_logic;
	PB0 : IN std_logic;
	Q : OUT std_logic_vector(7 DOWNTO 0);
	led_o : OUT std_logic
	);
END lab_04;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_o	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_04 IS
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
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_o : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \aa02|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \led_o~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \aa02|Add0~0_combout\ : std_logic;
SIGNAL \aa02|count[0]~18_combout\ : std_logic;
SIGNAL \aa02|Add0~1\ : std_logic;
SIGNAL \aa02|Add0~2_combout\ : std_logic;
SIGNAL \aa02|Add0~3\ : std_logic;
SIGNAL \aa02|Add0~4_combout\ : std_logic;
SIGNAL \aa02|Add0~5\ : std_logic;
SIGNAL \aa02|Add0~6_combout\ : std_logic;
SIGNAL \aa02|Add0~7\ : std_logic;
SIGNAL \aa02|Add0~8_combout\ : std_logic;
SIGNAL \aa02|Add0~9\ : std_logic;
SIGNAL \aa02|Add0~10_combout\ : std_logic;
SIGNAL \aa02|Add0~11\ : std_logic;
SIGNAL \aa02|Add0~12_combout\ : std_logic;
SIGNAL \aa02|Add0~13\ : std_logic;
SIGNAL \aa02|Add0~14_combout\ : std_logic;
SIGNAL \aa02|Add0~15\ : std_logic;
SIGNAL \aa02|Add0~16_combout\ : std_logic;
SIGNAL \aa02|Add0~17\ : std_logic;
SIGNAL \aa02|Add0~18_combout\ : std_logic;
SIGNAL \aa02|Add0~19\ : std_logic;
SIGNAL \aa02|Add0~20_combout\ : std_logic;
SIGNAL \aa02|count~7_combout\ : std_logic;
SIGNAL \aa02|Add0~21\ : std_logic;
SIGNAL \aa02|Add0~22_combout\ : std_logic;
SIGNAL \aa02|count~8_combout\ : std_logic;
SIGNAL \aa02|Add0~23\ : std_logic;
SIGNAL \aa02|Add0~24_combout\ : std_logic;
SIGNAL \aa02|count~9_combout\ : std_logic;
SIGNAL \aa02|Add0~25\ : std_logic;
SIGNAL \aa02|Add0~26_combout\ : std_logic;
SIGNAL \aa02|count~10_combout\ : std_logic;
SIGNAL \aa02|Add0~27\ : std_logic;
SIGNAL \aa02|Add0~28_combout\ : std_logic;
SIGNAL \aa02|Add0~29\ : std_logic;
SIGNAL \aa02|Add0~30_combout\ : std_logic;
SIGNAL \aa02|count~11_combout\ : std_logic;
SIGNAL \aa02|Add0~31\ : std_logic;
SIGNAL \aa02|Add0~32_combout\ : std_logic;
SIGNAL \aa02|Add0~33\ : std_logic;
SIGNAL \aa02|Add0~34_combout\ : std_logic;
SIGNAL \aa02|count~12_combout\ : std_logic;
SIGNAL \aa02|Add0~35\ : std_logic;
SIGNAL \aa02|Add0~36_combout\ : std_logic;
SIGNAL \aa02|count~13_combout\ : std_logic;
SIGNAL \aa02|Add0~37\ : std_logic;
SIGNAL \aa02|Add0~38_combout\ : std_logic;
SIGNAL \aa02|count~14_combout\ : std_logic;
SIGNAL \aa02|Add0~39\ : std_logic;
SIGNAL \aa02|Add0~40_combout\ : std_logic;
SIGNAL \aa02|count~15_combout\ : std_logic;
SIGNAL \aa02|Add0~41\ : std_logic;
SIGNAL \aa02|Add0~42_combout\ : std_logic;
SIGNAL \aa02|count~16_combout\ : std_logic;
SIGNAL \aa02|Add0~43\ : std_logic;
SIGNAL \aa02|Add0~44_combout\ : std_logic;
SIGNAL \aa02|Add0~45\ : std_logic;
SIGNAL \aa02|Add0~46_combout\ : std_logic;
SIGNAL \aa02|count~17_combout\ : std_logic;
SIGNAL \aa02|Equal0~6_combout\ : std_logic;
SIGNAL \aa02|Equal0~5_combout\ : std_logic;
SIGNAL \aa02|Add0~47\ : std_logic;
SIGNAL \aa02|Add0~48_combout\ : std_logic;
SIGNAL \aa02|Add0~49\ : std_logic;
SIGNAL \aa02|Add0~50_combout\ : std_logic;
SIGNAL \aa02|Add0~51\ : std_logic;
SIGNAL \aa02|Add0~52_combout\ : std_logic;
SIGNAL \aa02|Add0~53\ : std_logic;
SIGNAL \aa02|Add0~54_combout\ : std_logic;
SIGNAL \aa02|Add0~55\ : std_logic;
SIGNAL \aa02|Add0~56_combout\ : std_logic;
SIGNAL \aa02|Add0~57\ : std_logic;
SIGNAL \aa02|Add0~58_combout\ : std_logic;
SIGNAL \aa02|Add0~59\ : std_logic;
SIGNAL \aa02|Add0~60_combout\ : std_logic;
SIGNAL \aa02|Add0~61\ : std_logic;
SIGNAL \aa02|Add0~62_combout\ : std_logic;
SIGNAL \aa02|Equal0~8_combout\ : std_logic;
SIGNAL \aa02|Equal0~7_combout\ : std_logic;
SIGNAL \aa02|Equal0~9_combout\ : std_logic;
SIGNAL \aa02|count~6_combout\ : std_logic;
SIGNAL \aa02|Equal0~0_combout\ : std_logic;
SIGNAL \aa02|Equal0~1_combout\ : std_logic;
SIGNAL \aa02|Equal0~3_combout\ : std_logic;
SIGNAL \aa02|Equal0~2_combout\ : std_logic;
SIGNAL \aa02|Equal0~4_combout\ : std_logic;
SIGNAL \aa02|tmp~0_combout\ : std_logic;
SIGNAL \aa02|tmp~feeder_combout\ : std_logic;
SIGNAL \aa02|tmp~q\ : std_logic;
SIGNAL \aa02|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \aa00|gen00:3:ffi0~0_combout\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \aa00|gen00:3:ffi0~q\ : std_logic;
SIGNAL \aa00|gen00:0:ffi0~0_combout\ : std_logic;
SIGNAL \aa00|gen00:0:ffi0~q\ : std_logic;
SIGNAL \aa00|gen00:1:ffi0~0_combout\ : std_logic;
SIGNAL \aa00|gen00:1:ffi0~q\ : std_logic;
SIGNAL \aa00|gen00:2:ffi0~0_combout\ : std_logic;
SIGNAL \aa00|gen00:2:ffi0~q\ : std_logic;
SIGNAL \aa01|D~0_combout\ : std_logic;
SIGNAL \aa01|D~1_combout\ : std_logic;
SIGNAL \aa01|D~2_combout\ : std_logic;
SIGNAL \aa01|D~3_combout\ : std_logic;
SIGNAL \aa01|D~4_combout\ : std_logic;
SIGNAL \aa01|D~5_combout\ : std_logic;
SIGNAL \aa01|D~6_combout\ : std_logic;
SIGNAL \aa02|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_PB0 <= PB0;
Q <= ww_Q;
led_o <= ww_led_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\aa02|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \aa02|tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~0_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~1_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~2_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~3_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\Q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~4_combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\Q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~5_combout\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\Q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa01|D~6_combout\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\led_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa02|tmp~q\,
	devoe => ww_devoe,
	o => \led_o~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X46_Y49_N0
\aa02|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~0_combout\ = \aa02|count\(0) $ (GND)
-- \aa02|Add0~1\ = CARRY(!\aa02|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(0),
	datad => VCC,
	combout => \aa02|Add0~0_combout\,
	cout => \aa02|Add0~1\);

-- Location: LCCOMB_X45_Y49_N6
\aa02|count[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count[0]~18_combout\ = !\aa02|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa02|Add0~0_combout\,
	combout => \aa02|count[0]~18_combout\);

-- Location: FF_X46_Y49_N27
\aa02|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aa02|count[0]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(0));

-- Location: LCCOMB_X46_Y49_N2
\aa02|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~2_combout\ = (\aa02|count\(1) & (!\aa02|Add0~1\)) # (!\aa02|count\(1) & ((\aa02|Add0~1\) # (GND)))
-- \aa02|Add0~3\ = CARRY((!\aa02|Add0~1\) # (!\aa02|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(1),
	datad => VCC,
	cin => \aa02|Add0~1\,
	combout => \aa02|Add0~2_combout\,
	cout => \aa02|Add0~3\);

-- Location: FF_X46_Y49_N3
\aa02|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(1));

-- Location: LCCOMB_X46_Y49_N4
\aa02|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~4_combout\ = (\aa02|count\(2) & (\aa02|Add0~3\ $ (GND))) # (!\aa02|count\(2) & (!\aa02|Add0~3\ & VCC))
-- \aa02|Add0~5\ = CARRY((\aa02|count\(2) & !\aa02|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(2),
	datad => VCC,
	cin => \aa02|Add0~3\,
	combout => \aa02|Add0~4_combout\,
	cout => \aa02|Add0~5\);

-- Location: FF_X46_Y49_N5
\aa02|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(2));

-- Location: LCCOMB_X46_Y49_N6
\aa02|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~6_combout\ = (\aa02|count\(3) & (!\aa02|Add0~5\)) # (!\aa02|count\(3) & ((\aa02|Add0~5\) # (GND)))
-- \aa02|Add0~7\ = CARRY((!\aa02|Add0~5\) # (!\aa02|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(3),
	datad => VCC,
	cin => \aa02|Add0~5\,
	combout => \aa02|Add0~6_combout\,
	cout => \aa02|Add0~7\);

-- Location: FF_X46_Y49_N7
\aa02|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(3));

-- Location: LCCOMB_X46_Y49_N8
\aa02|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~8_combout\ = (\aa02|count\(4) & (\aa02|Add0~7\ $ (GND))) # (!\aa02|count\(4) & (!\aa02|Add0~7\ & VCC))
-- \aa02|Add0~9\ = CARRY((\aa02|count\(4) & !\aa02|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(4),
	datad => VCC,
	cin => \aa02|Add0~7\,
	combout => \aa02|Add0~8_combout\,
	cout => \aa02|Add0~9\);

-- Location: FF_X46_Y49_N9
\aa02|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(4));

-- Location: LCCOMB_X46_Y49_N10
\aa02|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~10_combout\ = (\aa02|count\(5) & (!\aa02|Add0~9\)) # (!\aa02|count\(5) & ((\aa02|Add0~9\) # (GND)))
-- \aa02|Add0~11\ = CARRY((!\aa02|Add0~9\) # (!\aa02|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(5),
	datad => VCC,
	cin => \aa02|Add0~9\,
	combout => \aa02|Add0~10_combout\,
	cout => \aa02|Add0~11\);

-- Location: LCCOMB_X46_Y49_N12
\aa02|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~12_combout\ = (\aa02|count\(6) & (\aa02|Add0~11\ $ (GND))) # (!\aa02|count\(6) & (!\aa02|Add0~11\ & VCC))
-- \aa02|Add0~13\ = CARRY((\aa02|count\(6) & !\aa02|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(6),
	datad => VCC,
	cin => \aa02|Add0~11\,
	combout => \aa02|Add0~12_combout\,
	cout => \aa02|Add0~13\);

-- Location: FF_X46_Y49_N13
\aa02|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(6));

-- Location: LCCOMB_X46_Y49_N14
\aa02|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~14_combout\ = (\aa02|count\(7) & (!\aa02|Add0~13\)) # (!\aa02|count\(7) & ((\aa02|Add0~13\) # (GND)))
-- \aa02|Add0~15\ = CARRY((!\aa02|Add0~13\) # (!\aa02|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(7),
	datad => VCC,
	cin => \aa02|Add0~13\,
	combout => \aa02|Add0~14_combout\,
	cout => \aa02|Add0~15\);

-- Location: FF_X46_Y49_N15
\aa02|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(7));

-- Location: LCCOMB_X46_Y49_N16
\aa02|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~16_combout\ = (\aa02|count\(8) & (\aa02|Add0~15\ $ (GND))) # (!\aa02|count\(8) & (!\aa02|Add0~15\ & VCC))
-- \aa02|Add0~17\ = CARRY((\aa02|count\(8) & !\aa02|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(8),
	datad => VCC,
	cin => \aa02|Add0~15\,
	combout => \aa02|Add0~16_combout\,
	cout => \aa02|Add0~17\);

-- Location: FF_X46_Y49_N17
\aa02|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(8));

-- Location: LCCOMB_X46_Y49_N18
\aa02|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~18_combout\ = (\aa02|count\(9) & (!\aa02|Add0~17\)) # (!\aa02|count\(9) & ((\aa02|Add0~17\) # (GND)))
-- \aa02|Add0~19\ = CARRY((!\aa02|Add0~17\) # (!\aa02|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(9),
	datad => VCC,
	cin => \aa02|Add0~17\,
	combout => \aa02|Add0~18_combout\,
	cout => \aa02|Add0~19\);

-- Location: FF_X46_Y49_N19
\aa02|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(9));

-- Location: LCCOMB_X46_Y49_N20
\aa02|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~20_combout\ = (\aa02|count\(10) & (\aa02|Add0~19\ $ (GND))) # (!\aa02|count\(10) & (!\aa02|Add0~19\ & VCC))
-- \aa02|Add0~21\ = CARRY((\aa02|count\(10) & !\aa02|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(10),
	datad => VCC,
	cin => \aa02|Add0~19\,
	combout => \aa02|Add0~20_combout\,
	cout => \aa02|Add0~21\);

-- Location: LCCOMB_X45_Y48_N26
\aa02|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~7_combout\ = (\aa02|Add0~20_combout\ & ((!\aa02|Equal0~4_combout\) # (!\aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Equal0~4_combout\,
	datad => \aa02|Add0~20_combout\,
	combout => \aa02|count~7_combout\);

-- Location: FF_X45_Y48_N27
\aa02|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(10));

-- Location: LCCOMB_X46_Y49_N22
\aa02|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~22_combout\ = (\aa02|count\(11) & (!\aa02|Add0~21\)) # (!\aa02|count\(11) & ((\aa02|Add0~21\) # (GND)))
-- \aa02|Add0~23\ = CARRY((!\aa02|Add0~21\) # (!\aa02|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(11),
	datad => VCC,
	cin => \aa02|Add0~21\,
	combout => \aa02|Add0~22_combout\,
	cout => \aa02|Add0~23\);

-- Location: LCCOMB_X45_Y48_N18
\aa02|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~8_combout\ = (\aa02|Add0~22_combout\ & ((!\aa02|Equal0~4_combout\) # (!\aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Equal0~4_combout\,
	datad => \aa02|Add0~22_combout\,
	combout => \aa02|count~8_combout\);

-- Location: FF_X45_Y48_N19
\aa02|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(11));

-- Location: LCCOMB_X46_Y49_N24
\aa02|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~24_combout\ = (\aa02|count\(12) & (\aa02|Add0~23\ $ (GND))) # (!\aa02|count\(12) & (!\aa02|Add0~23\ & VCC))
-- \aa02|Add0~25\ = CARRY((\aa02|count\(12) & !\aa02|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(12),
	datad => VCC,
	cin => \aa02|Add0~23\,
	combout => \aa02|Add0~24_combout\,
	cout => \aa02|Add0~25\);

-- Location: LCCOMB_X45_Y48_N8
\aa02|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~9_combout\ = (\aa02|Add0~24_combout\ & ((!\aa02|Equal0~9_combout\) # (!\aa02|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~4_combout\,
	datac => \aa02|Add0~24_combout\,
	datad => \aa02|Equal0~9_combout\,
	combout => \aa02|count~9_combout\);

-- Location: FF_X45_Y48_N9
\aa02|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(12));

-- Location: LCCOMB_X46_Y49_N26
\aa02|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~26_combout\ = (\aa02|count\(13) & (!\aa02|Add0~25\)) # (!\aa02|count\(13) & ((\aa02|Add0~25\) # (GND)))
-- \aa02|Add0~27\ = CARRY((!\aa02|Add0~25\) # (!\aa02|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(13),
	datad => VCC,
	cin => \aa02|Add0~25\,
	combout => \aa02|Add0~26_combout\,
	cout => \aa02|Add0~27\);

-- Location: LCCOMB_X45_Y49_N20
\aa02|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~10_combout\ = (\aa02|Add0~26_combout\ & ((!\aa02|Equal0~4_combout\) # (!\aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~9_combout\,
	datab => \aa02|Equal0~4_combout\,
	datad => \aa02|Add0~26_combout\,
	combout => \aa02|count~10_combout\);

-- Location: FF_X45_Y49_N21
\aa02|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(13));

-- Location: LCCOMB_X46_Y49_N28
\aa02|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~28_combout\ = (\aa02|count\(14) & (\aa02|Add0~27\ $ (GND))) # (!\aa02|count\(14) & (!\aa02|Add0~27\ & VCC))
-- \aa02|Add0~29\ = CARRY((\aa02|count\(14) & !\aa02|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(14),
	datad => VCC,
	cin => \aa02|Add0~27\,
	combout => \aa02|Add0~28_combout\,
	cout => \aa02|Add0~29\);

-- Location: FF_X46_Y49_N29
\aa02|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(14));

-- Location: LCCOMB_X46_Y49_N30
\aa02|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~30_combout\ = (\aa02|count\(15) & (!\aa02|Add0~29\)) # (!\aa02|count\(15) & ((\aa02|Add0~29\) # (GND)))
-- \aa02|Add0~31\ = CARRY((!\aa02|Add0~29\) # (!\aa02|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(15),
	datad => VCC,
	cin => \aa02|Add0~29\,
	combout => \aa02|Add0~30_combout\,
	cout => \aa02|Add0~31\);

-- Location: LCCOMB_X45_Y48_N0
\aa02|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~11_combout\ = (\aa02|Add0~30_combout\ & ((!\aa02|Equal0~9_combout\) # (!\aa02|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~4_combout\,
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Add0~30_combout\,
	combout => \aa02|count~11_combout\);

-- Location: FF_X45_Y48_N1
\aa02|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(15));

-- Location: LCCOMB_X46_Y48_N0
\aa02|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~32_combout\ = (\aa02|count\(16) & (\aa02|Add0~31\ $ (GND))) # (!\aa02|count\(16) & (!\aa02|Add0~31\ & VCC))
-- \aa02|Add0~33\ = CARRY((\aa02|count\(16) & !\aa02|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(16),
	datad => VCC,
	cin => \aa02|Add0~31\,
	combout => \aa02|Add0~32_combout\,
	cout => \aa02|Add0~33\);

-- Location: FF_X46_Y48_N1
\aa02|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(16));

-- Location: LCCOMB_X46_Y48_N2
\aa02|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~34_combout\ = (\aa02|count\(17) & (!\aa02|Add0~33\)) # (!\aa02|count\(17) & ((\aa02|Add0~33\) # (GND)))
-- \aa02|Add0~35\ = CARRY((!\aa02|Add0~33\) # (!\aa02|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(17),
	datad => VCC,
	cin => \aa02|Add0~33\,
	combout => \aa02|Add0~34_combout\,
	cout => \aa02|Add0~35\);

-- Location: LCCOMB_X45_Y48_N14
\aa02|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~12_combout\ = (\aa02|Add0~34_combout\ & ((!\aa02|Equal0~4_combout\) # (!\aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Equal0~4_combout\,
	datad => \aa02|Add0~34_combout\,
	combout => \aa02|count~12_combout\);

-- Location: FF_X45_Y48_N15
\aa02|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(17));

-- Location: LCCOMB_X46_Y48_N4
\aa02|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~36_combout\ = (\aa02|count\(18) & (\aa02|Add0~35\ $ (GND))) # (!\aa02|count\(18) & (!\aa02|Add0~35\ & VCC))
-- \aa02|Add0~37\ = CARRY((\aa02|count\(18) & !\aa02|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(18),
	datad => VCC,
	cin => \aa02|Add0~35\,
	combout => \aa02|Add0~36_combout\,
	cout => \aa02|Add0~37\);

-- Location: LCCOMB_X45_Y48_N6
\aa02|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~13_combout\ = (\aa02|Add0~36_combout\ & ((!\aa02|Equal0~4_combout\) # (!\aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Equal0~4_combout\,
	datad => \aa02|Add0~36_combout\,
	combout => \aa02|count~13_combout\);

-- Location: FF_X45_Y48_N7
\aa02|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(18));

-- Location: LCCOMB_X46_Y48_N6
\aa02|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~38_combout\ = (\aa02|count\(19) & (!\aa02|Add0~37\)) # (!\aa02|count\(19) & ((\aa02|Add0~37\) # (GND)))
-- \aa02|Add0~39\ = CARRY((!\aa02|Add0~37\) # (!\aa02|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(19),
	datad => VCC,
	cin => \aa02|Add0~37\,
	combout => \aa02|Add0~38_combout\,
	cout => \aa02|Add0~39\);

-- Location: LCCOMB_X45_Y48_N4
\aa02|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~14_combout\ = (\aa02|Add0~38_combout\ & ((!\aa02|Equal0~4_combout\) # (!\aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Equal0~4_combout\,
	datad => \aa02|Add0~38_combout\,
	combout => \aa02|count~14_combout\);

-- Location: FF_X45_Y48_N5
\aa02|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(19));

-- Location: LCCOMB_X46_Y48_N8
\aa02|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~40_combout\ = (\aa02|count\(20) & (\aa02|Add0~39\ $ (GND))) # (!\aa02|count\(20) & (!\aa02|Add0~39\ & VCC))
-- \aa02|Add0~41\ = CARRY((\aa02|count\(20) & !\aa02|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(20),
	datad => VCC,
	cin => \aa02|Add0~39\,
	combout => \aa02|Add0~40_combout\,
	cout => \aa02|Add0~41\);

-- Location: LCCOMB_X45_Y48_N20
\aa02|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~15_combout\ = (\aa02|Add0~40_combout\ & ((!\aa02|Equal0~9_combout\) # (!\aa02|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~4_combout\,
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Add0~40_combout\,
	combout => \aa02|count~15_combout\);

-- Location: FF_X45_Y48_N21
\aa02|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(20));

-- Location: LCCOMB_X46_Y48_N10
\aa02|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~42_combout\ = (\aa02|count\(21) & (!\aa02|Add0~41\)) # (!\aa02|count\(21) & ((\aa02|Add0~41\) # (GND)))
-- \aa02|Add0~43\ = CARRY((!\aa02|Add0~41\) # (!\aa02|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(21),
	datad => VCC,
	cin => \aa02|Add0~41\,
	combout => \aa02|Add0~42_combout\,
	cout => \aa02|Add0~43\);

-- Location: LCCOMB_X45_Y48_N30
\aa02|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~16_combout\ = (\aa02|Add0~42_combout\ & ((!\aa02|Equal0~9_combout\) # (!\aa02|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~4_combout\,
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Add0~42_combout\,
	combout => \aa02|count~16_combout\);

-- Location: FF_X45_Y48_N31
\aa02|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(21));

-- Location: LCCOMB_X46_Y48_N12
\aa02|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~44_combout\ = (\aa02|count\(22) & (\aa02|Add0~43\ $ (GND))) # (!\aa02|count\(22) & (!\aa02|Add0~43\ & VCC))
-- \aa02|Add0~45\ = CARRY((\aa02|count\(22) & !\aa02|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(22),
	datad => VCC,
	cin => \aa02|Add0~43\,
	combout => \aa02|Add0~44_combout\,
	cout => \aa02|Add0~45\);

-- Location: FF_X46_Y48_N13
\aa02|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(22));

-- Location: LCCOMB_X46_Y48_N14
\aa02|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~46_combout\ = (\aa02|count\(23) & (!\aa02|Add0~45\)) # (!\aa02|count\(23) & ((\aa02|Add0~45\) # (GND)))
-- \aa02|Add0~47\ = CARRY((!\aa02|Add0~45\) # (!\aa02|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(23),
	datad => VCC,
	cin => \aa02|Add0~45\,
	combout => \aa02|Add0~46_combout\,
	cout => \aa02|Add0~47\);

-- Location: LCCOMB_X45_Y48_N12
\aa02|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~17_combout\ = (\aa02|Add0~46_combout\ & ((!\aa02|Equal0~9_combout\) # (!\aa02|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~4_combout\,
	datab => \aa02|Equal0~9_combout\,
	datac => \aa02|Add0~46_combout\,
	combout => \aa02|count~17_combout\);

-- Location: FF_X45_Y48_N13
\aa02|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(23));

-- Location: LCCOMB_X45_Y48_N10
\aa02|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~6_combout\ = (!\aa02|count\(22) & (\aa02|count\(20) & (\aa02|count\(21) & \aa02|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(22),
	datab => \aa02|count\(20),
	datac => \aa02|count\(21),
	datad => \aa02|count\(23),
	combout => \aa02|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y48_N28
\aa02|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~5_combout\ = (\aa02|count\(18) & (\aa02|count\(19) & (!\aa02|count\(16) & \aa02|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(18),
	datab => \aa02|count\(19),
	datac => \aa02|count\(16),
	datad => \aa02|count\(17),
	combout => \aa02|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y48_N16
\aa02|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~48_combout\ = (\aa02|count\(24) & (\aa02|Add0~47\ $ (GND))) # (!\aa02|count\(24) & (!\aa02|Add0~47\ & VCC))
-- \aa02|Add0~49\ = CARRY((\aa02|count\(24) & !\aa02|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(24),
	datad => VCC,
	cin => \aa02|Add0~47\,
	combout => \aa02|Add0~48_combout\,
	cout => \aa02|Add0~49\);

-- Location: FF_X46_Y48_N17
\aa02|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(24));

-- Location: LCCOMB_X46_Y48_N18
\aa02|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~50_combout\ = (\aa02|count\(25) & (!\aa02|Add0~49\)) # (!\aa02|count\(25) & ((\aa02|Add0~49\) # (GND)))
-- \aa02|Add0~51\ = CARRY((!\aa02|Add0~49\) # (!\aa02|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(25),
	datad => VCC,
	cin => \aa02|Add0~49\,
	combout => \aa02|Add0~50_combout\,
	cout => \aa02|Add0~51\);

-- Location: FF_X46_Y48_N19
\aa02|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(25));

-- Location: LCCOMB_X46_Y48_N20
\aa02|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~52_combout\ = (\aa02|count\(26) & (\aa02|Add0~51\ $ (GND))) # (!\aa02|count\(26) & (!\aa02|Add0~51\ & VCC))
-- \aa02|Add0~53\ = CARRY((\aa02|count\(26) & !\aa02|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(26),
	datad => VCC,
	cin => \aa02|Add0~51\,
	combout => \aa02|Add0~52_combout\,
	cout => \aa02|Add0~53\);

-- Location: FF_X46_Y48_N21
\aa02|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(26));

-- Location: LCCOMB_X46_Y48_N22
\aa02|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~54_combout\ = (\aa02|count\(27) & (!\aa02|Add0~53\)) # (!\aa02|count\(27) & ((\aa02|Add0~53\) # (GND)))
-- \aa02|Add0~55\ = CARRY((!\aa02|Add0~53\) # (!\aa02|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(27),
	datad => VCC,
	cin => \aa02|Add0~53\,
	combout => \aa02|Add0~54_combout\,
	cout => \aa02|Add0~55\);

-- Location: FF_X46_Y48_N23
\aa02|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(27));

-- Location: LCCOMB_X46_Y48_N24
\aa02|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~56_combout\ = (\aa02|count\(28) & (\aa02|Add0~55\ $ (GND))) # (!\aa02|count\(28) & (!\aa02|Add0~55\ & VCC))
-- \aa02|Add0~57\ = CARRY((\aa02|count\(28) & !\aa02|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(28),
	datad => VCC,
	cin => \aa02|Add0~55\,
	combout => \aa02|Add0~56_combout\,
	cout => \aa02|Add0~57\);

-- Location: FF_X46_Y48_N25
\aa02|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(28));

-- Location: LCCOMB_X46_Y48_N26
\aa02|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~58_combout\ = (\aa02|count\(29) & (!\aa02|Add0~57\)) # (!\aa02|count\(29) & ((\aa02|Add0~57\) # (GND)))
-- \aa02|Add0~59\ = CARRY((!\aa02|Add0~57\) # (!\aa02|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(29),
	datad => VCC,
	cin => \aa02|Add0~57\,
	combout => \aa02|Add0~58_combout\,
	cout => \aa02|Add0~59\);

-- Location: FF_X46_Y48_N27
\aa02|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(29));

-- Location: LCCOMB_X46_Y48_N28
\aa02|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~60_combout\ = (\aa02|count\(30) & (\aa02|Add0~59\ $ (GND))) # (!\aa02|count\(30) & (!\aa02|Add0~59\ & VCC))
-- \aa02|Add0~61\ = CARRY((\aa02|count\(30) & !\aa02|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aa02|count\(30),
	datad => VCC,
	cin => \aa02|Add0~59\,
	combout => \aa02|Add0~60_combout\,
	cout => \aa02|Add0~61\);

-- Location: FF_X46_Y48_N29
\aa02|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(30));

-- Location: LCCOMB_X46_Y48_N30
\aa02|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Add0~62_combout\ = \aa02|count\(31) $ (\aa02|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(31),
	cin => \aa02|Add0~61\,
	combout => \aa02|Add0~62_combout\);

-- Location: FF_X46_Y48_N31
\aa02|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(31));

-- Location: LCCOMB_X45_Y48_N22
\aa02|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~8_combout\ = (!\aa02|count\(28) & (!\aa02|count\(30) & (!\aa02|count\(29) & !\aa02|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(28),
	datab => \aa02|count\(30),
	datac => \aa02|count\(29),
	datad => \aa02|count\(31),
	combout => \aa02|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y48_N0
\aa02|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~7_combout\ = (!\aa02|count\(24) & (!\aa02|count\(25) & (!\aa02|count\(27) & !\aa02|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(24),
	datab => \aa02|count\(25),
	datac => \aa02|count\(27),
	datad => \aa02|count\(26),
	combout => \aa02|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y48_N24
\aa02|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~9_combout\ = (\aa02|Equal0~6_combout\ & (\aa02|Equal0~5_combout\ & (\aa02|Equal0~8_combout\ & \aa02|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~6_combout\,
	datab => \aa02|Equal0~5_combout\,
	datac => \aa02|Equal0~8_combout\,
	datad => \aa02|Equal0~7_combout\,
	combout => \aa02|Equal0~9_combout\);

-- Location: LCCOMB_X45_Y49_N12
\aa02|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|count~6_combout\ = (\aa02|Add0~10_combout\ & ((!\aa02|Equal0~9_combout\) # (!\aa02|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|Equal0~4_combout\,
	datac => \aa02|Add0~10_combout\,
	datad => \aa02|Equal0~9_combout\,
	combout => \aa02|count~6_combout\);

-- Location: FF_X45_Y49_N13
\aa02|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|count\(5));

-- Location: LCCOMB_X45_Y49_N22
\aa02|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~0_combout\ = (\aa02|count\(5) & (!\aa02|count\(7) & (!\aa02|count\(6) & !\aa02|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(5),
	datab => \aa02|count\(7),
	datac => \aa02|count\(6),
	datad => \aa02|count\(8),
	combout => \aa02|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y49_N4
\aa02|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~1_combout\ = (!\aa02|count\(2) & (!\aa02|count\(4) & (!\aa02|count\(1) & !\aa02|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(2),
	datab => \aa02|count\(4),
	datac => \aa02|count\(1),
	datad => \aa02|count\(3),
	combout => \aa02|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y49_N26
\aa02|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~3_combout\ = (\aa02|count\(13) & (!\aa02|count\(14) & (\aa02|count\(12) & \aa02|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(13),
	datab => \aa02|count\(14),
	datac => \aa02|count\(12),
	datad => \aa02|count\(15),
	combout => \aa02|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y49_N18
\aa02|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~2_combout\ = (\aa02|count\(10) & (\aa02|count\(0) & (\aa02|count\(11) & !\aa02|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|count\(10),
	datab => \aa02|count\(0),
	datac => \aa02|count\(11),
	datad => \aa02|count\(9),
	combout => \aa02|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y49_N28
\aa02|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|Equal0~4_combout\ = (\aa02|Equal0~0_combout\ & (\aa02|Equal0~1_combout\ & (\aa02|Equal0~3_combout\ & \aa02|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa02|Equal0~0_combout\,
	datab => \aa02|Equal0~1_combout\,
	datac => \aa02|Equal0~3_combout\,
	datad => \aa02|Equal0~2_combout\,
	combout => \aa02|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y48_N2
\aa02|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|tmp~0_combout\ = \aa02|tmp~q\ $ (((\aa02|Equal0~4_combout\ & \aa02|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa02|tmp~q\,
	datac => \aa02|Equal0~4_combout\,
	datad => \aa02|Equal0~9_combout\,
	combout => \aa02|tmp~0_combout\);

-- Location: LCCOMB_X45_Y48_N16
\aa02|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa02|tmp~feeder_combout\ = \aa02|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aa02|tmp~0_combout\,
	combout => \aa02|tmp~feeder_combout\);

-- Location: FF_X45_Y48_N17
\aa02|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aa02|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa02|tmp~q\);

-- Location: CLKCTRL_G12
\aa02|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aa02|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aa02|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y53_N18
\aa00|gen00:3:ffi0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa00|gen00:3:ffi0~0_combout\ = (\aa00|gen00:1:ffi0~q\ & ((\aa00|gen00:0:ffi0~q\ & (\aa00|gen00:2:ffi0~q\)) # (!\aa00|gen00:0:ffi0~q\ & ((\aa00|gen00:3:ffi0~q\))))) # (!\aa00|gen00:1:ffi0~q\ & ((\aa00|gen00:2:ffi0~q\ $ (\aa00|gen00:3:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:0:ffi0~q\,
	datab => \aa00|gen00:2:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:1:ffi0~q\,
	combout => \aa00|gen00:3:ffi0~0_combout\);

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

-- Location: FF_X67_Y53_N19
\aa00|gen00:3:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa02|tmp~clkctrl_outclk\,
	d => \aa00|gen00:3:ffi0~0_combout\,
	clrn => \PB0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa00|gen00:3:ffi0~q\);

-- Location: LCCOMB_X67_Y53_N20
\aa00|gen00:0:ffi0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa00|gen00:0:ffi0~0_combout\ = (\aa00|gen00:1:ffi0~q\ & (((\aa00|gen00:2:ffi0~q\ & \aa00|gen00:0:ffi0~q\)) # (!\aa00|gen00:3:ffi0~q\))) # (!\aa00|gen00:1:ffi0~q\ & ((\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:0:ffi0~q\ $ (\aa00|gen00:3:ffi0~q\))) # 
-- (!\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:0:ffi0~q\ & \aa00|gen00:3:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:1:ffi0~q\,
	datab => \aa00|gen00:2:ffi0~q\,
	datac => \aa00|gen00:0:ffi0~q\,
	datad => \aa00|gen00:3:ffi0~q\,
	combout => \aa00|gen00:0:ffi0~0_combout\);

-- Location: FF_X67_Y53_N21
\aa00|gen00:0:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa02|tmp~clkctrl_outclk\,
	d => \aa00|gen00:0:ffi0~0_combout\,
	clrn => \PB0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa00|gen00:0:ffi0~q\);

-- Location: LCCOMB_X67_Y53_N6
\aa00|gen00:1:ffi0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa00|gen00:1:ffi0~0_combout\ = (\aa00|gen00:3:ffi0~q\ & (!\aa00|gen00:2:ffi0~q\ & ((\aa00|gen00:0:ffi0~q\) # (!\aa00|gen00:1:ffi0~q\)))) # (!\aa00|gen00:3:ffi0~q\ & (((\aa00|gen00:1:ffi0~q\ & \aa00|gen00:2:ffi0~q\)) # (!\aa00|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:0:ffi0~q\,
	datab => \aa00|gen00:3:ffi0~q\,
	datac => \aa00|gen00:1:ffi0~q\,
	datad => \aa00|gen00:2:ffi0~q\,
	combout => \aa00|gen00:1:ffi0~0_combout\);

-- Location: FF_X67_Y53_N7
\aa00|gen00:1:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa02|tmp~clkctrl_outclk\,
	d => \aa00|gen00:1:ffi0~0_combout\,
	clrn => \PB0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa00|gen00:1:ffi0~q\);

-- Location: LCCOMB_X67_Y53_N16
\aa00|gen00:2:ffi0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa00|gen00:2:ffi0~0_combout\ = (\aa00|gen00:1:ffi0~q\ & (\aa00|gen00:2:ffi0~q\ & ((\aa00|gen00:3:ffi0~q\) # (!\aa00|gen00:0:ffi0~q\)))) # (!\aa00|gen00:1:ffi0~q\ & (((\aa00|gen00:3:ffi0~q\ & !\aa00|gen00:0:ffi0~q\)) # (!\aa00|gen00:2:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:1:ffi0~q\,
	datab => \aa00|gen00:3:ffi0~q\,
	datac => \aa00|gen00:2:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa00|gen00:2:ffi0~0_combout\);

-- Location: FF_X67_Y53_N17
\aa00|gen00:2:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa02|tmp~clkctrl_outclk\,
	d => \aa00|gen00:2:ffi0~0_combout\,
	clrn => \PB0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa00|gen00:2:ffi0~q\);

-- Location: LCCOMB_X67_Y53_N12
\aa01|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~0_combout\ = (\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:1:ffi0~q\ & (\aa00|gen00:3:ffi0~q\ $ (!\aa00|gen00:0:ffi0~q\)))) # (!\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:0:ffi0~q\ & (\aa00|gen00:1:ffi0~q\ $ (\aa00|gen00:3:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~0_combout\);

-- Location: LCCOMB_X67_Y53_N30
\aa01|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~1_combout\ = (\aa00|gen00:1:ffi0~q\ & (\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:3:ffi0~q\ $ (\aa00|gen00:0:ffi0~q\)))) # (!\aa00|gen00:1:ffi0~q\ & ((\aa00|gen00:0:ffi0~q\ & ((\aa00|gen00:3:ffi0~q\))) # (!\aa00|gen00:0:ffi0~q\ & 
-- (\aa00|gen00:2:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~1_combout\);

-- Location: LCCOMB_X67_Y53_N0
\aa01|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~2_combout\ = (\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:3:ffi0~q\ & ((!\aa00|gen00:0:ffi0~q\) # (!\aa00|gen00:1:ffi0~q\)))) # (!\aa00|gen00:2:ffi0~q\ & (!\aa00|gen00:1:ffi0~q\ & (!\aa00|gen00:3:ffi0~q\ & !\aa00|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~2_combout\);

-- Location: LCCOMB_X67_Y53_N26
\aa01|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~3_combout\ = (\aa00|gen00:1:ffi0~q\ & (!\aa00|gen00:3:ffi0~q\ & (\aa00|gen00:2:ffi0~q\ $ (\aa00|gen00:0:ffi0~q\)))) # (!\aa00|gen00:1:ffi0~q\ & ((\aa00|gen00:2:ffi0~q\ & ((\aa00|gen00:0:ffi0~q\))) # (!\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:3:ffi0~q\ 
-- & !\aa00|gen00:0:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~3_combout\);

-- Location: LCCOMB_X67_Y53_N28
\aa01|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~4_combout\ = (\aa00|gen00:1:ffi0~q\ & ((\aa00|gen00:2:ffi0~q\ & (!\aa00|gen00:3:ffi0~q\)) # (!\aa00|gen00:2:ffi0~q\ & ((\aa00|gen00:0:ffi0~q\))))) # (!\aa00|gen00:1:ffi0~q\ & (((!\aa00|gen00:3:ffi0~q\ & \aa00|gen00:0:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~4_combout\);

-- Location: LCCOMB_X67_Y53_N10
\aa01|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~5_combout\ = (\aa00|gen00:2:ffi0~q\ & (\aa00|gen00:0:ffi0~q\ & (\aa00|gen00:1:ffi0~q\ $ (!\aa00|gen00:3:ffi0~q\)))) # (!\aa00|gen00:2:ffi0~q\ & (!\aa00|gen00:3:ffi0~q\ & ((\aa00|gen00:0:ffi0~q\) # (!\aa00|gen00:1:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~5_combout\);

-- Location: LCCOMB_X67_Y53_N24
\aa01|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa01|D~6_combout\ = (\aa00|gen00:0:ffi0~q\ & (!\aa00|gen00:3:ffi0~q\ & (\aa00|gen00:2:ffi0~q\ $ (\aa00|gen00:1:ffi0~q\)))) # (!\aa00|gen00:0:ffi0~q\ & (\aa00|gen00:1:ffi0~q\ & (\aa00|gen00:2:ffi0~q\ $ (!\aa00|gen00:3:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa00|gen00:2:ffi0~q\,
	datab => \aa00|gen00:1:ffi0~q\,
	datac => \aa00|gen00:3:ffi0~q\,
	datad => \aa00|gen00:0:ffi0~q\,
	combout => \aa01|D~6_combout\);

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

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_led_o <= \led_o~output_o\;
END structure;


