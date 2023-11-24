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

-- DATE "08/31/2023 15:50:45"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
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
SIGNAL a_aALTERA_TMS_a_apadout : std_logic;
SIGNAL a_aALTERA_TCK_a_apadout : std_logic;
SIGNAL a_aALTERA_TDI_a_apadout : std_logic;
SIGNAL a_aALTERA_CONFIG_SEL_a_apadout : std_logic;
SIGNAL a_aALTERA_nCONFIG_a_apadout : std_logic;
SIGNAL a_aALTERA_nSTATUS_a_apadout : std_logic;
SIGNAL a_aALTERA_CONF_DONE_a_apadout : std_logic;
SIGNAL a_aALTERA_TMS_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_TCK_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_TDI_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_CONFIG_SEL_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_nCONFIG_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_nSTATUS_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_CONF_DONE_a_aibuf_o : std_logic;

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
	Cout : OUT std_logic
	);
END four_bit_sum_seven_seg;

-- Design Ports Information
-- A_dec[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[1]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_dec[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[5]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_dec[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_dec[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Cout : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_ADC2_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_GND_aI_combout : std_logic;
SIGNAL a_aQUARTUS_CREATED_UNVM_a_abusy : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC1_a_aeoc : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC2_a_aeoc : std_logic;
SIGNAL A_dec_a0_a_aoutput_o : std_logic;
SIGNAL A_dec_a1_a_aoutput_o : std_logic;
SIGNAL A_dec_a2_a_aoutput_o : std_logic;
SIGNAL A_dec_a3_a_aoutput_o : std_logic;
SIGNAL A_dec_a4_a_aoutput_o : std_logic;
SIGNAL A_dec_a5_a_aoutput_o : std_logic;
SIGNAL A_dec_a6_a_aoutput_o : std_logic;
SIGNAL A_dec_a7_a_aoutput_o : std_logic;
SIGNAL B_dec_a0_a_aoutput_o : std_logic;
SIGNAL B_dec_a1_a_aoutput_o : std_logic;
SIGNAL B_dec_a2_a_aoutput_o : std_logic;
SIGNAL B_dec_a3_a_aoutput_o : std_logic;
SIGNAL B_dec_a4_a_aoutput_o : std_logic;
SIGNAL B_dec_a5_a_aoutput_o : std_logic;
SIGNAL B_dec_a6_a_aoutput_o : std_logic;
SIGNAL B_dec_a7_a_aoutput_o : std_logic;
SIGNAL S_dec_a0_a_aoutput_o : std_logic;
SIGNAL S_dec_a1_a_aoutput_o : std_logic;
SIGNAL S_dec_a2_a_aoutput_o : std_logic;
SIGNAL S_dec_a3_a_aoutput_o : std_logic;
SIGNAL S_dec_a4_a_aoutput_o : std_logic;
SIGNAL S_dec_a5_a_aoutput_o : std_logic;
SIGNAL S_dec_a6_a_aoutput_o : std_logic;
SIGNAL S_dec_a7_a_aoutput_o : std_logic;
SIGNAL Cout_aoutput_o : std_logic;
SIGNAL A_a1_a_ainput_o : std_logic;
SIGNAL A_a2_a_ainput_o : std_logic;
SIGNAL A_a3_a_ainput_o : std_logic;
SIGNAL A_a0_a_ainput_o : std_logic;
SIGNAL action_02_aD_a0_combout : std_logic;
SIGNAL action_02_aD_a1_combout : std_logic;
SIGNAL action_02_aD_a2_combout : std_logic;
SIGNAL action_02_aD_a3_combout : std_logic;
SIGNAL action_02_aD_a4_combout : std_logic;
SIGNAL action_02_aD_a5_combout : std_logic;
SIGNAL action_02_aD_a6_combout : std_logic;
SIGNAL B_a3_a_ainput_o : std_logic;
SIGNAL B_a0_a_ainput_o : std_logic;
SIGNAL B_a1_a_ainput_o : std_logic;
SIGNAL B_a2_a_ainput_o : std_logic;
SIGNAL action_03_aD_a0_combout : std_logic;
SIGNAL action_03_aD_a1_combout : std_logic;
SIGNAL action_03_aD_a2_combout : std_logic;
SIGNAL action_03_aD_a3_combout : std_logic;
SIGNAL action_03_aD_a4_combout : std_logic;
SIGNAL action_03_aD_a5_combout : std_logic;
SIGNAL action_03_aD_a6_combout : std_logic;
SIGNAL ctrl_ainput_o : std_logic;
SIGNAL action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a1_aaction_aS_a0_combout : std_logic;
SIGNAL action_04_aD_a1_combout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a0_aaction_aS_acombout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a1_aaction_aS_acombout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a2_aaction_aS_acombout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a3_aaction_aS_a0_combout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout : std_logic;
SIGNAL action_04_aD_a0_combout : std_logic;
SIGNAL action_04_aD_a2_combout : std_logic;
SIGNAL action_04_aD_a3_combout : std_logic;
SIGNAL action_04_aD_a4_combout : std_logic;
SIGNAL action_04_aD_a5_combout : std_logic;
SIGNAL action_04_aD_a6_combout : std_logic;
SIGNAL action_04_aD_a7_combout : std_logic;
SIGNAL action_04_aD_a8_combout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a2_aaction_aCo_a0_combout : std_logic;
SIGNAL action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout : std_logic;
SIGNAL ALT_INV_action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout : std_logic;

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
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus <= (a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout);

a_aQUARTUS_CREATED_ADC2_a_CHSEL_bus <= (a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout);
ALT_INV_action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout <= NOT action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
a_aQUARTUS_CREATED_GND_aI : fiftyfivenm_lcell_comb
-- Equation(s):
-- a_aQUARTUS_CREATED_GND_aI_combout = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => a_aQUARTUS_CREATED_GND_aI_combout);

-- Location: IOOBUF_X58_Y0_N16
A_dec_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a0_combout,
	devoe => ww_devoe,
	o => A_dec_a0_a_aoutput_o);

-- Location: IOOBUF_X58_Y0_N9
A_dec_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a1_combout,
	devoe => ww_devoe,
	o => A_dec_a1_a_aoutput_o);

-- Location: IOOBUF_X60_Y0_N30
A_dec_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a2_combout,
	devoe => ww_devoe,
	o => A_dec_a2_a_aoutput_o);

-- Location: IOOBUF_X58_Y0_N23
A_dec_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a3_combout,
	devoe => ww_devoe,
	o => A_dec_a3_a_aoutput_o);

-- Location: IOOBUF_X62_Y0_N23
A_dec_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a4_combout,
	devoe => ww_devoe,
	o => A_dec_a4_a_aoutput_o);

-- Location: IOOBUF_X58_Y0_N2
A_dec_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a5_combout,
	devoe => ww_devoe,
	o => A_dec_a5_a_aoutput_o);

-- Location: IOOBUF_X62_Y0_N16
A_dec_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_02_aD_a6_combout,
	devoe => ww_devoe,
	o => A_dec_a6_a_aoutput_o);

-- Location: IOOBUF_X78_Y21_N23
A_dec_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => A_dec_a7_a_aoutput_o);

-- Location: IOOBUF_X54_Y0_N16
B_dec_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a0_combout,
	devoe => ww_devoe,
	o => B_dec_a0_a_aoutput_o);

-- Location: IOOBUF_X54_Y0_N23
B_dec_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a1_combout,
	devoe => ww_devoe,
	o => B_dec_a1_a_aoutput_o);

-- Location: IOOBUF_X54_Y0_N2
B_dec_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a2_combout,
	devoe => ww_devoe,
	o => B_dec_a2_a_aoutput_o);

-- Location: IOOBUF_X51_Y0_N16
B_dec_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a3_combout,
	devoe => ww_devoe,
	o => B_dec_a3_a_aoutput_o);

-- Location: IOOBUF_X51_Y0_N9
B_dec_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a4_combout,
	devoe => ww_devoe,
	o => B_dec_a4_a_aoutput_o);

-- Location: IOOBUF_X54_Y0_N9
B_dec_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a5_combout,
	devoe => ww_devoe,
	o => B_dec_a5_a_aoutput_o);

-- Location: IOOBUF_X54_Y0_N30
B_dec_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_03_aD_a6_combout,
	devoe => ww_devoe,
	o => B_dec_a6_a_aoutput_o);

-- Location: IOOBUF_X78_Y44_N16
B_dec_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => B_dec_a7_a_aoutput_o);

-- Location: IOOBUF_X34_Y39_N9
S_dec_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a2_combout,
	devoe => ww_devoe,
	o => S_dec_a0_a_aoutput_o);

-- Location: IOOBUF_X36_Y39_N23
S_dec_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a3_combout,
	devoe => ww_devoe,
	o => S_dec_a1_a_aoutput_o);

-- Location: IOOBUF_X34_Y39_N30
S_dec_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a4_combout,
	devoe => ww_devoe,
	o => S_dec_a2_a_aoutput_o);

-- Location: IOOBUF_X34_Y39_N16
S_dec_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a5_combout,
	devoe => ww_devoe,
	o => S_dec_a3_a_aoutput_o);

-- Location: IOOBUF_X36_Y39_N30
S_dec_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a6_combout,
	devoe => ww_devoe,
	o => S_dec_a4_a_aoutput_o);

-- Location: IOOBUF_X34_Y39_N23
S_dec_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a7_combout,
	devoe => ww_devoe,
	o => S_dec_a5_a_aoutput_o);

-- Location: IOOBUF_X36_Y39_N16
S_dec_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => action_04_aD_a8_combout,
	devoe => ww_devoe,
	o => S_dec_a6_a_aoutput_o);

-- Location: IOOBUF_X51_Y54_N16
S_dec_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => S_dec_a7_a_aoutput_o);

-- Location: IOOBUF_X62_Y0_N30
Cout_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout,
	devoe => ww_devoe,
	o => Cout_aoutput_o);

-- Location: IOIBUF_X62_Y0_N8
A_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => A_a1_a_ainput_o);

-- Location: IOIBUF_X69_Y0_N1
A_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => A_a2_a_ainput_o);

-- Location: IOIBUF_X69_Y0_N15
A_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => A_a3_a_ainput_o);

-- Location: IOIBUF_X56_Y0_N8
A_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => A_a0_a_ainput_o);

-- Location: LCCOMB_X59_Y4_N16
action_02_aD_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a0_combout = (A_a2_a_ainput_o & (!A_a1_a_ainput_o & (A_a3_a_ainput_o $ (!A_a0_a_ainput_o)))) # (!A_a2_a_ainput_o & (A_a0_a_ainput_o & (A_a1_a_ainput_o $ (!A_a3_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a0_combout);

-- Location: LCCOMB_X59_Y4_N2
action_02_aD_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a1_combout = (A_a1_a_ainput_o & ((A_a0_a_ainput_o & ((A_a3_a_ainput_o))) # (!A_a0_a_ainput_o & (A_a2_a_ainput_o)))) # (!A_a1_a_ainput_o & (A_a2_a_ainput_o & (A_a3_a_ainput_o $ (A_a0_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a1_combout);

-- Location: LCCOMB_X59_Y4_N20
action_02_aD_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a2_combout = (A_a2_a_ainput_o & (A_a3_a_ainput_o & ((A_a1_a_ainput_o) # (!A_a0_a_ainput_o)))) # (!A_a2_a_ainput_o & (A_a1_a_ainput_o & (!A_a3_a_ainput_o & !A_a0_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a2_combout);

-- Location: LCCOMB_X59_Y4_N22
action_02_aD_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a3_combout = (A_a1_a_ainput_o & ((A_a2_a_ainput_o & ((A_a0_a_ainput_o))) # (!A_a2_a_ainput_o & (A_a3_a_ainput_o & !A_a0_a_ainput_o)))) # (!A_a1_a_ainput_o & (!A_a3_a_ainput_o & (A_a2_a_ainput_o $ (A_a0_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a3_combout);

-- Location: LCCOMB_X59_Y4_N8
action_02_aD_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a4_combout = (A_a1_a_ainput_o & (((!A_a3_a_ainput_o & A_a0_a_ainput_o)))) # (!A_a1_a_ainput_o & ((A_a2_a_ainput_o & (!A_a3_a_ainput_o)) # (!A_a2_a_ainput_o & ((A_a0_a_ainput_o)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a4_combout);

-- Location: LCCOMB_X59_Y4_N10
action_02_aD_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a5_combout = (A_a1_a_ainput_o & (!A_a3_a_ainput_o & ((A_a0_a_ainput_o) # (!A_a2_a_ainput_o)))) # (!A_a1_a_ainput_o & (A_a0_a_ainput_o & (A_a2_a_ainput_o $ (!A_a3_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a5_combout);

-- Location: LCCOMB_X59_Y4_N28
action_02_aD_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_02_aD_a6_combout = (A_a0_a_ainput_o & (!A_a3_a_ainput_o & (A_a1_a_ainput_o $ (!A_a2_a_ainput_o)))) # (!A_a0_a_ainput_o & (!A_a1_a_ainput_o & (A_a2_a_ainput_o $ (!A_a3_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_a1_a_ainput_o,
	datab => A_a2_a_ainput_o,
	datac => A_a3_a_ainput_o,
	datad => A_a0_a_ainput_o,
	combout => action_02_aD_a6_combout);

-- Location: IOIBUF_X56_Y0_N1
B_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => B_a3_a_ainput_o);

-- Location: IOIBUF_X56_Y0_N15
B_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => B_a0_a_ainput_o);

-- Location: IOIBUF_X58_Y0_N29
B_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => B_a1_a_ainput_o);

-- Location: IOIBUF_X56_Y0_N22
B_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => B_a2_a_ainput_o);

-- Location: LCCOMB_X55_Y4_N24
action_03_aD_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a0_combout = (B_a3_a_ainput_o & (B_a0_a_ainput_o & (B_a1_a_ainput_o $ (B_a2_a_ainput_o)))) # (!B_a3_a_ainput_o & (!B_a1_a_ainput_o & (B_a0_a_ainput_o $ (B_a2_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a0_combout);

-- Location: LCCOMB_X55_Y4_N26
action_03_aD_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a1_combout = (B_a3_a_ainput_o & ((B_a0_a_ainput_o & (B_a1_a_ainput_o)) # (!B_a0_a_ainput_o & ((B_a2_a_ainput_o))))) # (!B_a3_a_ainput_o & (B_a2_a_ainput_o & (B_a0_a_ainput_o $ (B_a1_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a1_combout);

-- Location: LCCOMB_X55_Y4_N12
action_03_aD_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a2_combout = (B_a3_a_ainput_o & (B_a2_a_ainput_o & ((B_a1_a_ainput_o) # (!B_a0_a_ainput_o)))) # (!B_a3_a_ainput_o & (!B_a0_a_ainput_o & (B_a1_a_ainput_o & !B_a2_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a2_combout);

-- Location: LCCOMB_X55_Y4_N14
action_03_aD_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a3_combout = (B_a1_a_ainput_o & ((B_a0_a_ainput_o & ((B_a2_a_ainput_o))) # (!B_a0_a_ainput_o & (B_a3_a_ainput_o & !B_a2_a_ainput_o)))) # (!B_a1_a_ainput_o & (!B_a3_a_ainput_o & (B_a0_a_ainput_o $ (B_a2_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a3_combout);

-- Location: LCCOMB_X55_Y4_N8
action_03_aD_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a4_combout = (B_a1_a_ainput_o & (!B_a3_a_ainput_o & (B_a0_a_ainput_o))) # (!B_a1_a_ainput_o & ((B_a2_a_ainput_o & (!B_a3_a_ainput_o)) # (!B_a2_a_ainput_o & ((B_a0_a_ainput_o)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a4_combout);

-- Location: LCCOMB_X55_Y4_N10
action_03_aD_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a5_combout = (B_a0_a_ainput_o & (B_a3_a_ainput_o $ (((B_a1_a_ainput_o) # (!B_a2_a_ainput_o))))) # (!B_a0_a_ainput_o & (!B_a3_a_ainput_o & (B_a1_a_ainput_o & !B_a2_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a5_combout);

-- Location: LCCOMB_X55_Y4_N28
action_03_aD_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_03_aD_a6_combout = (B_a0_a_ainput_o & (!B_a3_a_ainput_o & (B_a1_a_ainput_o $ (!B_a2_a_ainput_o)))) # (!B_a0_a_ainput_o & (!B_a1_a_ainput_o & (B_a3_a_ainput_o $ (!B_a2_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => B_a0_a_ainput_o,
	datac => B_a1_a_ainput_o,
	datad => B_a2_a_ainput_o,
	combout => action_03_aD_a6_combout);

-- Location: IOIBUF_X56_Y0_N29
ctrl_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl,
	o => ctrl_ainput_o);

-- Location: LCCOMB_X55_Y4_N6
action_01_aaction_02_a_agen_a0_aaction_aCo_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout = (B_a0_a_ainput_o & (A_a0_a_ainput_o)) # (!B_a0_a_ainput_o & ((ctrl_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B_a0_a_ainput_o,
	datac => A_a0_a_ainput_o,
	datad => ctrl_ainput_o,
	combout => action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout);

-- Location: LCCOMB_X59_Y4_N6
action_01_aaction_02_a_agen_a1_aaction_aCo_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout = (action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout & (!A_a1_a_ainput_o & (B_a1_a_ainput_o $ (!ctrl_ainput_o)))) # (!action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout & ((B_a1_a_ainput_o $ 
-- (!ctrl_ainput_o)) # (!A_a1_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout,
	datab => B_a1_a_ainput_o,
	datac => ctrl_ainput_o,
	datad => A_a1_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout);

-- Location: LCCOMB_X59_Y4_N0
action_01_aaction_02_a_agen_a1_aaction_aS_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a1_aaction_aS_a0_combout = action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout $ (B_a1_a_ainput_o $ (A_a1_a_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout,
	datac => B_a1_a_ainput_o,
	datad => A_a1_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a1_aaction_aS_a0_combout);

-- Location: LCCOMB_X59_Y4_N26
action_04_aD_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a1_combout = action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout $ (action_01_aaction_02_a_agen_a1_aaction_aS_a0_combout $ (B_a2_a_ainput_o $ (A_a2_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_a0_combout,
	datac => B_a2_a_ainput_o,
	datad => A_a2_a_ainput_o,
	combout => action_04_aD_a1_combout);

-- Location: LCCOMB_X55_Y4_N0
action_01_aaction_02_a_agen_a0_aaction_aS : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a0_aaction_aS_acombout = B_a0_a_ainput_o $ (A_a0_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B_a0_a_ainput_o,
	datac => A_a0_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a0_aaction_aS_acombout);

-- Location: LCCOMB_X59_Y4_N30
action_01_aaction_02_a_agen_a1_aaction_aS : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a1_aaction_aS_acombout = action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout $ (B_a1_a_ainput_o $ (ctrl_ainput_o $ (A_a1_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aCo_a0_combout,
	datab => B_a1_a_ainput_o,
	datac => ctrl_ainput_o,
	datad => A_a1_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a1_aaction_aS_acombout);

-- Location: LCCOMB_X59_Y4_N12
action_01_aaction_02_a_agen_a2_aaction_aS : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a2_aaction_aS_acombout = action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout $ (B_a2_a_ainput_o $ (ctrl_ainput_o $ (A_a2_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout,
	datab => B_a2_a_ainput_o,
	datac => ctrl_ainput_o,
	datad => A_a2_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a2_aaction_aS_acombout);

-- Location: LCCOMB_X59_Y4_N24
action_01_aaction_02_a_agen_a3_aaction_aS_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a3_aaction_aS_a0_combout = (action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout & ((A_a2_a_ainput_o & (B_a2_a_ainput_o)) # (!A_a2_a_ainput_o & ((ctrl_ainput_o))))) # (!action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout & 
-- ((A_a2_a_ainput_o & ((!ctrl_ainput_o))) # (!A_a2_a_ainput_o & (B_a2_a_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout,
	datab => B_a2_a_ainput_o,
	datac => ctrl_ainput_o,
	datad => A_a2_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a3_aaction_aS_a0_combout);

-- Location: LCCOMB_X59_Y4_N18
action_01_aaction_02_a_agen_a3_aaction_aS_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout = B_a3_a_ainput_o $ (action_01_aaction_02_a_agen_a3_aaction_aS_a0_combout $ (!A_a3_a_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => action_01_aaction_02_a_agen_a3_aaction_aS_a0_combout,
	datac => A_a3_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout);

-- Location: LCCOMB_X39_Y36_N24
action_04_aD_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a0_combout = (!action_01_aaction_02_a_agen_a1_aaction_aS_acombout & (action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout & (action_01_aaction_02_a_agen_a0_aaction_aS_acombout $ (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a0_combout);

-- Location: LCCOMB_X39_Y36_N26
action_04_aD_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a2_combout = (action_04_aD_a0_combout) # ((!action_04_aD_a1_combout & (action_01_aaction_02_a_agen_a0_aaction_aS_acombout & !action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_04_aD_a1_combout,
	datab => action_04_aD_a0_combout,
	datac => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a2_combout);

-- Location: LCCOMB_X39_Y36_N12
action_04_aD_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a3_combout = (action_01_aaction_02_a_agen_a1_aaction_aS_acombout & ((action_01_aaction_02_a_agen_a0_aaction_aS_acombout & ((!action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout))) # (!action_01_aaction_02_a_agen_a0_aaction_aS_acombout & 
-- (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout)))) # (!action_01_aaction_02_a_agen_a1_aaction_aS_acombout & (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout & (action_01_aaction_02_a_agen_a0_aaction_aS_acombout $ 
-- (!action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a3_combout);

-- Location: LCCOMB_X39_Y36_N22
action_04_aD_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a4_combout = (action_01_aaction_02_a_agen_a2_aaction_aS_acombout & (!action_01_aaction_02_a_agen_a0_aaction_aS_acombout & (action_01_aaction_02_a_agen_a1_aaction_aS_acombout & action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout))) # 
-- (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout & (!action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout & ((action_01_aaction_02_a_agen_a1_aaction_aS_acombout) # (!action_01_aaction_02_a_agen_a0_aaction_aS_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a4_combout);

-- Location: LCCOMB_X39_Y36_N0
action_04_aD_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a5_combout = (action_01_aaction_02_a_agen_a1_aaction_aS_acombout & ((action_01_aaction_02_a_agen_a0_aaction_aS_acombout & (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout)) # (!action_01_aaction_02_a_agen_a0_aaction_aS_acombout & 
-- (action_01_aaction_02_a_agen_a2_aaction_aS_acombout & !action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout)))) # (!action_01_aaction_02_a_agen_a1_aaction_aS_acombout & (action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout & 
-- (action_01_aaction_02_a_agen_a0_aaction_aS_acombout $ (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a5_combout);

-- Location: LCCOMB_X39_Y36_N10
action_04_aD_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a6_combout = (action_01_aaction_02_a_agen_a1_aaction_aS_acombout & (action_01_aaction_02_a_agen_a0_aaction_aS_acombout & ((action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout)))) # (!action_01_aaction_02_a_agen_a1_aaction_aS_acombout & 
-- ((action_01_aaction_02_a_agen_a2_aaction_aS_acombout & (action_01_aaction_02_a_agen_a0_aaction_aS_acombout)) # (!action_01_aaction_02_a_agen_a2_aaction_aS_acombout & ((action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a6_combout);

-- Location: LCCOMB_X39_Y36_N28
action_04_aD_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a7_combout = (action_01_aaction_02_a_agen_a0_aaction_aS_acombout & (action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout $ (((!action_01_aaction_02_a_agen_a1_aaction_aS_acombout & !action_01_aaction_02_a_agen_a2_aaction_aS_acombout))))) # 
-- (!action_01_aaction_02_a_agen_a0_aaction_aS_acombout & (action_01_aaction_02_a_agen_a1_aaction_aS_acombout & (action_01_aaction_02_a_agen_a2_aaction_aS_acombout & action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a7_combout);

-- Location: LCCOMB_X39_Y36_N30
action_04_aD_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_04_aD_a8_combout = (action_01_aaction_02_a_agen_a0_aaction_aS_acombout & (action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout & (action_01_aaction_02_a_agen_a1_aaction_aS_acombout $ (action_01_aaction_02_a_agen_a2_aaction_aS_acombout)))) # 
-- (!action_01_aaction_02_a_agen_a0_aaction_aS_acombout & (!action_01_aaction_02_a_agen_a1_aaction_aS_acombout & (action_01_aaction_02_a_agen_a2_aaction_aS_acombout $ (!action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a0_aaction_aS_acombout,
	datab => action_01_aaction_02_a_agen_a1_aaction_aS_acombout,
	datac => action_01_aaction_02_a_agen_a2_aaction_aS_acombout,
	datad => action_01_aaction_02_a_agen_a3_aaction_aS_a1_combout,
	combout => action_04_aD_a8_combout);

-- Location: LCCOMB_X59_Y4_N4
action_01_aaction_02_a_agen_a2_aaction_aCo_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a2_aaction_aCo_a0_combout = (action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout & ((B_a2_a_ainput_o $ (!ctrl_ainput_o)) # (!A_a2_a_ainput_o))) # (!action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout & (!A_a2_a_ainput_o & 
-- (B_a2_a_ainput_o $ (!ctrl_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => action_01_aaction_02_a_agen_a1_aaction_aCo_a0_combout,
	datab => B_a2_a_ainput_o,
	datac => ctrl_ainput_o,
	datad => A_a2_a_ainput_o,
	combout => action_01_aaction_02_a_agen_a2_aaction_aCo_a0_combout);

-- Location: LCCOMB_X59_Y4_N14
action_01_aaction_02_a_agen_a3_aaction_aCo_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout = (action_01_aaction_02_a_agen_a2_aaction_aCo_a0_combout & ((B_a3_a_ainput_o $ (!ctrl_ainput_o)) # (!A_a3_a_ainput_o))) # (!action_01_aaction_02_a_agen_a2_aaction_aCo_a0_combout & (!A_a3_a_ainput_o & 
-- (B_a3_a_ainput_o $ (!ctrl_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_a3_a_ainput_o,
	datab => action_01_aaction_02_a_agen_a2_aaction_aCo_a0_combout,
	datac => A_a3_a_ainput_o,
	datad => ctrl_ainput_o,
	combout => action_01_aaction_02_a_agen_a3_aaction_aCo_a0_combout);

-- Location: UNVM_X0_Y40_N40
a_aQUARTUS_CREATED_UNVM_a : fiftyfivenm_unvm
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
	nosc_ena => a_aQUARTUS_CREATED_GND_aI_combout,
	xe_ye => a_aQUARTUS_CREATED_GND_aI_combout,
	se => a_aQUARTUS_CREATED_GND_aI_combout,
	busy => a_aQUARTUS_CREATED_UNVM_a_abusy);

-- Location: ADCBLOCK_X43_Y52_N0
a_aQUARTUS_CREATED_ADC1_a : fiftyfivenm_adcblock
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
	soc => a_aQUARTUS_CREATED_GND_aI_combout,
	usr_pwd => VCC,
	tsen => a_aQUARTUS_CREATED_GND_aI_combout,
	chsel => a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC1_a_aeoc);

-- Location: ADCBLOCK_X43_Y51_N0
a_aQUARTUS_CREATED_ADC2_a : fiftyfivenm_adcblock
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
	soc => a_aQUARTUS_CREATED_GND_aI_combout,
	usr_pwd => VCC,
	tsen => a_aQUARTUS_CREATED_GND_aI_combout,
	chsel => a_aQUARTUS_CREATED_ADC2_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC2_a_aeoc);

ww_A_dec(0) <= A_dec_a0_a_aoutput_o;

ww_A_dec(1) <= A_dec_a1_a_aoutput_o;

ww_A_dec(2) <= A_dec_a2_a_aoutput_o;

ww_A_dec(3) <= A_dec_a3_a_aoutput_o;

ww_A_dec(4) <= A_dec_a4_a_aoutput_o;

ww_A_dec(5) <= A_dec_a5_a_aoutput_o;

ww_A_dec(6) <= A_dec_a6_a_aoutput_o;

ww_A_dec(7) <= A_dec_a7_a_aoutput_o;

ww_B_dec(0) <= B_dec_a0_a_aoutput_o;

ww_B_dec(1) <= B_dec_a1_a_aoutput_o;

ww_B_dec(2) <= B_dec_a2_a_aoutput_o;

ww_B_dec(3) <= B_dec_a3_a_aoutput_o;

ww_B_dec(4) <= B_dec_a4_a_aoutput_o;

ww_B_dec(5) <= B_dec_a5_a_aoutput_o;

ww_B_dec(6) <= B_dec_a6_a_aoutput_o;

ww_B_dec(7) <= B_dec_a7_a_aoutput_o;

ww_S_dec(0) <= S_dec_a0_a_aoutput_o;

ww_S_dec(1) <= S_dec_a1_a_aoutput_o;

ww_S_dec(2) <= S_dec_a2_a_aoutput_o;

ww_S_dec(3) <= S_dec_a3_a_aoutput_o;

ww_S_dec(4) <= S_dec_a4_a_aoutput_o;

ww_S_dec(5) <= S_dec_a5_a_aoutput_o;

ww_S_dec(6) <= S_dec_a6_a_aoutput_o;

ww_S_dec(7) <= S_dec_a7_a_aoutput_o;

ww_Cout <= Cout_aoutput_o;
END structure;


