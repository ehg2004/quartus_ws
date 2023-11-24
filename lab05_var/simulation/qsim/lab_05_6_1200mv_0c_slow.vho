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

-- DATE "10/27/2023 20:05:15"

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

ENTITY 	test02 IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	clk_ref : IN std_logic;
	pb_rst : IN std_logic;
	auto_ps : IN std_logic;
	pb_pause : IN std_logic;
	clk_sw : IN std_logic;
	led_clk : BUFFER std_logic;
	A : BUFFER std_logic_vector(3 DOWNTO 0);
	B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END test02;

-- Design Ports Information
-- X[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sw	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- auto_ps	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_rst	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_pause	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ref	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk_ref : std_logic;
SIGNAL ww_pb_rst : std_logic;
SIGNAL ww_auto_ps : std_logic;
SIGNAL ww_pb_pause : std_logic;
SIGNAL ww_clk_sw : std_logic;
SIGNAL ww_led_clk : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \clk_sw~input_o\ : std_logic;
SIGNAL \led_clk~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \pb_pause~input_o\ : std_logic;
SIGNAL \A_count|pause_trigger~0_combout\ : std_logic;
SIGNAL \clk_ref~input_o\ : std_logic;
SIGNAL \A_count|gen00~2_combout\ : std_logic;
SIGNAL \A_count|gen00~0_combout\ : std_logic;
SIGNAL \auto_ps~input_o\ : std_logic;
SIGNAL \B_count|pause_trigger~0_combout\ : std_logic;
SIGNAL \pb_rst~input_o\ : std_logic;
SIGNAL \B_count|comb~4_combout\ : std_logic;
SIGNAL \B_count|pause_trigger~q\ : std_logic;
SIGNAL \B_count|gen00~1_combout\ : std_logic;
SIGNAL \B_count|gen00~2_combout\ : std_logic;
SIGNAL \B_count|gen00~0_combout\ : std_logic;
SIGNAL \B_count|gen00~3_combout\ : std_logic;
SIGNAL \B_count|D_sM~2_combout\ : std_logic;
SIGNAL \pb_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \B_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \B_count|D_sM~5_combout\ : std_logic;
SIGNAL \B_count|D_sM~6_combout\ : std_logic;
SIGNAL \B_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \B_count|psed_o~combout\ : std_logic;
SIGNAL \B_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \B_count|D_sM~3_combout\ : std_logic;
SIGNAL \B_count|D_sM~4_combout\ : std_logic;
SIGNAL \B_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \B_count|comb~2_combout\ : std_logic;
SIGNAL \B_count|comb~0_combout\ : std_logic;
SIGNAL \B_count|lock_compare_trigger~0_combout\ : std_logic;
SIGNAL \B_count|comb~1_combout\ : std_logic;
SIGNAL \B_count|lock_compare_trigger~q\ : std_logic;
SIGNAL \A_count|gen00~1_combout\ : std_logic;
SIGNAL \A_count|psed_o~combout\ : std_logic;
SIGNAL \A_count|D_sM~2_combout\ : std_logic;
SIGNAL \A_count|gen00:2:ff0i~q\ : std_logic;
SIGNAL \A_count|D_sM[3]~3_combout\ : std_logic;
SIGNAL \A_count|D_sM[3]~4_combout\ : std_logic;
SIGNAL \A_count|gen00:3:ff0i~q\ : std_logic;
SIGNAL \A_count|D_sM~1_combout\ : std_logic;
SIGNAL \A_count|gen00:1:ff0i~q\ : std_logic;
SIGNAL \A_count|rst_cmp|outp~0_combout\ : std_logic;
SIGNAL \A_count|comb~0_combout\ : std_logic;
SIGNAL \A_count|lock_compare_trigger~0_combout\ : std_logic;
SIGNAL \A_count|lock_compare_trigger~q\ : std_logic;
SIGNAL \A_count|comb~3_combout\ : std_logic;
SIGNAL \A_count|pause_trigger~q\ : std_logic;
SIGNAL \A_count|gen00~3_combout\ : std_logic;
SIGNAL \A_count|D_sM~0_combout\ : std_logic;
SIGNAL \A_count|gen00:0:ff0i~feeder_combout\ : std_logic;
SIGNAL \A_count|gen00:0:ff0i~q\ : std_logic;
SIGNAL \B_count|D_sM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_pb_pause~input_o\ : std_logic;
SIGNAL \B_count|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \A_count|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \B_count|ALT_INV_comb~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_clk_ref <= clk_ref;
ww_pb_rst <= pb_rst;
ww_auto_ps <= auto_ps;
ww_pb_pause <= pb_pause;
ww_clk_sw <= clk_sw;
led_clk <= ww_led_clk;
A <= ww_A;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pb_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pb_rst~input_o\);
\ALT_INV_pb_pause~input_o\ <= NOT \pb_pause~input_o\;
\B_count|ALT_INV_comb~4_combout\ <= NOT \B_count|comb~4_combout\;
\A_count|ALT_INV_comb~3_combout\ <= NOT \A_count|comb~3_combout\;
\B_count|ALT_INV_comb~1_combout\ <= NOT \B_count|comb~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y31_N9
\led_clk~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_clk~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:0:ff0i~q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:1:ff0i~q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:2:ff0i~q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_count|gen00:3:ff0i~q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOIBUF_X33_Y12_N1
\pb_pause~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_pause,
	o => \pb_pause~input_o\);

-- Location: LCCOMB_X31_Y13_N28
\A_count|pause_trigger~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|pause_trigger~0_combout\ = !\A_count|pause_trigger~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|pause_trigger~q\,
	combout => \A_count|pause_trigger~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\clk_ref~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ref,
	o => \clk_ref~input_o\);

-- Location: LCCOMB_X32_Y14_N26
\A_count|gen00~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|gen00~2_combout\ = LCELL((!\A_count|pause_trigger~q\ & \clk_ref~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|pause_trigger~q\,
	datad => \clk_ref~input_o\,
	combout => \A_count|gen00~2_combout\);

-- Location: LCCOMB_X32_Y14_N20
\A_count|gen00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|gen00~0_combout\ = LCELL((!\A_count|pause_trigger~q\ & \clk_ref~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|pause_trigger~q\,
	datad => \clk_ref~input_o\,
	combout => \A_count|gen00~0_combout\);

-- Location: IOIBUF_X33_Y11_N1
\auto_ps~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_auto_ps,
	o => \auto_ps~input_o\);

-- Location: LCCOMB_X31_Y13_N0
\B_count|pause_trigger~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|pause_trigger~0_combout\ = !\B_count|pause_trigger~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_count|pause_trigger~q\,
	combout => \B_count|pause_trigger~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\pb_rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_rst,
	o => \pb_rst~input_o\);

-- Location: LCCOMB_X32_Y13_N18
\B_count|comb~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|comb~4_combout\ = ((\auto_ps~input_o\ & \B_count|lock_compare_trigger~q\)) # (!\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_rst~input_o\,
	datac => \auto_ps~input_o\,
	datad => \B_count|lock_compare_trigger~q\,
	combout => \B_count|comb~4_combout\);

-- Location: FF_X31_Y13_N1
\B_count|pause_trigger\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb_pause~input_o\,
	d => \B_count|pause_trigger~0_combout\,
	clrn => \B_count|ALT_INV_comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|pause_trigger~q\);

-- Location: LCCOMB_X32_Y14_N18
\B_count|gen00~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|gen00~1_combout\ = LCELL((!\B_count|pause_trigger~q\ & ((!\A_count|gen00:0:ff0i~q\) # (!\A_count|rst_cmp|outp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|rst_cmp|outp~0_combout\,
	datac => \A_count|gen00:0:ff0i~q\,
	datad => \B_count|pause_trigger~q\,
	combout => \B_count|gen00~1_combout\);

-- Location: LCCOMB_X32_Y14_N8
\B_count|gen00~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|gen00~2_combout\ = LCELL((!\B_count|pause_trigger~q\ & ((!\A_count|gen00:0:ff0i~q\) # (!\A_count|rst_cmp|outp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|rst_cmp|outp~0_combout\,
	datac => \A_count|gen00:0:ff0i~q\,
	datad => \B_count|pause_trigger~q\,
	combout => \B_count|gen00~2_combout\);

-- Location: LCCOMB_X31_Y14_N30
\B_count|gen00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|gen00~0_combout\ = LCELL((!\B_count|pause_trigger~q\ & ((!\A_count|rst_cmp|outp~0_combout\) # (!\A_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_count|gen00:0:ff0i~q\,
	datac => \A_count|rst_cmp|outp~0_combout\,
	datad => \B_count|pause_trigger~q\,
	combout => \B_count|gen00~0_combout\);

-- Location: LCCOMB_X32_Y14_N22
\B_count|gen00~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|gen00~3_combout\ = LCELL((!\B_count|pause_trigger~q\ & ((!\A_count|gen00:0:ff0i~q\) # (!\A_count|rst_cmp|outp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|rst_cmp|outp~0_combout\,
	datac => \A_count|gen00:0:ff0i~q\,
	datad => \B_count|pause_trigger~q\,
	combout => \B_count|gen00~3_combout\);

-- Location: LCCOMB_X32_Y11_N26
\B_count|D_sM~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|D_sM~2_combout\ = (!\B_count|gen00:0:ff0i~q\ & ((!\B_count|lock_compare_trigger~q\) # (!\auto_ps~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_ps~input_o\,
	datac => \B_count|gen00:0:ff0i~q\,
	datad => \B_count|lock_compare_trigger~q\,
	combout => \B_count|D_sM~2_combout\);

-- Location: CLKCTRL_G17
\pb_rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pb_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pb_rst~inputclkctrl_outclk\);

-- Location: FF_X32_Y11_N27
\B_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|gen00~3_combout\,
	d => \B_count|D_sM~2_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:0:ff0i~q\);

-- Location: LCCOMB_X32_Y11_N28
\B_count|D_sM~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|D_sM~5_combout\ = (\B_count|gen00:0:ff0i~q\ & (((\B_count|gen00:2:ff0i~q\ & \B_count|gen00:1:ff0i~q\)))) # (!\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:3:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:0:ff0i~q\,
	datab => \B_count|gen00:3:ff0i~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|gen00:1:ff0i~q\,
	combout => \B_count|D_sM~5_combout\);

-- Location: LCCOMB_X32_Y11_N22
\B_count|D_sM~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|D_sM~6_combout\ = (\B_count|D_sM~5_combout\ & ((!\B_count|lock_compare_trigger~q\) # (!\auto_ps~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datac => \B_count|lock_compare_trigger~q\,
	datad => \B_count|D_sM~5_combout\,
	combout => \B_count|D_sM~6_combout\);

-- Location: FF_X32_Y11_N23
\B_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|gen00~0_combout\,
	d => \B_count|D_sM~6_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X31_Y11_N8
\B_count|psed_o\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|psed_o~combout\ = (\auto_ps~input_o\ & \B_count|lock_compare_trigger~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datad => \B_count|lock_compare_trigger~q\,
	combout => \B_count|psed_o~combout\);

-- Location: LCCOMB_X31_Y11_N14
\B_count|D_sM[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|D_sM\(1) = (\B_count|psed_o~combout\) # ((\B_count|gen00:0:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & !\B_count|gen00:1:ff0i~q\)) # (!\B_count|gen00:0:ff0i~q\ & ((\B_count|gen00:1:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:3:ff0i~q\,
	datab => \B_count|gen00:0:ff0i~q\,
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|psed_o~combout\,
	combout => \B_count|D_sM\(1));

-- Location: FF_X31_Y11_N15
\B_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|gen00~2_combout\,
	d => \B_count|D_sM\(1),
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X31_Y11_N28
\B_count|D_sM~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|D_sM~3_combout\ = (!\B_count|gen00:0:ff0i~q\) # (!\B_count|gen00:1:ff0i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_count|gen00:1:ff0i~q\,
	datad => \B_count|gen00:0:ff0i~q\,
	combout => \B_count|D_sM~3_combout\);

-- Location: LCCOMB_X31_Y11_N16
\B_count|D_sM~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|D_sM~4_combout\ = (\auto_ps~input_o\ & (!\B_count|lock_compare_trigger~q\ & (\B_count|gen00:2:ff0i~q\ $ (!\B_count|D_sM~3_combout\)))) # (!\auto_ps~input_o\ & ((\B_count|gen00:2:ff0i~q\ $ (!\B_count|D_sM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datab => \B_count|lock_compare_trigger~q\,
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|D_sM~3_combout\,
	combout => \B_count|D_sM~4_combout\);

-- Location: FF_X31_Y11_N17
\B_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|gen00~1_combout\,
	d => \B_count|D_sM~4_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X32_Y11_N2
\B_count|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|comb~2_combout\ = (!\B_count|gen00:0:ff0i~q\ & (\B_count|gen00:1:ff0i~q\ & (!\B_count|gen00:3:ff0i~q\ & \auto_ps~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_count|gen00:0:ff0i~q\,
	datab => \B_count|gen00:1:ff0i~q\,
	datac => \B_count|gen00:3:ff0i~q\,
	datad => \auto_ps~input_o\,
	combout => \B_count|comb~2_combout\);

-- Location: LCCOMB_X32_Y11_N30
\B_count|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|comb~0_combout\ = LCELL((!\B_count|gen00:2:ff0i~q\ & \B_count|comb~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_count|gen00:2:ff0i~q\,
	datad => \B_count|comb~2_combout\,
	combout => \B_count|comb~0_combout\);

-- Location: LCCOMB_X32_Y13_N0
\B_count|lock_compare_trigger~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|lock_compare_trigger~0_combout\ = !\B_count|lock_compare_trigger~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_count|lock_compare_trigger~q\,
	combout => \B_count|lock_compare_trigger~0_combout\);

-- Location: LCCOMB_X32_Y13_N26
\B_count|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_count|comb~1_combout\ = (!\pb_rst~input_o\) # (!\pb_pause~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_pause~input_o\,
	datad => \pb_rst~input_o\,
	combout => \B_count|comb~1_combout\);

-- Location: FF_X32_Y13_N1
\B_count|lock_compare_trigger\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \B_count|comb~0_combout\,
	d => \B_count|lock_compare_trigger~0_combout\,
	clrn => \B_count|ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_count|lock_compare_trigger~q\);

-- Location: LCCOMB_X32_Y14_N16
\A_count|gen00~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|gen00~1_combout\ = LCELL((!\A_count|pause_trigger~q\ & \clk_ref~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|pause_trigger~q\,
	datad => \clk_ref~input_o\,
	combout => \A_count|gen00~1_combout\);

-- Location: LCCOMB_X32_Y14_N0
\A_count|psed_o\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|psed_o~combout\ = (\auto_ps~input_o\ & (\A_count|lock_compare_trigger~q\ & \B_count|lock_compare_trigger~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_ps~input_o\,
	datac => \A_count|lock_compare_trigger~q\,
	datad => \B_count|lock_compare_trigger~q\,
	combout => \A_count|psed_o~combout\);

-- Location: LCCOMB_X32_Y14_N24
\A_count|D_sM~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|D_sM~2_combout\ = (!\A_count|psed_o~combout\ & (\A_count|gen00:2:ff0i~q\ $ (((\A_count|gen00:1:ff0i~q\ & \A_count|gen00:0:ff0i~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:1:ff0i~q\,
	datab => \A_count|gen00:0:ff0i~q\,
	datac => \A_count|gen00:2:ff0i~q\,
	datad => \A_count|psed_o~combout\,
	combout => \A_count|D_sM~2_combout\);

-- Location: FF_X32_Y14_N25
\A_count|gen00:2:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|gen00~1_combout\,
	d => \A_count|D_sM~2_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:2:ff0i~q\);

-- Location: LCCOMB_X32_Y14_N12
\A_count|D_sM[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|D_sM[3]~3_combout\ = (\A_count|gen00:0:ff0i~q\ & (\A_count|gen00:2:ff0i~q\ & ((\A_count|gen00:1:ff0i~q\)))) # (!\A_count|gen00:0:ff0i~q\ & (((\A_count|gen00:3:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:2:ff0i~q\,
	datab => \A_count|gen00:3:ff0i~q\,
	datac => \A_count|gen00:0:ff0i~q\,
	datad => \A_count|gen00:1:ff0i~q\,
	combout => \A_count|D_sM[3]~3_combout\);

-- Location: LCCOMB_X32_Y14_N14
\A_count|D_sM[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|D_sM[3]~4_combout\ = (\A_count|D_sM[3]~3_combout\) # ((\auto_ps~input_o\ & (\B_count|lock_compare_trigger~q\ & \A_count|lock_compare_trigger~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datab => \B_count|lock_compare_trigger~q\,
	datac => \A_count|lock_compare_trigger~q\,
	datad => \A_count|D_sM[3]~3_combout\,
	combout => \A_count|D_sM[3]~4_combout\);

-- Location: FF_X32_Y14_N15
\A_count|gen00:3:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|gen00~0_combout\,
	d => \A_count|D_sM[3]~4_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:3:ff0i~q\);

-- Location: LCCOMB_X31_Y14_N14
\A_count|D_sM~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|D_sM~1_combout\ = (!\A_count|psed_o~combout\ & ((\A_count|gen00:1:ff0i~q\ & ((!\A_count|gen00:0:ff0i~q\))) # (!\A_count|gen00:1:ff0i~q\ & (!\A_count|gen00:3:ff0i~q\ & \A_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:3:ff0i~q\,
	datab => \A_count|psed_o~combout\,
	datac => \A_count|gen00:1:ff0i~q\,
	datad => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|D_sM~1_combout\);

-- Location: FF_X31_Y14_N15
\A_count|gen00:1:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|gen00~2_combout\,
	d => \A_count|D_sM~1_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:1:ff0i~q\);

-- Location: LCCOMB_X32_Y14_N30
\A_count|rst_cmp|outp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|rst_cmp|outp~0_combout\ = (!\A_count|gen00:1:ff0i~q\ & (\A_count|gen00:3:ff0i~q\ & !\A_count|gen00:2:ff0i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|gen00:1:ff0i~q\,
	datac => \A_count|gen00:3:ff0i~q\,
	datad => \A_count|gen00:2:ff0i~q\,
	combout => \A_count|rst_cmp|outp~0_combout\);

-- Location: LCCOMB_X32_Y13_N24
\A_count|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|comb~0_combout\ = LCELL((\A_count|rst_cmp|outp~0_combout\ & (\B_count|lock_compare_trigger~q\ & (\auto_ps~input_o\ & !\A_count|gen00:0:ff0i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|rst_cmp|outp~0_combout\,
	datab => \B_count|lock_compare_trigger~q\,
	datac => \auto_ps~input_o\,
	datad => \A_count|gen00:0:ff0i~q\,
	combout => \A_count|comb~0_combout\);

-- Location: LCCOMB_X32_Y13_N28
\A_count|lock_compare_trigger~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|lock_compare_trigger~0_combout\ = !\A_count|lock_compare_trigger~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|lock_compare_trigger~q\,
	combout => \A_count|lock_compare_trigger~0_combout\);

-- Location: FF_X32_Y13_N29
\A_count|lock_compare_trigger\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|comb~0_combout\,
	d => \A_count|lock_compare_trigger~0_combout\,
	clrn => \B_count|ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|lock_compare_trigger~q\);

-- Location: LCCOMB_X32_Y13_N30
\A_count|comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|comb~3_combout\ = ((\A_count|lock_compare_trigger~q\ & (\auto_ps~input_o\ & \B_count|lock_compare_trigger~q\))) # (!\pb_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_count|lock_compare_trigger~q\,
	datab => \pb_rst~input_o\,
	datac => \auto_ps~input_o\,
	datad => \B_count|lock_compare_trigger~q\,
	combout => \A_count|comb~3_combout\);

-- Location: FF_X31_Y13_N29
\A_count|pause_trigger\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_pb_pause~input_o\,
	d => \A_count|pause_trigger~0_combout\,
	clrn => \A_count|ALT_INV_comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|pause_trigger~q\);

-- Location: LCCOMB_X32_Y14_N28
\A_count|gen00~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|gen00~3_combout\ = LCELL((!\A_count|pause_trigger~q\ & \clk_ref~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_count|pause_trigger~q\,
	datad => \clk_ref~input_o\,
	combout => \A_count|gen00~3_combout\);

-- Location: LCCOMB_X32_Y13_N12
\A_count|D_sM~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|D_sM~0_combout\ = (!\A_count|gen00:0:ff0i~q\ & (((!\B_count|lock_compare_trigger~q\) # (!\A_count|lock_compare_trigger~q\)) # (!\auto_ps~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_ps~input_o\,
	datab => \A_count|lock_compare_trigger~q\,
	datac => \A_count|gen00:0:ff0i~q\,
	datad => \B_count|lock_compare_trigger~q\,
	combout => \A_count|D_sM~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\A_count|gen00:0:ff0i~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A_count|gen00:0:ff0i~feeder_combout\ = \A_count|D_sM~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_count|D_sM~0_combout\,
	combout => \A_count|gen00:0:ff0i~feeder_combout\);

-- Location: FF_X31_Y14_N19
\A_count|gen00:0:ff0i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A_count|gen00~3_combout\,
	d => \A_count|gen00:0:ff0i~feeder_combout\,
	clrn => \pb_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_count|gen00:0:ff0i~q\);

-- Location: IOIBUF_X33_Y16_N8
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\clk_sw~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sw,
	o => \clk_sw~input_o\);

ww_led_clk <= \led_clk~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


