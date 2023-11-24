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

-- DATE "09/28/2023 11:59:22"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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
-- ~ALTERA_NCEO~	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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

ENTITY 	PISOtoSIPOmod8 IS
    PORT (
	N_in : IN std_logic_vector(7 DOWNTO 0);
	A_out : OUT std_logic_vector(7 DOWNTO 0);
	B_out : OUT std_logic_vector(7 DOWNTO 0);
	sipo_dbg : OUT std_logic_vector(7 DOWNTO 0);
	piso_dbg : OUT std_logic;
	ctindbg : OUT std_logic;
	ctoutdbg : OUT std_logic_vector(2 DOWNTO 0);
	dbgdff0 : OUT std_logic;
	dbgff1 : OUT std_logic;
	clk : IN std_logic;
	PB0 : IN std_logic;
	PB1 : IN std_logic
	);
END PISOtoSIPOmod8;

-- Design Ports Information
-- A_out[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[5]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sipo_dbg[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_dbg	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctindbg	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctoutdbg[0]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctoutdbg[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctoutdbg[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgdff0	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbgff1	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PISOtoSIPOmod8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_N_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sipo_dbg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_piso_dbg : std_logic;
SIGNAL ww_ctindbg : std_logic;
SIGNAL ww_ctoutdbg : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dbgdff0 : std_logic;
SIGNAL ww_dbgff1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL \PB0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count00|gen00:2:a00~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A_out[0]~output_o\ : std_logic;
SIGNAL \A_out[1]~output_o\ : std_logic;
SIGNAL \A_out[2]~output_o\ : std_logic;
SIGNAL \A_out[3]~output_o\ : std_logic;
SIGNAL \A_out[4]~output_o\ : std_logic;
SIGNAL \A_out[5]~output_o\ : std_logic;
SIGNAL \A_out[6]~output_o\ : std_logic;
SIGNAL \A_out[7]~output_o\ : std_logic;
SIGNAL \B_out[0]~output_o\ : std_logic;
SIGNAL \B_out[1]~output_o\ : std_logic;
SIGNAL \B_out[2]~output_o\ : std_logic;
SIGNAL \B_out[3]~output_o\ : std_logic;
SIGNAL \B_out[4]~output_o\ : std_logic;
SIGNAL \B_out[5]~output_o\ : std_logic;
SIGNAL \B_out[6]~output_o\ : std_logic;
SIGNAL \B_out[7]~output_o\ : std_logic;
SIGNAL \sipo_dbg[0]~output_o\ : std_logic;
SIGNAL \sipo_dbg[1]~output_o\ : std_logic;
SIGNAL \sipo_dbg[2]~output_o\ : std_logic;
SIGNAL \sipo_dbg[3]~output_o\ : std_logic;
SIGNAL \sipo_dbg[4]~output_o\ : std_logic;
SIGNAL \sipo_dbg[5]~output_o\ : std_logic;
SIGNAL \sipo_dbg[6]~output_o\ : std_logic;
SIGNAL \sipo_dbg[7]~output_o\ : std_logic;
SIGNAL \piso_dbg~output_o\ : std_logic;
SIGNAL \ctindbg~output_o\ : std_logic;
SIGNAL \ctoutdbg[0]~output_o\ : std_logic;
SIGNAL \ctoutdbg[1]~output_o\ : std_logic;
SIGNAL \ctoutdbg[2]~output_o\ : std_logic;
SIGNAL \dbgdff0~output_o\ : std_logic;
SIGNAL \dbgff1~output_o\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \PB0~inputclkctrl_outclk\ : std_logic;
SIGNAL \N_in[0]~input_o\ : std_logic;
SIGNAL \regin|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \regin|gen00:0:aa00~q\ : std_logic;
SIGNAL \N_in[1]~input_o\ : std_logic;
SIGNAL \regin|gen00:1:aa00~q\ : std_logic;
SIGNAL \N_in[2]~input_o\ : std_logic;
SIGNAL \regin|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \regin|gen00:2:aa00~q\ : std_logic;
SIGNAL \N_in[3]~input_o\ : std_logic;
SIGNAL \regin|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \regin|gen00:3:aa00~q\ : std_logic;
SIGNAL \N_in[4]~input_o\ : std_logic;
SIGNAL \regin|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \regin|gen00:4:aa00~q\ : std_logic;
SIGNAL \N_in[5]~input_o\ : std_logic;
SIGNAL \regin|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \regin|gen00:5:aa00~q\ : std_logic;
SIGNAL \N_in[6]~input_o\ : std_logic;
SIGNAL \regin|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \regin|gen00:6:aa00~q\ : std_logic;
SIGNAL \N_in[7]~input_o\ : std_logic;
SIGNAL \regin|gen00:7:aa00~q\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dff01~1_combout\ : std_logic;
SIGNAL \dff01~0_combout\ : std_logic;
SIGNAL \dff01~_emulated_q\ : std_logic;
SIGNAL \dff01~2_combout\ : std_logic;
SIGNAL \ct_in~combout\ : std_logic;
SIGNAL \count00|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \count00|gen00:0:a00~feeder_combout\ : std_logic;
SIGNAL \count00|gen00:0:a00~q\ : std_logic;
SIGNAL \count00|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \count00|gen00:1:a00~feeder_combout\ : std_logic;
SIGNAL \count00|gen00:1:a00~q\ : std_logic;
SIGNAL \count00|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \count00|gen00:2:a00~feeder_combout\ : std_logic;
SIGNAL \count00|gen00:2:a00~q\ : std_logic;
SIGNAL \count00|gen00:2:a00~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso00|DM_s~7_combout\ : std_logic;
SIGNAL \piso00|gen00:0:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[1]~6_combout\ : std_logic;
SIGNAL \piso00|gen00:1:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[2]~5_combout\ : std_logic;
SIGNAL \piso00|gen00:2:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[3]~4_combout\ : std_logic;
SIGNAL \piso00|gen00:3:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[4]~3_combout\ : std_logic;
SIGNAL \piso00|gen00:4:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[5]~2_combout\ : std_logic;
SIGNAL \piso00|gen00:5:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[6]~1_combout\ : std_logic;
SIGNAL \piso00|gen00:6:aa01~q\ : std_logic;
SIGNAL \piso00|DM_s[7]~0_combout\ : std_logic;
SIGNAL \piso00|gen00:7:aa01~q\ : std_logic;
SIGNAL \sipo00|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:0:aa00~q\ : std_logic;
SIGNAL \regout|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:0:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:1:aa00~q\ : std_logic;
SIGNAL \regout|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:1:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:2:aa00~q\ : std_logic;
SIGNAL \regout|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:2:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:3:aa00~q\ : std_logic;
SIGNAL \regout|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:3:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:4:aa00~q\ : std_logic;
SIGNAL \regout|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:4:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:5:aa00~q\ : std_logic;
SIGNAL \regout|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:5:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:6:aa00~q\ : std_logic;
SIGNAL \regout|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:6:aa00~q\ : std_logic;
SIGNAL \sipo00|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \sipo00|gen00:7:aa00~q\ : std_logic;
SIGNAL \regout|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \regout|gen00:7:aa00~q\ : std_logic;
SIGNAL \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_dff01~0_combout\ : std_logic;
SIGNAL \count00|ALT_INV_gen00:2:a00~q\ : std_logic;
SIGNAL \count00|ALT_INV_gen00:1:a00~q\ : std_logic;
SIGNAL \count00|ALT_INV_gen00:0:a00~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_N_in <= N_in;
A_out <= ww_A_out;
B_out <= ww_B_out;
sipo_dbg <= ww_sipo_dbg;
piso_dbg <= ww_piso_dbg;
ctindbg <= ww_ctindbg;
ctoutdbg <= ww_ctoutdbg;
dbgdff0 <= ww_dbgdff0;
dbgff1 <= ww_dbgff1;
ww_clk <= clk;
ww_PB0 <= PB0;
ww_PB1 <= PB1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PB0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PB0~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\count00|gen00:2:a00~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count00|gen00:2:a00~q\);
\count00|ALT_INV_gen00:2:a00~clkctrl_outclk\ <= NOT \count00|gen00:2:a00~clkctrl_outclk\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_dff01~0_combout\ <= NOT \dff01~0_combout\;
\count00|ALT_INV_gen00:2:a00~q\ <= NOT \count00|gen00:2:a00~q\;
\count00|ALT_INV_gen00:1:a00~q\ <= NOT \count00|gen00:1:a00~q\;
\count00|ALT_INV_gen00:0:a00~q\ <= NOT \count00|gen00:0:a00~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y32_N2
\A_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[0]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\A_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\A_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\A_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\A_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[4]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\A_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\A_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\A_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regin|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \A_out[7]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\B_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[0]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\B_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[1]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\B_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\B_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[3]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\B_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[4]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\B_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[5]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\B_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[6]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\B_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regout|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \B_out[7]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\sipo_dbg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\sipo_dbg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[1]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\sipo_dbg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\sipo_dbg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[3]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\sipo_dbg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[4]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\sipo_dbg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[5]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\sipo_dbg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[6]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\sipo_dbg[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sipo00|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \sipo_dbg[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\piso_dbg~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso00|gen00:7:aa01~q\,
	devoe => ww_devoe,
	o => \piso_dbg~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\ctindbg~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ct_in~combout\,
	devoe => ww_devoe,
	o => \ctindbg~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\ctoutdbg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count00|gen00:0:a00~q\,
	devoe => ww_devoe,
	o => \ctoutdbg[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ctoutdbg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count00|gen00:1:a00~q\,
	devoe => ww_devoe,
	o => \ctoutdbg[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\ctoutdbg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count00|gen00:2:a00~q\,
	devoe => ww_devoe,
	o => \ctoutdbg[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\dbgdff0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PB1~input_o\,
	devoe => ww_devoe,
	o => \dbgdff0~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\dbgff1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff01~2_combout\,
	devoe => ww_devoe,
	o => \dbgff1~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\PB0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB0,
	o => \PB0~input_o\);

-- Location: CLKCTRL_G19
\PB0~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PB0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PB0~inputclkctrl_outclk\);

-- Location: IOIBUF_X48_Y41_N8
\N_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(0),
	o => \N_in[0]~input_o\);

-- Location: LCCOMB_X42_Y37_N16
\regin|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regin|gen00:0:aa00~feeder_combout\ = \N_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[0]~input_o\,
	combout => \regin|gen00:0:aa00~feeder_combout\);

-- Location: FF_X42_Y37_N17
\regin|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \regin|gen00:0:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:0:aa00~q\);

-- Location: IOIBUF_X50_Y41_N8
\N_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(1),
	o => \N_in[1]~input_o\);

-- Location: FF_X42_Y37_N23
\regin|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \N_in[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:1:aa00~q\);

-- Location: IOIBUF_X46_Y41_N1
\N_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(2),
	o => \N_in[2]~input_o\);

-- Location: LCCOMB_X42_Y37_N8
\regin|gen00:2:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regin|gen00:2:aa00~feeder_combout\ = \N_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[2]~input_o\,
	combout => \regin|gen00:2:aa00~feeder_combout\);

-- Location: FF_X42_Y37_N9
\regin|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \regin|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:2:aa00~q\);

-- Location: IOIBUF_X50_Y41_N1
\N_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(3),
	o => \N_in[3]~input_o\);

-- Location: LCCOMB_X42_Y37_N30
\regin|gen00:3:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regin|gen00:3:aa00~feeder_combout\ = \N_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[3]~input_o\,
	combout => \regin|gen00:3:aa00~feeder_combout\);

-- Location: FF_X42_Y37_N31
\regin|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \regin|gen00:3:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:3:aa00~q\);

-- Location: IOIBUF_X31_Y41_N22
\N_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(4),
	o => \N_in[4]~input_o\);

-- Location: LCCOMB_X42_Y37_N4
\regin|gen00:4:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regin|gen00:4:aa00~feeder_combout\ = \N_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[4]~input_o\,
	combout => \regin|gen00:4:aa00~feeder_combout\);

-- Location: FF_X42_Y37_N5
\regin|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \regin|gen00:4:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:4:aa00~q\);

-- Location: IOIBUF_X46_Y41_N8
\N_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(5),
	o => \N_in[5]~input_o\);

-- Location: LCCOMB_X42_Y37_N14
\regin|gen00:5:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regin|gen00:5:aa00~feeder_combout\ = \N_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[5]~input_o\,
	combout => \regin|gen00:5:aa00~feeder_combout\);

-- Location: FF_X42_Y37_N15
\regin|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \regin|gen00:5:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:5:aa00~q\);

-- Location: IOIBUF_X43_Y41_N8
\N_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(6),
	o => \N_in[6]~input_o\);

-- Location: LCCOMB_X42_Y37_N28
\regin|gen00:6:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regin|gen00:6:aa00~feeder_combout\ = \N_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[6]~input_o\,
	combout => \regin|gen00:6:aa00~feeder_combout\);

-- Location: FF_X42_Y37_N29
\regin|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \regin|gen00:6:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:6:aa00~q\);

-- Location: IOIBUF_X43_Y41_N1
\N_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(7),
	o => \N_in[7]~input_o\);

-- Location: FF_X42_Y37_N27
\regin|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \N_in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regin|gen00:7:aa00~q\);

-- Location: IOIBUF_X31_Y0_N1
\PB1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB1,
	o => \PB1~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X27_Y1_N20
\dff01~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dff01~1_combout\ = (\PB0~input_o\ & ((\dff01~1_combout\) # (!\PB1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB0~input_o\,
	datac => \PB1~input_o\,
	datad => \dff01~1_combout\,
	combout => \dff01~1_combout\);

-- Location: LCCOMB_X27_Y1_N30
\dff01~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dff01~0_combout\ = (!\PB0~input_o\) # (!\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datad => \PB0~input_o\,
	combout => \dff01~0_combout\);

-- Location: FF_X27_Y1_N31
\dff01~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~q\,
	asdata => \dff01~1_combout\,
	clrn => \ALT_INV_dff01~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff01~_emulated_q\);

-- Location: LCCOMB_X27_Y1_N16
\dff01~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dff01~2_combout\ = (\PB0~input_o\ & ((\dff01~1_combout\ $ (\dff01~_emulated_q\)) # (!\PB1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datab => \dff01~1_combout\,
	datac => \dff01~_emulated_q\,
	datad => \PB0~input_o\,
	combout => \dff01~2_combout\);

-- Location: LCCOMB_X27_Y1_N22
ct_in : cycloneiv_lcell_comb
-- Equation(s):
-- \ct_in~combout\ = LCELL((\PB1~input_o\ & (!\clk~input_o\ & \dff01~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \clk~input_o\,
	datad => \dff01~2_combout\,
	combout => \ct_in~combout\);

-- Location: LCCOMB_X26_Y1_N20
\count00|gen00:0:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count00|gen00:0:a00~0_combout\ = !\count00|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count00|gen00:0:a00~q\,
	combout => \count00|gen00:0:a00~0_combout\);

-- Location: LCCOMB_X26_Y1_N26
\count00|gen00:0:a00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count00|gen00:0:a00~feeder_combout\ = \count00|gen00:0:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count00|gen00:0:a00~0_combout\,
	combout => \count00|gen00:0:a00~feeder_combout\);

-- Location: FF_X26_Y1_N27
\count00|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ct_in~combout\,
	d => \count00|gen00:0:a00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count00|gen00:0:a00~q\);

-- Location: LCCOMB_X26_Y1_N24
\count00|gen00:1:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count00|gen00:1:a00~0_combout\ = !\count00|gen00:1:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count00|gen00:1:a00~q\,
	combout => \count00|gen00:1:a00~0_combout\);

-- Location: LCCOMB_X26_Y1_N16
\count00|gen00:1:a00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count00|gen00:1:a00~feeder_combout\ = \count00|gen00:1:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count00|gen00:1:a00~0_combout\,
	combout => \count00|gen00:1:a00~feeder_combout\);

-- Location: FF_X26_Y1_N17
\count00|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:0:a00~q\,
	d => \count00|gen00:1:a00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count00|gen00:1:a00~q\);

-- Location: LCCOMB_X27_Y1_N2
\count00|gen00:2:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count00|gen00:2:a00~0_combout\ = !\count00|gen00:2:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count00|gen00:2:a00~q\,
	combout => \count00|gen00:2:a00~0_combout\);

-- Location: LCCOMB_X27_Y1_N4
\count00|gen00:2:a00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count00|gen00:2:a00~feeder_combout\ = \count00|gen00:2:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count00|gen00:2:a00~0_combout\,
	combout => \count00|gen00:2:a00~feeder_combout\);

-- Location: FF_X27_Y1_N5
\count00|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:1:a00~q\,
	d => \count00|gen00:2:a00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count00|gen00:2:a00~q\);

-- Location: CLKCTRL_G18
\count00|gen00:2:a00~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count00|gen00:2:a00~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count00|gen00:2:a00~clkctrl_outclk\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X42_Y37_N2
\piso00|DM_s~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s~7_combout\ = (!\PB1~input_o\ & \regin|gen00:0:aa00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datad => \regin|gen00:0:aa00~q\,
	combout => \piso00|DM_s~7_combout\);

-- Location: FF_X42_Y37_N3
\piso00|gen00:0:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:0:aa01~q\);

-- Location: LCCOMB_X42_Y37_N0
\piso00|DM_s[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[1]~6_combout\ = (\PB1~input_o\ & ((\piso00|gen00:0:aa01~q\))) # (!\PB1~input_o\ & (\regin|gen00:1:aa00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \regin|gen00:1:aa00~q\,
	datad => \piso00|gen00:0:aa01~q\,
	combout => \piso00|DM_s[1]~6_combout\);

-- Location: FF_X42_Y37_N1
\piso00|gen00:1:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:1:aa01~q\);

-- Location: LCCOMB_X42_Y37_N6
\piso00|DM_s[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[2]~5_combout\ = (\PB1~input_o\ & (\piso00|gen00:1:aa01~q\)) # (!\PB1~input_o\ & ((\regin|gen00:2:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datab => \piso00|gen00:1:aa01~q\,
	datac => \regin|gen00:2:aa00~q\,
	combout => \piso00|DM_s[2]~5_combout\);

-- Location: FF_X42_Y37_N7
\piso00|gen00:2:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:2:aa01~q\);

-- Location: LCCOMB_X42_Y37_N12
\piso00|DM_s[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[3]~4_combout\ = (\PB1~input_o\ & ((\piso00|gen00:2:aa01~q\))) # (!\PB1~input_o\ & (\regin|gen00:3:aa00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \regin|gen00:3:aa00~q\,
	datad => \piso00|gen00:2:aa01~q\,
	combout => \piso00|DM_s[3]~4_combout\);

-- Location: FF_X42_Y37_N13
\piso00|gen00:3:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:3:aa01~q\);

-- Location: LCCOMB_X42_Y37_N10
\piso00|DM_s[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[4]~3_combout\ = (\PB1~input_o\ & ((\piso00|gen00:3:aa01~q\))) # (!\PB1~input_o\ & (\regin|gen00:4:aa00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \regin|gen00:4:aa00~q\,
	datad => \piso00|gen00:3:aa01~q\,
	combout => \piso00|DM_s[4]~3_combout\);

-- Location: FF_X42_Y37_N11
\piso00|gen00:4:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:4:aa01~q\);

-- Location: LCCOMB_X42_Y37_N20
\piso00|DM_s[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[5]~2_combout\ = (\PB1~input_o\ & ((\piso00|gen00:4:aa01~q\))) # (!\PB1~input_o\ & (\regin|gen00:5:aa00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \regin|gen00:5:aa00~q\,
	datad => \piso00|gen00:4:aa01~q\,
	combout => \piso00|DM_s[5]~2_combout\);

-- Location: FF_X42_Y37_N21
\piso00|gen00:5:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:5:aa01~q\);

-- Location: LCCOMB_X42_Y37_N18
\piso00|DM_s[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[6]~1_combout\ = (\PB1~input_o\ & (\piso00|gen00:5:aa01~q\)) # (!\PB1~input_o\ & ((\regin|gen00:6:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datab => \piso00|gen00:5:aa01~q\,
	datad => \regin|gen00:6:aa00~q\,
	combout => \piso00|DM_s[6]~1_combout\);

-- Location: FF_X42_Y37_N19
\piso00|gen00:6:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:6:aa01~q\);

-- Location: LCCOMB_X42_Y37_N24
\piso00|DM_s[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \piso00|DM_s[7]~0_combout\ = (\PB1~input_o\ & ((\piso00|gen00:6:aa01~q\))) # (!\PB1~input_o\ & (\regin|gen00:7:aa00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \regin|gen00:7:aa00~q\,
	datad => \piso00|gen00:6:aa01~q\,
	combout => \piso00|DM_s[7]~0_combout\);

-- Location: FF_X42_Y37_N25
\piso00|gen00:7:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso00|DM_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso00|gen00:7:aa01~q\);

-- Location: LCCOMB_X41_Y37_N20
\sipo00|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:0:aa00~feeder_combout\ = \piso00|gen00:7:aa01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \piso00|gen00:7:aa01~q\,
	combout => \sipo00|gen00:0:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N21
\sipo00|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:0:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:0:aa00~q\);

-- Location: LCCOMB_X41_Y37_N4
\regout|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:0:aa00~feeder_combout\ = \sipo00|gen00:0:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:0:aa00~q\,
	combout => \regout|gen00:0:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N5
\regout|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:0:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:0:aa00~q\);

-- Location: LCCOMB_X41_Y37_N2
\sipo00|gen00:1:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:1:aa00~feeder_combout\ = \sipo00|gen00:0:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:0:aa00~q\,
	combout => \sipo00|gen00:1:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N3
\sipo00|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:1:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:1:aa00~q\);

-- Location: LCCOMB_X41_Y37_N26
\regout|gen00:1:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:1:aa00~feeder_combout\ = \sipo00|gen00:1:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:1:aa00~q\,
	combout => \regout|gen00:1:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N27
\regout|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:1:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:1:aa00~q\);

-- Location: LCCOMB_X41_Y37_N12
\sipo00|gen00:2:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:2:aa00~feeder_combout\ = \sipo00|gen00:1:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:1:aa00~q\,
	combout => \sipo00|gen00:2:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N13
\sipo00|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:2:aa00~q\);

-- Location: LCCOMB_X41_Y37_N8
\regout|gen00:2:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:2:aa00~feeder_combout\ = \sipo00|gen00:2:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:2:aa00~q\,
	combout => \regout|gen00:2:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N9
\regout|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:2:aa00~q\);

-- Location: LCCOMB_X41_Y37_N6
\sipo00|gen00:3:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:3:aa00~feeder_combout\ = \sipo00|gen00:2:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:2:aa00~q\,
	combout => \sipo00|gen00:3:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N7
\sipo00|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:3:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:3:aa00~q\);

-- Location: LCCOMB_X41_Y37_N22
\regout|gen00:3:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:3:aa00~feeder_combout\ = \sipo00|gen00:3:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:3:aa00~q\,
	combout => \regout|gen00:3:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N23
\regout|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:3:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:3:aa00~q\);

-- Location: LCCOMB_X41_Y37_N16
\sipo00|gen00:4:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:4:aa00~feeder_combout\ = \sipo00|gen00:3:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:3:aa00~q\,
	combout => \sipo00|gen00:4:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N17
\sipo00|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:4:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:4:aa00~q\);

-- Location: LCCOMB_X41_Y37_N24
\regout|gen00:4:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:4:aa00~feeder_combout\ = \sipo00|gen00:4:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:4:aa00~q\,
	combout => \regout|gen00:4:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N25
\regout|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:4:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:4:aa00~q\);

-- Location: LCCOMB_X41_Y37_N18
\sipo00|gen00:5:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:5:aa00~feeder_combout\ = \sipo00|gen00:4:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:4:aa00~q\,
	combout => \sipo00|gen00:5:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N19
\sipo00|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:5:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:5:aa00~q\);

-- Location: LCCOMB_X41_Y37_N30
\regout|gen00:5:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:5:aa00~feeder_combout\ = \sipo00|gen00:5:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:5:aa00~q\,
	combout => \regout|gen00:5:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N31
\regout|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:5:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:5:aa00~q\);

-- Location: LCCOMB_X41_Y37_N28
\sipo00|gen00:6:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:6:aa00~feeder_combout\ = \sipo00|gen00:5:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:5:aa00~q\,
	combout => \sipo00|gen00:6:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N29
\sipo00|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:6:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:6:aa00~q\);

-- Location: LCCOMB_X41_Y37_N0
\regout|gen00:6:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:6:aa00~feeder_combout\ = \sipo00|gen00:6:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:6:aa00~q\,
	combout => \regout|gen00:6:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N1
\regout|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:6:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:6:aa00~q\);

-- Location: LCCOMB_X41_Y37_N10
\sipo00|gen00:7:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sipo00|gen00:7:aa00~feeder_combout\ = \sipo00|gen00:6:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:6:aa00~q\,
	combout => \sipo00|gen00:7:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N11
\sipo00|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \sipo00|gen00:7:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sipo00|gen00:7:aa00~q\);

-- Location: LCCOMB_X41_Y37_N14
\regout|gen00:7:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regout|gen00:7:aa00~feeder_combout\ = \sipo00|gen00:7:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sipo00|gen00:7:aa00~q\,
	combout => \regout|gen00:7:aa00~feeder_combout\);

-- Location: FF_X41_Y37_N15
\regout|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \regout|gen00:7:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regout|gen00:7:aa00~q\);

ww_A_out(0) <= \A_out[0]~output_o\;

ww_A_out(1) <= \A_out[1]~output_o\;

ww_A_out(2) <= \A_out[2]~output_o\;

ww_A_out(3) <= \A_out[3]~output_o\;

ww_A_out(4) <= \A_out[4]~output_o\;

ww_A_out(5) <= \A_out[5]~output_o\;

ww_A_out(6) <= \A_out[6]~output_o\;

ww_A_out(7) <= \A_out[7]~output_o\;

ww_B_out(0) <= \B_out[0]~output_o\;

ww_B_out(1) <= \B_out[1]~output_o\;

ww_B_out(2) <= \B_out[2]~output_o\;

ww_B_out(3) <= \B_out[3]~output_o\;

ww_B_out(4) <= \B_out[4]~output_o\;

ww_B_out(5) <= \B_out[5]~output_o\;

ww_B_out(6) <= \B_out[6]~output_o\;

ww_B_out(7) <= \B_out[7]~output_o\;

ww_sipo_dbg(0) <= \sipo_dbg[0]~output_o\;

ww_sipo_dbg(1) <= \sipo_dbg[1]~output_o\;

ww_sipo_dbg(2) <= \sipo_dbg[2]~output_o\;

ww_sipo_dbg(3) <= \sipo_dbg[3]~output_o\;

ww_sipo_dbg(4) <= \sipo_dbg[4]~output_o\;

ww_sipo_dbg(5) <= \sipo_dbg[5]~output_o\;

ww_sipo_dbg(6) <= \sipo_dbg[6]~output_o\;

ww_sipo_dbg(7) <= \sipo_dbg[7]~output_o\;

ww_piso_dbg <= \piso_dbg~output_o\;

ww_ctindbg <= \ctindbg~output_o\;

ww_ctoutdbg(0) <= \ctoutdbg[0]~output_o\;

ww_ctoutdbg(1) <= \ctoutdbg[1]~output_o\;

ww_ctoutdbg(2) <= \ctoutdbg[2]~output_o\;

ww_dbgdff0 <= \dbgdff0~output_o\;

ww_dbgff1 <= \dbgff1~output_o\;
END structure;


