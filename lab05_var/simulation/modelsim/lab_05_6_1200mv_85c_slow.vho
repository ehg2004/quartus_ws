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

-- DATE "11/09/2023 14:04:29"

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

ENTITY 	lab_05 IS
    PORT (
	clk_ref : IN std_logic;
	pb_rst : IN std_logic;
	auto_ps : IN std_logic;
	pb_pause : IN std_logic;
	clk_sw : IN std_logic;
	led_clk : OUT std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	C : OUT std_logic_vector(7 DOWNTO 0);
	D : OUT std_logic_vector(7 DOWNTO 0);
	E : OUT std_logic_vector(7 DOWNTO 0);
	F : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab_05;

-- Design Ports Information
-- pb_rst	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- auto_ps	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb_pause	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_clk	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sw	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ref	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_ref : std_logic;
SIGNAL ww_pb_rst : std_logic;
SIGNAL ww_auto_ps : std_logic;
SIGNAL ww_pb_pause : std_logic;
SIGNAL ww_clk_sw : std_logic;
SIGNAL ww_led_clk : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_E : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_ref~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb_rst~input_o\ : std_logic;
SIGNAL \auto_ps~input_o\ : std_logic;
SIGNAL \pb_pause~input_o\ : std_logic;
SIGNAL \led_clk~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \D[5]~output_o\ : std_logic;
SIGNAL \D[6]~output_o\ : std_logic;
SIGNAL \D[7]~output_o\ : std_logic;
SIGNAL \E[0]~output_o\ : std_logic;
SIGNAL \E[1]~output_o\ : std_logic;
SIGNAL \E[2]~output_o\ : std_logic;
SIGNAL \E[3]~output_o\ : std_logic;
SIGNAL \E[4]~output_o\ : std_logic;
SIGNAL \E[5]~output_o\ : std_logic;
SIGNAL \E[6]~output_o\ : std_logic;
SIGNAL \E[7]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \clk_ref~input_o\ : std_logic;
SIGNAL \clk_ref~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count[0]~6_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~1\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~2_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~3\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~4_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~5\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~6_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~7\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~8_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~9\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~10_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~1_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~11\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~12_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~13\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~14_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~2_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~15\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~16_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~3_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~17\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~18_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~19\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~20_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~21\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~22_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~23\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~24_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~25\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~26_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~4_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~3_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~2_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~1_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~4_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~27\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~28_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count~5_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~29\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~30_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~31\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~32_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~33\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~34_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~35\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~36_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~37\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~38_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~39\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~40_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~41\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~42_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~43\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~44_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~45\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~46_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~47\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~48_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~49\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~50_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~51\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~52_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~53\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~54_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~7_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~5_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~6_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~55\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~56_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~57\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~58_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~59\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~60_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~61\ : std_logic;
SIGNAL \cmp_clk_1KHz|Add0~62_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~8_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|Equal0~9_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|tmp~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|tmp~q\ : std_logic;
SIGNAL \clk_sw~input_o\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~1\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~2_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~3\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~4_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~5\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~6_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~7\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~8_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~1_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~9\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~10_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~2_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~11\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~12_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~3_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~13\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~14_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~15\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~16_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~17\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~18_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|count~4_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~19\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~20_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~21\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~22_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~23\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~24_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~25\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~26_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~27\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~28_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~29\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~30_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~31\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~32_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~33\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~34_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~35\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~36_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~37\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~38_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~39\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~40_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~41\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~42_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~43\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~44_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~45\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~46_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~47\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~48_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~49\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~50_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~51\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~52_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~53\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~54_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~8_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~3_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~2_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~1_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~4_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~6_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~5_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~7_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~55\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~56_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~57\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~58_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~59\ : std_logic;
SIGNAL \cmp_clk_20KHz|Add0~60_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~9_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|Equal0~10_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|tmp~0_combout\ : std_logic;
SIGNAL \cmp_clk_20KHz|tmp~q\ : std_logic;
SIGNAL \clk_M~0_combout\ : std_logic;
SIGNAL \cmp_clk_1KHz|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cmp_clk_20KHz|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_ref <= clk_ref;
ww_pb_rst <= pb_rst;
ww_auto_ps <= auto_ps;
ww_pb_pause <= pb_pause;
ww_clk_sw <= clk_sw;
led_clk <= ww_led_clk;
A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_ref~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_ref~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y41_N9
\led_clk~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_M~0_combout\,
	devoe => ww_devoe,
	o => \led_clk~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\A[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\A[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\A[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\A[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\B[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\B[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\B[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\B[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\C[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\C[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\C[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\C[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\D[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\D[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\D[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\D[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\D[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\D[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[5]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\D[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[6]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\D[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D[7]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\E[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[0]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\E[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\E[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[2]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\E[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[3]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\E[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\E[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[5]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\E[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\E[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \E[7]~output_o\);

-- Location: IOOBUF_X5_Y41_N2
\F[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\F[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\F[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\F[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\F[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\F[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\F[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\F[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk_ref~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ref,
	o => \clk_ref~input_o\);

-- Location: CLKCTRL_G17
\clk_ref~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_ref~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_ref~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y40_N0
\cmp_clk_1KHz|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~0_combout\ = \cmp_clk_1KHz|count\(0) $ (GND)
-- \cmp_clk_1KHz|Add0~1\ = CARRY(!\cmp_clk_1KHz|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(0),
	datad => VCC,
	combout => \cmp_clk_1KHz|Add0~0_combout\,
	cout => \cmp_clk_1KHz|Add0~1\);

-- Location: LCCOMB_X18_Y40_N0
\cmp_clk_1KHz|count[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count[0]~6_combout\ = !\cmp_clk_1KHz|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_1KHz|Add0~0_combout\,
	combout => \cmp_clk_1KHz|count[0]~6_combout\);

-- Location: FF_X17_Y40_N15
\cmp_clk_1KHz|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	asdata => \cmp_clk_1KHz|count[0]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(0));

-- Location: LCCOMB_X17_Y40_N2
\cmp_clk_1KHz|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~2_combout\ = (\cmp_clk_1KHz|count\(1) & (!\cmp_clk_1KHz|Add0~1\)) # (!\cmp_clk_1KHz|count\(1) & ((\cmp_clk_1KHz|Add0~1\) # (GND)))
-- \cmp_clk_1KHz|Add0~3\ = CARRY((!\cmp_clk_1KHz|Add0~1\) # (!\cmp_clk_1KHz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(1),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~1\,
	combout => \cmp_clk_1KHz|Add0~2_combout\,
	cout => \cmp_clk_1KHz|Add0~3\);

-- Location: FF_X17_Y40_N3
\cmp_clk_1KHz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(1));

-- Location: LCCOMB_X17_Y40_N4
\cmp_clk_1KHz|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~4_combout\ = (\cmp_clk_1KHz|count\(2) & (\cmp_clk_1KHz|Add0~3\ $ (GND))) # (!\cmp_clk_1KHz|count\(2) & (!\cmp_clk_1KHz|Add0~3\ & VCC))
-- \cmp_clk_1KHz|Add0~5\ = CARRY((\cmp_clk_1KHz|count\(2) & !\cmp_clk_1KHz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(2),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~3\,
	combout => \cmp_clk_1KHz|Add0~4_combout\,
	cout => \cmp_clk_1KHz|Add0~5\);

-- Location: FF_X17_Y40_N5
\cmp_clk_1KHz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(2));

-- Location: LCCOMB_X17_Y40_N6
\cmp_clk_1KHz|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~6_combout\ = (\cmp_clk_1KHz|count\(3) & (!\cmp_clk_1KHz|Add0~5\)) # (!\cmp_clk_1KHz|count\(3) & ((\cmp_clk_1KHz|Add0~5\) # (GND)))
-- \cmp_clk_1KHz|Add0~7\ = CARRY((!\cmp_clk_1KHz|Add0~5\) # (!\cmp_clk_1KHz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(3),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~5\,
	combout => \cmp_clk_1KHz|Add0~6_combout\,
	cout => \cmp_clk_1KHz|Add0~7\);

-- Location: LCCOMB_X16_Y40_N12
\cmp_clk_1KHz|count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~0_combout\ = (\cmp_clk_1KHz|Add0~6_combout\ & ((!\cmp_clk_1KHz|Equal0~9_combout\) # (!\cmp_clk_1KHz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|Add0~6_combout\,
	datab => \cmp_clk_1KHz|Equal0~4_combout\,
	datad => \cmp_clk_1KHz|Equal0~9_combout\,
	combout => \cmp_clk_1KHz|count~0_combout\);

-- Location: FF_X16_Y40_N13
\cmp_clk_1KHz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(3));

-- Location: LCCOMB_X17_Y40_N8
\cmp_clk_1KHz|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~8_combout\ = (\cmp_clk_1KHz|count\(4) & (\cmp_clk_1KHz|Add0~7\ $ (GND))) # (!\cmp_clk_1KHz|count\(4) & (!\cmp_clk_1KHz|Add0~7\ & VCC))
-- \cmp_clk_1KHz|Add0~9\ = CARRY((\cmp_clk_1KHz|count\(4) & !\cmp_clk_1KHz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(4),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~7\,
	combout => \cmp_clk_1KHz|Add0~8_combout\,
	cout => \cmp_clk_1KHz|Add0~9\);

-- Location: FF_X17_Y40_N9
\cmp_clk_1KHz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(4));

-- Location: LCCOMB_X17_Y40_N10
\cmp_clk_1KHz|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~10_combout\ = (\cmp_clk_1KHz|count\(5) & (!\cmp_clk_1KHz|Add0~9\)) # (!\cmp_clk_1KHz|count\(5) & ((\cmp_clk_1KHz|Add0~9\) # (GND)))
-- \cmp_clk_1KHz|Add0~11\ = CARRY((!\cmp_clk_1KHz|Add0~9\) # (!\cmp_clk_1KHz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(5),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~9\,
	combout => \cmp_clk_1KHz|Add0~10_combout\,
	cout => \cmp_clk_1KHz|Add0~11\);

-- Location: LCCOMB_X16_Y40_N4
\cmp_clk_1KHz|count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~1_combout\ = (\cmp_clk_1KHz|Add0~10_combout\ & ((!\cmp_clk_1KHz|Equal0~4_combout\) # (!\cmp_clk_1KHz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Equal0~9_combout\,
	datac => \cmp_clk_1KHz|Add0~10_combout\,
	datad => \cmp_clk_1KHz|Equal0~4_combout\,
	combout => \cmp_clk_1KHz|count~1_combout\);

-- Location: FF_X16_Y40_N5
\cmp_clk_1KHz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(5));

-- Location: LCCOMB_X17_Y40_N12
\cmp_clk_1KHz|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~12_combout\ = (\cmp_clk_1KHz|count\(6) & (\cmp_clk_1KHz|Add0~11\ $ (GND))) # (!\cmp_clk_1KHz|count\(6) & (!\cmp_clk_1KHz|Add0~11\ & VCC))
-- \cmp_clk_1KHz|Add0~13\ = CARRY((\cmp_clk_1KHz|count\(6) & !\cmp_clk_1KHz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(6),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~11\,
	combout => \cmp_clk_1KHz|Add0~12_combout\,
	cout => \cmp_clk_1KHz|Add0~13\);

-- Location: FF_X17_Y40_N13
\cmp_clk_1KHz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(6));

-- Location: LCCOMB_X17_Y40_N14
\cmp_clk_1KHz|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~14_combout\ = (\cmp_clk_1KHz|count\(7) & (!\cmp_clk_1KHz|Add0~13\)) # (!\cmp_clk_1KHz|count\(7) & ((\cmp_clk_1KHz|Add0~13\) # (GND)))
-- \cmp_clk_1KHz|Add0~15\ = CARRY((!\cmp_clk_1KHz|Add0~13\) # (!\cmp_clk_1KHz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(7),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~13\,
	combout => \cmp_clk_1KHz|Add0~14_combout\,
	cout => \cmp_clk_1KHz|Add0~15\);

-- Location: LCCOMB_X16_Y40_N6
\cmp_clk_1KHz|count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~2_combout\ = (\cmp_clk_1KHz|Add0~14_combout\ & ((!\cmp_clk_1KHz|Equal0~4_combout\) # (!\cmp_clk_1KHz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Equal0~9_combout\,
	datac => \cmp_clk_1KHz|Add0~14_combout\,
	datad => \cmp_clk_1KHz|Equal0~4_combout\,
	combout => \cmp_clk_1KHz|count~2_combout\);

-- Location: FF_X16_Y40_N7
\cmp_clk_1KHz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(7));

-- Location: LCCOMB_X17_Y40_N16
\cmp_clk_1KHz|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~16_combout\ = (\cmp_clk_1KHz|count\(8) & (\cmp_clk_1KHz|Add0~15\ $ (GND))) # (!\cmp_clk_1KHz|count\(8) & (!\cmp_clk_1KHz|Add0~15\ & VCC))
-- \cmp_clk_1KHz|Add0~17\ = CARRY((\cmp_clk_1KHz|count\(8) & !\cmp_clk_1KHz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(8),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~15\,
	combout => \cmp_clk_1KHz|Add0~16_combout\,
	cout => \cmp_clk_1KHz|Add0~17\);

-- Location: LCCOMB_X16_Y40_N22
\cmp_clk_1KHz|count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~3_combout\ = (\cmp_clk_1KHz|Add0~16_combout\ & ((!\cmp_clk_1KHz|Equal0~9_combout\) # (!\cmp_clk_1KHz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Equal0~4_combout\,
	datac => \cmp_clk_1KHz|Equal0~9_combout\,
	datad => \cmp_clk_1KHz|Add0~16_combout\,
	combout => \cmp_clk_1KHz|count~3_combout\);

-- Location: FF_X16_Y40_N23
\cmp_clk_1KHz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(8));

-- Location: LCCOMB_X17_Y40_N18
\cmp_clk_1KHz|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~18_combout\ = (\cmp_clk_1KHz|count\(9) & (!\cmp_clk_1KHz|Add0~17\)) # (!\cmp_clk_1KHz|count\(9) & ((\cmp_clk_1KHz|Add0~17\) # (GND)))
-- \cmp_clk_1KHz|Add0~19\ = CARRY((!\cmp_clk_1KHz|Add0~17\) # (!\cmp_clk_1KHz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(9),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~17\,
	combout => \cmp_clk_1KHz|Add0~18_combout\,
	cout => \cmp_clk_1KHz|Add0~19\);

-- Location: FF_X17_Y40_N19
\cmp_clk_1KHz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(9));

-- Location: LCCOMB_X17_Y40_N20
\cmp_clk_1KHz|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~20_combout\ = (\cmp_clk_1KHz|count\(10) & (\cmp_clk_1KHz|Add0~19\ $ (GND))) # (!\cmp_clk_1KHz|count\(10) & (!\cmp_clk_1KHz|Add0~19\ & VCC))
-- \cmp_clk_1KHz|Add0~21\ = CARRY((\cmp_clk_1KHz|count\(10) & !\cmp_clk_1KHz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(10),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~19\,
	combout => \cmp_clk_1KHz|Add0~20_combout\,
	cout => \cmp_clk_1KHz|Add0~21\);

-- Location: FF_X17_Y40_N21
\cmp_clk_1KHz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(10));

-- Location: LCCOMB_X17_Y40_N22
\cmp_clk_1KHz|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~22_combout\ = (\cmp_clk_1KHz|count\(11) & (!\cmp_clk_1KHz|Add0~21\)) # (!\cmp_clk_1KHz|count\(11) & ((\cmp_clk_1KHz|Add0~21\) # (GND)))
-- \cmp_clk_1KHz|Add0~23\ = CARRY((!\cmp_clk_1KHz|Add0~21\) # (!\cmp_clk_1KHz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(11),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~21\,
	combout => \cmp_clk_1KHz|Add0~22_combout\,
	cout => \cmp_clk_1KHz|Add0~23\);

-- Location: FF_X17_Y40_N23
\cmp_clk_1KHz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(11));

-- Location: LCCOMB_X17_Y40_N24
\cmp_clk_1KHz|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~24_combout\ = (\cmp_clk_1KHz|count\(12) & (\cmp_clk_1KHz|Add0~23\ $ (GND))) # (!\cmp_clk_1KHz|count\(12) & (!\cmp_clk_1KHz|Add0~23\ & VCC))
-- \cmp_clk_1KHz|Add0~25\ = CARRY((\cmp_clk_1KHz|count\(12) & !\cmp_clk_1KHz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(12),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~23\,
	combout => \cmp_clk_1KHz|Add0~24_combout\,
	cout => \cmp_clk_1KHz|Add0~25\);

-- Location: FF_X17_Y40_N25
\cmp_clk_1KHz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(12));

-- Location: LCCOMB_X17_Y40_N26
\cmp_clk_1KHz|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~26_combout\ = (\cmp_clk_1KHz|count\(13) & (!\cmp_clk_1KHz|Add0~25\)) # (!\cmp_clk_1KHz|count\(13) & ((\cmp_clk_1KHz|Add0~25\) # (GND)))
-- \cmp_clk_1KHz|Add0~27\ = CARRY((!\cmp_clk_1KHz|Add0~25\) # (!\cmp_clk_1KHz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(13),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~25\,
	combout => \cmp_clk_1KHz|Add0~26_combout\,
	cout => \cmp_clk_1KHz|Add0~27\);

-- Location: LCCOMB_X16_Y40_N26
\cmp_clk_1KHz|count~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~4_combout\ = (\cmp_clk_1KHz|Add0~26_combout\ & ((!\cmp_clk_1KHz|Equal0~9_combout\) # (!\cmp_clk_1KHz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Equal0~4_combout\,
	datac => \cmp_clk_1KHz|Equal0~9_combout\,
	datad => \cmp_clk_1KHz|Add0~26_combout\,
	combout => \cmp_clk_1KHz|count~4_combout\);

-- Location: FF_X16_Y40_N27
\cmp_clk_1KHz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(13));

-- Location: LCCOMB_X16_Y40_N10
\cmp_clk_1KHz|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~3_combout\ = (\cmp_clk_1KHz|count\(13) & (\cmp_clk_1KHz|count\(14) & (!\cmp_clk_1KHz|count\(15) & !\cmp_clk_1KHz|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(13),
	datab => \cmp_clk_1KHz|count\(14),
	datac => \cmp_clk_1KHz|count\(15),
	datad => \cmp_clk_1KHz|count\(12),
	combout => \cmp_clk_1KHz|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y40_N24
\cmp_clk_1KHz|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~2_combout\ = (\cmp_clk_1KHz|count\(8) & (!\cmp_clk_1KHz|count\(11) & (!\cmp_clk_1KHz|count\(10) & !\cmp_clk_1KHz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(8),
	datab => \cmp_clk_1KHz|count\(11),
	datac => \cmp_clk_1KHz|count\(10),
	datad => \cmp_clk_1KHz|count\(9),
	combout => \cmp_clk_1KHz|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y40_N8
\cmp_clk_1KHz|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~1_combout\ = (\cmp_clk_1KHz|count\(5) & (!\cmp_clk_1KHz|count\(4) & (!\cmp_clk_1KHz|count\(6) & \cmp_clk_1KHz|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(5),
	datab => \cmp_clk_1KHz|count\(4),
	datac => \cmp_clk_1KHz|count\(6),
	datad => \cmp_clk_1KHz|count\(7),
	combout => \cmp_clk_1KHz|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y40_N18
\cmp_clk_1KHz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~0_combout\ = (\cmp_clk_1KHz|count\(3) & (!\cmp_clk_1KHz|count\(1) & (!\cmp_clk_1KHz|count\(2) & \cmp_clk_1KHz|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(3),
	datab => \cmp_clk_1KHz|count\(1),
	datac => \cmp_clk_1KHz|count\(2),
	datad => \cmp_clk_1KHz|count\(0),
	combout => \cmp_clk_1KHz|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y40_N0
\cmp_clk_1KHz|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~4_combout\ = (\cmp_clk_1KHz|Equal0~3_combout\ & (\cmp_clk_1KHz|Equal0~2_combout\ & (\cmp_clk_1KHz|Equal0~1_combout\ & \cmp_clk_1KHz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|Equal0~3_combout\,
	datab => \cmp_clk_1KHz|Equal0~2_combout\,
	datac => \cmp_clk_1KHz|Equal0~1_combout\,
	datad => \cmp_clk_1KHz|Equal0~0_combout\,
	combout => \cmp_clk_1KHz|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y40_N28
\cmp_clk_1KHz|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~28_combout\ = (\cmp_clk_1KHz|count\(14) & (\cmp_clk_1KHz|Add0~27\ $ (GND))) # (!\cmp_clk_1KHz|count\(14) & (!\cmp_clk_1KHz|Add0~27\ & VCC))
-- \cmp_clk_1KHz|Add0~29\ = CARRY((\cmp_clk_1KHz|count\(14) & !\cmp_clk_1KHz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(14),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~27\,
	combout => \cmp_clk_1KHz|Add0~28_combout\,
	cout => \cmp_clk_1KHz|Add0~29\);

-- Location: LCCOMB_X16_Y40_N16
\cmp_clk_1KHz|count~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|count~5_combout\ = (\cmp_clk_1KHz|Add0~28_combout\ & ((!\cmp_clk_1KHz|Equal0~9_combout\) # (!\cmp_clk_1KHz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Equal0~4_combout\,
	datac => \cmp_clk_1KHz|Equal0~9_combout\,
	datad => \cmp_clk_1KHz|Add0~28_combout\,
	combout => \cmp_clk_1KHz|count~5_combout\);

-- Location: FF_X16_Y40_N17
\cmp_clk_1KHz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(14));

-- Location: LCCOMB_X17_Y40_N30
\cmp_clk_1KHz|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~30_combout\ = (\cmp_clk_1KHz|count\(15) & (!\cmp_clk_1KHz|Add0~29\)) # (!\cmp_clk_1KHz|count\(15) & ((\cmp_clk_1KHz|Add0~29\) # (GND)))
-- \cmp_clk_1KHz|Add0~31\ = CARRY((!\cmp_clk_1KHz|Add0~29\) # (!\cmp_clk_1KHz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(15),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~29\,
	combout => \cmp_clk_1KHz|Add0~30_combout\,
	cout => \cmp_clk_1KHz|Add0~31\);

-- Location: FF_X17_Y40_N31
\cmp_clk_1KHz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(15));

-- Location: LCCOMB_X17_Y39_N0
\cmp_clk_1KHz|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~32_combout\ = (\cmp_clk_1KHz|count\(16) & (\cmp_clk_1KHz|Add0~31\ $ (GND))) # (!\cmp_clk_1KHz|count\(16) & (!\cmp_clk_1KHz|Add0~31\ & VCC))
-- \cmp_clk_1KHz|Add0~33\ = CARRY((\cmp_clk_1KHz|count\(16) & !\cmp_clk_1KHz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(16),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~31\,
	combout => \cmp_clk_1KHz|Add0~32_combout\,
	cout => \cmp_clk_1KHz|Add0~33\);

-- Location: FF_X17_Y39_N1
\cmp_clk_1KHz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(16));

-- Location: LCCOMB_X17_Y39_N2
\cmp_clk_1KHz|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~34_combout\ = (\cmp_clk_1KHz|count\(17) & (!\cmp_clk_1KHz|Add0~33\)) # (!\cmp_clk_1KHz|count\(17) & ((\cmp_clk_1KHz|Add0~33\) # (GND)))
-- \cmp_clk_1KHz|Add0~35\ = CARRY((!\cmp_clk_1KHz|Add0~33\) # (!\cmp_clk_1KHz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(17),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~33\,
	combout => \cmp_clk_1KHz|Add0~34_combout\,
	cout => \cmp_clk_1KHz|Add0~35\);

-- Location: FF_X17_Y39_N3
\cmp_clk_1KHz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(17));

-- Location: LCCOMB_X17_Y39_N4
\cmp_clk_1KHz|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~36_combout\ = (\cmp_clk_1KHz|count\(18) & (\cmp_clk_1KHz|Add0~35\ $ (GND))) # (!\cmp_clk_1KHz|count\(18) & (!\cmp_clk_1KHz|Add0~35\ & VCC))
-- \cmp_clk_1KHz|Add0~37\ = CARRY((\cmp_clk_1KHz|count\(18) & !\cmp_clk_1KHz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(18),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~35\,
	combout => \cmp_clk_1KHz|Add0~36_combout\,
	cout => \cmp_clk_1KHz|Add0~37\);

-- Location: FF_X17_Y39_N5
\cmp_clk_1KHz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(18));

-- Location: LCCOMB_X17_Y39_N6
\cmp_clk_1KHz|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~38_combout\ = (\cmp_clk_1KHz|count\(19) & (!\cmp_clk_1KHz|Add0~37\)) # (!\cmp_clk_1KHz|count\(19) & ((\cmp_clk_1KHz|Add0~37\) # (GND)))
-- \cmp_clk_1KHz|Add0~39\ = CARRY((!\cmp_clk_1KHz|Add0~37\) # (!\cmp_clk_1KHz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(19),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~37\,
	combout => \cmp_clk_1KHz|Add0~38_combout\,
	cout => \cmp_clk_1KHz|Add0~39\);

-- Location: FF_X17_Y39_N7
\cmp_clk_1KHz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(19));

-- Location: LCCOMB_X17_Y39_N8
\cmp_clk_1KHz|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~40_combout\ = (\cmp_clk_1KHz|count\(20) & (\cmp_clk_1KHz|Add0~39\ $ (GND))) # (!\cmp_clk_1KHz|count\(20) & (!\cmp_clk_1KHz|Add0~39\ & VCC))
-- \cmp_clk_1KHz|Add0~41\ = CARRY((\cmp_clk_1KHz|count\(20) & !\cmp_clk_1KHz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(20),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~39\,
	combout => \cmp_clk_1KHz|Add0~40_combout\,
	cout => \cmp_clk_1KHz|Add0~41\);

-- Location: FF_X17_Y39_N9
\cmp_clk_1KHz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(20));

-- Location: LCCOMB_X17_Y39_N10
\cmp_clk_1KHz|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~42_combout\ = (\cmp_clk_1KHz|count\(21) & (!\cmp_clk_1KHz|Add0~41\)) # (!\cmp_clk_1KHz|count\(21) & ((\cmp_clk_1KHz|Add0~41\) # (GND)))
-- \cmp_clk_1KHz|Add0~43\ = CARRY((!\cmp_clk_1KHz|Add0~41\) # (!\cmp_clk_1KHz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(21),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~41\,
	combout => \cmp_clk_1KHz|Add0~42_combout\,
	cout => \cmp_clk_1KHz|Add0~43\);

-- Location: FF_X17_Y39_N11
\cmp_clk_1KHz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(21));

-- Location: LCCOMB_X17_Y39_N12
\cmp_clk_1KHz|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~44_combout\ = (\cmp_clk_1KHz|count\(22) & (\cmp_clk_1KHz|Add0~43\ $ (GND))) # (!\cmp_clk_1KHz|count\(22) & (!\cmp_clk_1KHz|Add0~43\ & VCC))
-- \cmp_clk_1KHz|Add0~45\ = CARRY((\cmp_clk_1KHz|count\(22) & !\cmp_clk_1KHz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(22),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~43\,
	combout => \cmp_clk_1KHz|Add0~44_combout\,
	cout => \cmp_clk_1KHz|Add0~45\);

-- Location: FF_X17_Y39_N13
\cmp_clk_1KHz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(22));

-- Location: LCCOMB_X17_Y39_N14
\cmp_clk_1KHz|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~46_combout\ = (\cmp_clk_1KHz|count\(23) & (!\cmp_clk_1KHz|Add0~45\)) # (!\cmp_clk_1KHz|count\(23) & ((\cmp_clk_1KHz|Add0~45\) # (GND)))
-- \cmp_clk_1KHz|Add0~47\ = CARRY((!\cmp_clk_1KHz|Add0~45\) # (!\cmp_clk_1KHz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(23),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~45\,
	combout => \cmp_clk_1KHz|Add0~46_combout\,
	cout => \cmp_clk_1KHz|Add0~47\);

-- Location: FF_X17_Y39_N15
\cmp_clk_1KHz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(23));

-- Location: LCCOMB_X17_Y39_N16
\cmp_clk_1KHz|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~48_combout\ = (\cmp_clk_1KHz|count\(24) & (\cmp_clk_1KHz|Add0~47\ $ (GND))) # (!\cmp_clk_1KHz|count\(24) & (!\cmp_clk_1KHz|Add0~47\ & VCC))
-- \cmp_clk_1KHz|Add0~49\ = CARRY((\cmp_clk_1KHz|count\(24) & !\cmp_clk_1KHz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(24),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~47\,
	combout => \cmp_clk_1KHz|Add0~48_combout\,
	cout => \cmp_clk_1KHz|Add0~49\);

-- Location: FF_X17_Y39_N17
\cmp_clk_1KHz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(24));

-- Location: LCCOMB_X17_Y39_N18
\cmp_clk_1KHz|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~50_combout\ = (\cmp_clk_1KHz|count\(25) & (!\cmp_clk_1KHz|Add0~49\)) # (!\cmp_clk_1KHz|count\(25) & ((\cmp_clk_1KHz|Add0~49\) # (GND)))
-- \cmp_clk_1KHz|Add0~51\ = CARRY((!\cmp_clk_1KHz|Add0~49\) # (!\cmp_clk_1KHz|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(25),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~49\,
	combout => \cmp_clk_1KHz|Add0~50_combout\,
	cout => \cmp_clk_1KHz|Add0~51\);

-- Location: FF_X17_Y39_N19
\cmp_clk_1KHz|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(25));

-- Location: LCCOMB_X17_Y39_N20
\cmp_clk_1KHz|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~52_combout\ = (\cmp_clk_1KHz|count\(26) & (\cmp_clk_1KHz|Add0~51\ $ (GND))) # (!\cmp_clk_1KHz|count\(26) & (!\cmp_clk_1KHz|Add0~51\ & VCC))
-- \cmp_clk_1KHz|Add0~53\ = CARRY((\cmp_clk_1KHz|count\(26) & !\cmp_clk_1KHz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(26),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~51\,
	combout => \cmp_clk_1KHz|Add0~52_combout\,
	cout => \cmp_clk_1KHz|Add0~53\);

-- Location: FF_X17_Y39_N21
\cmp_clk_1KHz|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(26));

-- Location: LCCOMB_X17_Y39_N22
\cmp_clk_1KHz|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~54_combout\ = (\cmp_clk_1KHz|count\(27) & (!\cmp_clk_1KHz|Add0~53\)) # (!\cmp_clk_1KHz|count\(27) & ((\cmp_clk_1KHz|Add0~53\) # (GND)))
-- \cmp_clk_1KHz|Add0~55\ = CARRY((!\cmp_clk_1KHz|Add0~53\) # (!\cmp_clk_1KHz|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(27),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~53\,
	combout => \cmp_clk_1KHz|Add0~54_combout\,
	cout => \cmp_clk_1KHz|Add0~55\);

-- Location: FF_X17_Y39_N23
\cmp_clk_1KHz|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(27));

-- Location: LCCOMB_X16_Y39_N12
\cmp_clk_1KHz|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~7_combout\ = (!\cmp_clk_1KHz|count\(25) & (!\cmp_clk_1KHz|count\(24) & (!\cmp_clk_1KHz|count\(26) & !\cmp_clk_1KHz|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(25),
	datab => \cmp_clk_1KHz|count\(24),
	datac => \cmp_clk_1KHz|count\(26),
	datad => \cmp_clk_1KHz|count\(27),
	combout => \cmp_clk_1KHz|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y39_N28
\cmp_clk_1KHz|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~5_combout\ = (!\cmp_clk_1KHz|count\(18) & (!\cmp_clk_1KHz|count\(19) & (!\cmp_clk_1KHz|count\(16) & !\cmp_clk_1KHz|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(18),
	datab => \cmp_clk_1KHz|count\(19),
	datac => \cmp_clk_1KHz|count\(16),
	datad => \cmp_clk_1KHz|count\(17),
	combout => \cmp_clk_1KHz|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y39_N30
\cmp_clk_1KHz|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~6_combout\ = (!\cmp_clk_1KHz|count\(21) & (!\cmp_clk_1KHz|count\(22) & (!\cmp_clk_1KHz|count\(20) & !\cmp_clk_1KHz|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(21),
	datab => \cmp_clk_1KHz|count\(22),
	datac => \cmp_clk_1KHz|count\(20),
	datad => \cmp_clk_1KHz|count\(23),
	combout => \cmp_clk_1KHz|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y39_N24
\cmp_clk_1KHz|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~56_combout\ = (\cmp_clk_1KHz|count\(28) & (\cmp_clk_1KHz|Add0~55\ $ (GND))) # (!\cmp_clk_1KHz|count\(28) & (!\cmp_clk_1KHz|Add0~55\ & VCC))
-- \cmp_clk_1KHz|Add0~57\ = CARRY((\cmp_clk_1KHz|count\(28) & !\cmp_clk_1KHz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(28),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~55\,
	combout => \cmp_clk_1KHz|Add0~56_combout\,
	cout => \cmp_clk_1KHz|Add0~57\);

-- Location: FF_X17_Y39_N25
\cmp_clk_1KHz|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(28));

-- Location: LCCOMB_X17_Y39_N26
\cmp_clk_1KHz|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~58_combout\ = (\cmp_clk_1KHz|count\(29) & (!\cmp_clk_1KHz|Add0~57\)) # (!\cmp_clk_1KHz|count\(29) & ((\cmp_clk_1KHz|Add0~57\) # (GND)))
-- \cmp_clk_1KHz|Add0~59\ = CARRY((!\cmp_clk_1KHz|Add0~57\) # (!\cmp_clk_1KHz|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(29),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~57\,
	combout => \cmp_clk_1KHz|Add0~58_combout\,
	cout => \cmp_clk_1KHz|Add0~59\);

-- Location: FF_X17_Y39_N27
\cmp_clk_1KHz|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(29));

-- Location: LCCOMB_X17_Y39_N28
\cmp_clk_1KHz|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~60_combout\ = (\cmp_clk_1KHz|count\(30) & (\cmp_clk_1KHz|Add0~59\ $ (GND))) # (!\cmp_clk_1KHz|count\(30) & (!\cmp_clk_1KHz|Add0~59\ & VCC))
-- \cmp_clk_1KHz|Add0~61\ = CARRY((\cmp_clk_1KHz|count\(30) & !\cmp_clk_1KHz|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|count\(30),
	datad => VCC,
	cin => \cmp_clk_1KHz|Add0~59\,
	combout => \cmp_clk_1KHz|Add0~60_combout\,
	cout => \cmp_clk_1KHz|Add0~61\);

-- Location: FF_X17_Y39_N29
\cmp_clk_1KHz|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(30));

-- Location: LCCOMB_X17_Y39_N30
\cmp_clk_1KHz|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Add0~62_combout\ = \cmp_clk_1KHz|count\(31) $ (\cmp_clk_1KHz|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(31),
	cin => \cmp_clk_1KHz|Add0~61\,
	combout => \cmp_clk_1KHz|Add0~62_combout\);

-- Location: FF_X17_Y39_N31
\cmp_clk_1KHz|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|count\(31));

-- Location: LCCOMB_X16_Y39_N18
\cmp_clk_1KHz|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~8_combout\ = (!\cmp_clk_1KHz|count\(29) & (!\cmp_clk_1KHz|count\(30) & (!\cmp_clk_1KHz|count\(31) & !\cmp_clk_1KHz|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(29),
	datab => \cmp_clk_1KHz|count\(30),
	datac => \cmp_clk_1KHz|count\(31),
	datad => \cmp_clk_1KHz|count\(28),
	combout => \cmp_clk_1KHz|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y39_N0
\cmp_clk_1KHz|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|Equal0~9_combout\ = (\cmp_clk_1KHz|Equal0~7_combout\ & (\cmp_clk_1KHz|Equal0~5_combout\ & (\cmp_clk_1KHz|Equal0~6_combout\ & \cmp_clk_1KHz|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|Equal0~7_combout\,
	datab => \cmp_clk_1KHz|Equal0~5_combout\,
	datac => \cmp_clk_1KHz|Equal0~6_combout\,
	datad => \cmp_clk_1KHz|Equal0~8_combout\,
	combout => \cmp_clk_1KHz|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y40_N20
\cmp_clk_1KHz|tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_1KHz|tmp~0_combout\ = \cmp_clk_1KHz|tmp~q\ $ (((\cmp_clk_1KHz|Equal0~9_combout\ & \cmp_clk_1KHz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|Equal0~9_combout\,
	datac => \cmp_clk_1KHz|tmp~q\,
	datad => \cmp_clk_1KHz|Equal0~4_combout\,
	combout => \cmp_clk_1KHz|tmp~0_combout\);

-- Location: FF_X16_Y40_N21
\cmp_clk_1KHz|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_1KHz|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_1KHz|tmp~q\);

-- Location: IOIBUF_X16_Y41_N1
\clk_sw~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sw,
	o => \clk_sw~input_o\);

-- Location: LCCOMB_X18_Y36_N2
\cmp_clk_20KHz|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~0_combout\ = (\cmp_clk_1KHz|count\(0) & (\cmp_clk_20KHz|count\(1) & VCC)) # (!\cmp_clk_1KHz|count\(0) & (\cmp_clk_20KHz|count\(1) $ (VCC)))
-- \cmp_clk_20KHz|Add0~1\ = CARRY((!\cmp_clk_1KHz|count\(0) & \cmp_clk_20KHz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(0),
	datab => \cmp_clk_20KHz|count\(1),
	datad => VCC,
	combout => \cmp_clk_20KHz|Add0~0_combout\,
	cout => \cmp_clk_20KHz|Add0~1\);

-- Location: LCCOMB_X18_Y36_N0
\cmp_clk_20KHz|count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~0_combout\ = (\cmp_clk_20KHz|Add0~0_combout\ & !\cmp_clk_20KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Add0~0_combout\,
	datad => \cmp_clk_20KHz|Equal0~10_combout\,
	combout => \cmp_clk_20KHz|count~0_combout\);

-- Location: FF_X18_Y36_N1
\cmp_clk_20KHz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(1));

-- Location: LCCOMB_X18_Y36_N4
\cmp_clk_20KHz|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~2_combout\ = (\cmp_clk_20KHz|count\(2) & (!\cmp_clk_20KHz|Add0~1\)) # (!\cmp_clk_20KHz|count\(2) & ((\cmp_clk_20KHz|Add0~1\) # (GND)))
-- \cmp_clk_20KHz|Add0~3\ = CARRY((!\cmp_clk_20KHz|Add0~1\) # (!\cmp_clk_20KHz|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(2),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~1\,
	combout => \cmp_clk_20KHz|Add0~2_combout\,
	cout => \cmp_clk_20KHz|Add0~3\);

-- Location: FF_X18_Y36_N5
\cmp_clk_20KHz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(2));

-- Location: LCCOMB_X18_Y36_N6
\cmp_clk_20KHz|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~4_combout\ = (\cmp_clk_20KHz|count\(3) & (\cmp_clk_20KHz|Add0~3\ $ (GND))) # (!\cmp_clk_20KHz|count\(3) & (!\cmp_clk_20KHz|Add0~3\ & VCC))
-- \cmp_clk_20KHz|Add0~5\ = CARRY((\cmp_clk_20KHz|count\(3) & !\cmp_clk_20KHz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(3),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~3\,
	combout => \cmp_clk_20KHz|Add0~4_combout\,
	cout => \cmp_clk_20KHz|Add0~5\);

-- Location: FF_X18_Y36_N7
\cmp_clk_20KHz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(3));

-- Location: LCCOMB_X18_Y36_N8
\cmp_clk_20KHz|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~6_combout\ = (\cmp_clk_20KHz|count\(4) & (!\cmp_clk_20KHz|Add0~5\)) # (!\cmp_clk_20KHz|count\(4) & ((\cmp_clk_20KHz|Add0~5\) # (GND)))
-- \cmp_clk_20KHz|Add0~7\ = CARRY((!\cmp_clk_20KHz|Add0~5\) # (!\cmp_clk_20KHz|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(4),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~5\,
	combout => \cmp_clk_20KHz|Add0~6_combout\,
	cout => \cmp_clk_20KHz|Add0~7\);

-- Location: FF_X18_Y36_N9
\cmp_clk_20KHz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(4));

-- Location: LCCOMB_X18_Y36_N10
\cmp_clk_20KHz|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~8_combout\ = (\cmp_clk_20KHz|count\(5) & (\cmp_clk_20KHz|Add0~7\ $ (GND))) # (!\cmp_clk_20KHz|count\(5) & (!\cmp_clk_20KHz|Add0~7\ & VCC))
-- \cmp_clk_20KHz|Add0~9\ = CARRY((\cmp_clk_20KHz|count\(5) & !\cmp_clk_20KHz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(5),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~7\,
	combout => \cmp_clk_20KHz|Add0~8_combout\,
	cout => \cmp_clk_20KHz|Add0~9\);

-- Location: LCCOMB_X19_Y36_N20
\cmp_clk_20KHz|count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~1_combout\ = (!\cmp_clk_20KHz|Equal0~10_combout\ & \cmp_clk_20KHz|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Equal0~10_combout\,
	datad => \cmp_clk_20KHz|Add0~8_combout\,
	combout => \cmp_clk_20KHz|count~1_combout\);

-- Location: FF_X19_Y36_N21
\cmp_clk_20KHz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(5));

-- Location: LCCOMB_X18_Y36_N12
\cmp_clk_20KHz|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~10_combout\ = (\cmp_clk_20KHz|count\(6) & (!\cmp_clk_20KHz|Add0~9\)) # (!\cmp_clk_20KHz|count\(6) & ((\cmp_clk_20KHz|Add0~9\) # (GND)))
-- \cmp_clk_20KHz|Add0~11\ = CARRY((!\cmp_clk_20KHz|Add0~9\) # (!\cmp_clk_20KHz|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(6),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~9\,
	combout => \cmp_clk_20KHz|Add0~10_combout\,
	cout => \cmp_clk_20KHz|Add0~11\);

-- Location: LCCOMB_X19_Y36_N2
\cmp_clk_20KHz|count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~2_combout\ = (!\cmp_clk_20KHz|Equal0~10_combout\ & \cmp_clk_20KHz|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Equal0~10_combout\,
	datad => \cmp_clk_20KHz|Add0~10_combout\,
	combout => \cmp_clk_20KHz|count~2_combout\);

-- Location: FF_X19_Y36_N3
\cmp_clk_20KHz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(6));

-- Location: LCCOMB_X18_Y36_N14
\cmp_clk_20KHz|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~12_combout\ = (\cmp_clk_20KHz|count\(7) & (\cmp_clk_20KHz|Add0~11\ $ (GND))) # (!\cmp_clk_20KHz|count\(7) & (!\cmp_clk_20KHz|Add0~11\ & VCC))
-- \cmp_clk_20KHz|Add0~13\ = CARRY((\cmp_clk_20KHz|count\(7) & !\cmp_clk_20KHz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(7),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~11\,
	combout => \cmp_clk_20KHz|Add0~12_combout\,
	cout => \cmp_clk_20KHz|Add0~13\);

-- Location: LCCOMB_X19_Y36_N4
\cmp_clk_20KHz|count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~3_combout\ = (!\cmp_clk_20KHz|Equal0~10_combout\ & \cmp_clk_20KHz|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Equal0~10_combout\,
	datad => \cmp_clk_20KHz|Add0~12_combout\,
	combout => \cmp_clk_20KHz|count~3_combout\);

-- Location: FF_X19_Y36_N5
\cmp_clk_20KHz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(7));

-- Location: LCCOMB_X18_Y36_N16
\cmp_clk_20KHz|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~14_combout\ = (\cmp_clk_20KHz|count\(8) & (!\cmp_clk_20KHz|Add0~13\)) # (!\cmp_clk_20KHz|count\(8) & ((\cmp_clk_20KHz|Add0~13\) # (GND)))
-- \cmp_clk_20KHz|Add0~15\ = CARRY((!\cmp_clk_20KHz|Add0~13\) # (!\cmp_clk_20KHz|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(8),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~13\,
	combout => \cmp_clk_20KHz|Add0~14_combout\,
	cout => \cmp_clk_20KHz|Add0~15\);

-- Location: FF_X18_Y36_N17
\cmp_clk_20KHz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(8));

-- Location: LCCOMB_X18_Y36_N18
\cmp_clk_20KHz|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~16_combout\ = (\cmp_clk_20KHz|count\(9) & (\cmp_clk_20KHz|Add0~15\ $ (GND))) # (!\cmp_clk_20KHz|count\(9) & (!\cmp_clk_20KHz|Add0~15\ & VCC))
-- \cmp_clk_20KHz|Add0~17\ = CARRY((\cmp_clk_20KHz|count\(9) & !\cmp_clk_20KHz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(9),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~15\,
	combout => \cmp_clk_20KHz|Add0~16_combout\,
	cout => \cmp_clk_20KHz|Add0~17\);

-- Location: FF_X18_Y36_N19
\cmp_clk_20KHz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(9));

-- Location: LCCOMB_X18_Y36_N20
\cmp_clk_20KHz|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~18_combout\ = (\cmp_clk_20KHz|count\(10) & (!\cmp_clk_20KHz|Add0~17\)) # (!\cmp_clk_20KHz|count\(10) & ((\cmp_clk_20KHz|Add0~17\) # (GND)))
-- \cmp_clk_20KHz|Add0~19\ = CARRY((!\cmp_clk_20KHz|Add0~17\) # (!\cmp_clk_20KHz|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(10),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~17\,
	combout => \cmp_clk_20KHz|Add0~18_combout\,
	cout => \cmp_clk_20KHz|Add0~19\);

-- Location: LCCOMB_X19_Y36_N28
\cmp_clk_20KHz|count~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|count~4_combout\ = (!\cmp_clk_20KHz|Equal0~10_combout\ & \cmp_clk_20KHz|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|Equal0~10_combout\,
	datad => \cmp_clk_20KHz|Add0~18_combout\,
	combout => \cmp_clk_20KHz|count~4_combout\);

-- Location: FF_X19_Y36_N29
\cmp_clk_20KHz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(10));

-- Location: LCCOMB_X18_Y36_N22
\cmp_clk_20KHz|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~20_combout\ = (\cmp_clk_20KHz|count\(11) & (\cmp_clk_20KHz|Add0~19\ $ (GND))) # (!\cmp_clk_20KHz|count\(11) & (!\cmp_clk_20KHz|Add0~19\ & VCC))
-- \cmp_clk_20KHz|Add0~21\ = CARRY((\cmp_clk_20KHz|count\(11) & !\cmp_clk_20KHz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(11),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~19\,
	combout => \cmp_clk_20KHz|Add0~20_combout\,
	cout => \cmp_clk_20KHz|Add0~21\);

-- Location: FF_X18_Y36_N23
\cmp_clk_20KHz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(11));

-- Location: LCCOMB_X18_Y36_N24
\cmp_clk_20KHz|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~22_combout\ = (\cmp_clk_20KHz|count\(12) & (!\cmp_clk_20KHz|Add0~21\)) # (!\cmp_clk_20KHz|count\(12) & ((\cmp_clk_20KHz|Add0~21\) # (GND)))
-- \cmp_clk_20KHz|Add0~23\ = CARRY((!\cmp_clk_20KHz|Add0~21\) # (!\cmp_clk_20KHz|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(12),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~21\,
	combout => \cmp_clk_20KHz|Add0~22_combout\,
	cout => \cmp_clk_20KHz|Add0~23\);

-- Location: FF_X18_Y36_N25
\cmp_clk_20KHz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(12));

-- Location: LCCOMB_X18_Y36_N26
\cmp_clk_20KHz|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~24_combout\ = (\cmp_clk_20KHz|count\(13) & (\cmp_clk_20KHz|Add0~23\ $ (GND))) # (!\cmp_clk_20KHz|count\(13) & (!\cmp_clk_20KHz|Add0~23\ & VCC))
-- \cmp_clk_20KHz|Add0~25\ = CARRY((\cmp_clk_20KHz|count\(13) & !\cmp_clk_20KHz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(13),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~23\,
	combout => \cmp_clk_20KHz|Add0~24_combout\,
	cout => \cmp_clk_20KHz|Add0~25\);

-- Location: FF_X18_Y36_N27
\cmp_clk_20KHz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(13));

-- Location: LCCOMB_X18_Y36_N28
\cmp_clk_20KHz|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~26_combout\ = (\cmp_clk_20KHz|count\(14) & (!\cmp_clk_20KHz|Add0~25\)) # (!\cmp_clk_20KHz|count\(14) & ((\cmp_clk_20KHz|Add0~25\) # (GND)))
-- \cmp_clk_20KHz|Add0~27\ = CARRY((!\cmp_clk_20KHz|Add0~25\) # (!\cmp_clk_20KHz|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(14),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~25\,
	combout => \cmp_clk_20KHz|Add0~26_combout\,
	cout => \cmp_clk_20KHz|Add0~27\);

-- Location: FF_X18_Y36_N29
\cmp_clk_20KHz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(14));

-- Location: LCCOMB_X18_Y36_N30
\cmp_clk_20KHz|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~28_combout\ = (\cmp_clk_20KHz|count\(15) & (\cmp_clk_20KHz|Add0~27\ $ (GND))) # (!\cmp_clk_20KHz|count\(15) & (!\cmp_clk_20KHz|Add0~27\ & VCC))
-- \cmp_clk_20KHz|Add0~29\ = CARRY((\cmp_clk_20KHz|count\(15) & !\cmp_clk_20KHz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(15),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~27\,
	combout => \cmp_clk_20KHz|Add0~28_combout\,
	cout => \cmp_clk_20KHz|Add0~29\);

-- Location: FF_X18_Y36_N31
\cmp_clk_20KHz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(15));

-- Location: LCCOMB_X18_Y35_N0
\cmp_clk_20KHz|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~30_combout\ = (\cmp_clk_20KHz|count\(16) & (!\cmp_clk_20KHz|Add0~29\)) # (!\cmp_clk_20KHz|count\(16) & ((\cmp_clk_20KHz|Add0~29\) # (GND)))
-- \cmp_clk_20KHz|Add0~31\ = CARRY((!\cmp_clk_20KHz|Add0~29\) # (!\cmp_clk_20KHz|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(16),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~29\,
	combout => \cmp_clk_20KHz|Add0~30_combout\,
	cout => \cmp_clk_20KHz|Add0~31\);

-- Location: FF_X18_Y35_N1
\cmp_clk_20KHz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(16));

-- Location: LCCOMB_X18_Y35_N2
\cmp_clk_20KHz|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~32_combout\ = (\cmp_clk_20KHz|count\(17) & (\cmp_clk_20KHz|Add0~31\ $ (GND))) # (!\cmp_clk_20KHz|count\(17) & (!\cmp_clk_20KHz|Add0~31\ & VCC))
-- \cmp_clk_20KHz|Add0~33\ = CARRY((\cmp_clk_20KHz|count\(17) & !\cmp_clk_20KHz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(17),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~31\,
	combout => \cmp_clk_20KHz|Add0~32_combout\,
	cout => \cmp_clk_20KHz|Add0~33\);

-- Location: FF_X18_Y35_N3
\cmp_clk_20KHz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(17));

-- Location: LCCOMB_X18_Y35_N4
\cmp_clk_20KHz|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~34_combout\ = (\cmp_clk_20KHz|count\(18) & (!\cmp_clk_20KHz|Add0~33\)) # (!\cmp_clk_20KHz|count\(18) & ((\cmp_clk_20KHz|Add0~33\) # (GND)))
-- \cmp_clk_20KHz|Add0~35\ = CARRY((!\cmp_clk_20KHz|Add0~33\) # (!\cmp_clk_20KHz|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(18),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~33\,
	combout => \cmp_clk_20KHz|Add0~34_combout\,
	cout => \cmp_clk_20KHz|Add0~35\);

-- Location: FF_X18_Y35_N5
\cmp_clk_20KHz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(18));

-- Location: LCCOMB_X18_Y35_N6
\cmp_clk_20KHz|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~36_combout\ = (\cmp_clk_20KHz|count\(19) & (\cmp_clk_20KHz|Add0~35\ $ (GND))) # (!\cmp_clk_20KHz|count\(19) & (!\cmp_clk_20KHz|Add0~35\ & VCC))
-- \cmp_clk_20KHz|Add0~37\ = CARRY((\cmp_clk_20KHz|count\(19) & !\cmp_clk_20KHz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(19),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~35\,
	combout => \cmp_clk_20KHz|Add0~36_combout\,
	cout => \cmp_clk_20KHz|Add0~37\);

-- Location: FF_X18_Y35_N7
\cmp_clk_20KHz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(19));

-- Location: LCCOMB_X18_Y35_N8
\cmp_clk_20KHz|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~38_combout\ = (\cmp_clk_20KHz|count\(20) & (!\cmp_clk_20KHz|Add0~37\)) # (!\cmp_clk_20KHz|count\(20) & ((\cmp_clk_20KHz|Add0~37\) # (GND)))
-- \cmp_clk_20KHz|Add0~39\ = CARRY((!\cmp_clk_20KHz|Add0~37\) # (!\cmp_clk_20KHz|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(20),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~37\,
	combout => \cmp_clk_20KHz|Add0~38_combout\,
	cout => \cmp_clk_20KHz|Add0~39\);

-- Location: FF_X18_Y35_N9
\cmp_clk_20KHz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(20));

-- Location: LCCOMB_X18_Y35_N10
\cmp_clk_20KHz|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~40_combout\ = (\cmp_clk_20KHz|count\(21) & (\cmp_clk_20KHz|Add0~39\ $ (GND))) # (!\cmp_clk_20KHz|count\(21) & (!\cmp_clk_20KHz|Add0~39\ & VCC))
-- \cmp_clk_20KHz|Add0~41\ = CARRY((\cmp_clk_20KHz|count\(21) & !\cmp_clk_20KHz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(21),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~39\,
	combout => \cmp_clk_20KHz|Add0~40_combout\,
	cout => \cmp_clk_20KHz|Add0~41\);

-- Location: FF_X18_Y35_N11
\cmp_clk_20KHz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(21));

-- Location: LCCOMB_X18_Y35_N12
\cmp_clk_20KHz|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~42_combout\ = (\cmp_clk_20KHz|count\(22) & (!\cmp_clk_20KHz|Add0~41\)) # (!\cmp_clk_20KHz|count\(22) & ((\cmp_clk_20KHz|Add0~41\) # (GND)))
-- \cmp_clk_20KHz|Add0~43\ = CARRY((!\cmp_clk_20KHz|Add0~41\) # (!\cmp_clk_20KHz|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(22),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~41\,
	combout => \cmp_clk_20KHz|Add0~42_combout\,
	cout => \cmp_clk_20KHz|Add0~43\);

-- Location: FF_X18_Y35_N13
\cmp_clk_20KHz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(22));

-- Location: LCCOMB_X18_Y35_N14
\cmp_clk_20KHz|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~44_combout\ = (\cmp_clk_20KHz|count\(23) & (\cmp_clk_20KHz|Add0~43\ $ (GND))) # (!\cmp_clk_20KHz|count\(23) & (!\cmp_clk_20KHz|Add0~43\ & VCC))
-- \cmp_clk_20KHz|Add0~45\ = CARRY((\cmp_clk_20KHz|count\(23) & !\cmp_clk_20KHz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(23),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~43\,
	combout => \cmp_clk_20KHz|Add0~44_combout\,
	cout => \cmp_clk_20KHz|Add0~45\);

-- Location: FF_X18_Y35_N15
\cmp_clk_20KHz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(23));

-- Location: LCCOMB_X18_Y35_N16
\cmp_clk_20KHz|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~46_combout\ = (\cmp_clk_20KHz|count\(24) & (!\cmp_clk_20KHz|Add0~45\)) # (!\cmp_clk_20KHz|count\(24) & ((\cmp_clk_20KHz|Add0~45\) # (GND)))
-- \cmp_clk_20KHz|Add0~47\ = CARRY((!\cmp_clk_20KHz|Add0~45\) # (!\cmp_clk_20KHz|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(24),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~45\,
	combout => \cmp_clk_20KHz|Add0~46_combout\,
	cout => \cmp_clk_20KHz|Add0~47\);

-- Location: FF_X18_Y35_N17
\cmp_clk_20KHz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(24));

-- Location: LCCOMB_X18_Y35_N18
\cmp_clk_20KHz|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~48_combout\ = (\cmp_clk_20KHz|count\(25) & (\cmp_clk_20KHz|Add0~47\ $ (GND))) # (!\cmp_clk_20KHz|count\(25) & (!\cmp_clk_20KHz|Add0~47\ & VCC))
-- \cmp_clk_20KHz|Add0~49\ = CARRY((\cmp_clk_20KHz|count\(25) & !\cmp_clk_20KHz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(25),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~47\,
	combout => \cmp_clk_20KHz|Add0~48_combout\,
	cout => \cmp_clk_20KHz|Add0~49\);

-- Location: FF_X18_Y35_N19
\cmp_clk_20KHz|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(25));

-- Location: LCCOMB_X18_Y35_N20
\cmp_clk_20KHz|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~50_combout\ = (\cmp_clk_20KHz|count\(26) & (!\cmp_clk_20KHz|Add0~49\)) # (!\cmp_clk_20KHz|count\(26) & ((\cmp_clk_20KHz|Add0~49\) # (GND)))
-- \cmp_clk_20KHz|Add0~51\ = CARRY((!\cmp_clk_20KHz|Add0~49\) # (!\cmp_clk_20KHz|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(26),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~49\,
	combout => \cmp_clk_20KHz|Add0~50_combout\,
	cout => \cmp_clk_20KHz|Add0~51\);

-- Location: FF_X18_Y35_N21
\cmp_clk_20KHz|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(26));

-- Location: LCCOMB_X18_Y35_N22
\cmp_clk_20KHz|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~52_combout\ = (\cmp_clk_20KHz|count\(27) & (\cmp_clk_20KHz|Add0~51\ $ (GND))) # (!\cmp_clk_20KHz|count\(27) & (!\cmp_clk_20KHz|Add0~51\ & VCC))
-- \cmp_clk_20KHz|Add0~53\ = CARRY((\cmp_clk_20KHz|count\(27) & !\cmp_clk_20KHz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(27),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~51\,
	combout => \cmp_clk_20KHz|Add0~52_combout\,
	cout => \cmp_clk_20KHz|Add0~53\);

-- Location: FF_X18_Y35_N23
\cmp_clk_20KHz|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(27));

-- Location: LCCOMB_X18_Y35_N24
\cmp_clk_20KHz|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~54_combout\ = (\cmp_clk_20KHz|count\(28) & (!\cmp_clk_20KHz|Add0~53\)) # (!\cmp_clk_20KHz|count\(28) & ((\cmp_clk_20KHz|Add0~53\) # (GND)))
-- \cmp_clk_20KHz|Add0~55\ = CARRY((!\cmp_clk_20KHz|Add0~53\) # (!\cmp_clk_20KHz|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(28),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~53\,
	combout => \cmp_clk_20KHz|Add0~54_combout\,
	cout => \cmp_clk_20KHz|Add0~55\);

-- Location: FF_X18_Y35_N25
\cmp_clk_20KHz|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(28));

-- Location: LCCOMB_X19_Y35_N18
\cmp_clk_20KHz|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~8_combout\ = (!\cmp_clk_20KHz|count\(28) & (!\cmp_clk_20KHz|count\(26) & (!\cmp_clk_20KHz|count\(27) & !\cmp_clk_20KHz|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(28),
	datab => \cmp_clk_20KHz|count\(26),
	datac => \cmp_clk_20KHz|count\(27),
	datad => \cmp_clk_20KHz|count\(25),
	combout => \cmp_clk_20KHz|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y36_N10
\cmp_clk_20KHz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~0_combout\ = (\cmp_clk_20KHz|count\(1) & (!\cmp_clk_20KHz|count\(2) & (!\cmp_clk_20KHz|count\(3) & !\cmp_clk_20KHz|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(1),
	datab => \cmp_clk_20KHz|count\(2),
	datac => \cmp_clk_20KHz|count\(3),
	datad => \cmp_clk_20KHz|count\(4),
	combout => \cmp_clk_20KHz|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y36_N8
\cmp_clk_20KHz|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~3_combout\ = (!\cmp_clk_20KHz|count\(15) & (!\cmp_clk_20KHz|count\(14) & (!\cmp_clk_20KHz|count\(13) & !\cmp_clk_20KHz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(15),
	datab => \cmp_clk_20KHz|count\(14),
	datac => \cmp_clk_20KHz|count\(13),
	datad => \cmp_clk_20KHz|count\(16),
	combout => \cmp_clk_20KHz|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y36_N22
\cmp_clk_20KHz|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~2_combout\ = (!\cmp_clk_20KHz|count\(12) & (\cmp_clk_20KHz|count\(10) & (!\cmp_clk_20KHz|count\(9) & !\cmp_clk_20KHz|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(12),
	datab => \cmp_clk_20KHz|count\(10),
	datac => \cmp_clk_20KHz|count\(9),
	datad => \cmp_clk_20KHz|count\(11),
	combout => \cmp_clk_20KHz|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y36_N6
\cmp_clk_20KHz|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~1_combout\ = (!\cmp_clk_20KHz|count\(8) & (\cmp_clk_20KHz|count\(6) & (\cmp_clk_20KHz|count\(7) & \cmp_clk_20KHz|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(8),
	datab => \cmp_clk_20KHz|count\(6),
	datac => \cmp_clk_20KHz|count\(7),
	datad => \cmp_clk_20KHz|count\(5),
	combout => \cmp_clk_20KHz|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y36_N18
\cmp_clk_20KHz|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~4_combout\ = (\cmp_clk_20KHz|Equal0~0_combout\ & (\cmp_clk_20KHz|Equal0~3_combout\ & (\cmp_clk_20KHz|Equal0~2_combout\ & \cmp_clk_20KHz|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|Equal0~0_combout\,
	datab => \cmp_clk_20KHz|Equal0~3_combout\,
	datac => \cmp_clk_20KHz|Equal0~2_combout\,
	datad => \cmp_clk_20KHz|Equal0~1_combout\,
	combout => \cmp_clk_20KHz|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y35_N30
\cmp_clk_20KHz|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~6_combout\ = (!\cmp_clk_20KHz|count\(23) & (!\cmp_clk_20KHz|count\(22) & (!\cmp_clk_20KHz|count\(24) & !\cmp_clk_20KHz|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(23),
	datab => \cmp_clk_20KHz|count\(22),
	datac => \cmp_clk_20KHz|count\(24),
	datad => \cmp_clk_20KHz|count\(21),
	combout => \cmp_clk_20KHz|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y35_N28
\cmp_clk_20KHz|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~5_combout\ = (!\cmp_clk_20KHz|count\(20) & (!\cmp_clk_20KHz|count\(19) & (!\cmp_clk_20KHz|count\(18) & !\cmp_clk_20KHz|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(20),
	datab => \cmp_clk_20KHz|count\(19),
	datac => \cmp_clk_20KHz|count\(18),
	datad => \cmp_clk_20KHz|count\(17),
	combout => \cmp_clk_20KHz|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y35_N4
\cmp_clk_20KHz|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~7_combout\ = (\cmp_clk_20KHz|Equal0~6_combout\ & \cmp_clk_20KHz|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_20KHz|Equal0~6_combout\,
	datad => \cmp_clk_20KHz|Equal0~5_combout\,
	combout => \cmp_clk_20KHz|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y35_N26
\cmp_clk_20KHz|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~56_combout\ = (\cmp_clk_20KHz|count\(29) & (\cmp_clk_20KHz|Add0~55\ $ (GND))) # (!\cmp_clk_20KHz|count\(29) & (!\cmp_clk_20KHz|Add0~55\ & VCC))
-- \cmp_clk_20KHz|Add0~57\ = CARRY((\cmp_clk_20KHz|count\(29) & !\cmp_clk_20KHz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(29),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~55\,
	combout => \cmp_clk_20KHz|Add0~56_combout\,
	cout => \cmp_clk_20KHz|Add0~57\);

-- Location: FF_X18_Y35_N27
\cmp_clk_20KHz|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(29));

-- Location: LCCOMB_X18_Y35_N28
\cmp_clk_20KHz|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~58_combout\ = (\cmp_clk_20KHz|count\(30) & (!\cmp_clk_20KHz|Add0~57\)) # (!\cmp_clk_20KHz|count\(30) & ((\cmp_clk_20KHz|Add0~57\) # (GND)))
-- \cmp_clk_20KHz|Add0~59\ = CARRY((!\cmp_clk_20KHz|Add0~57\) # (!\cmp_clk_20KHz|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_20KHz|count\(30),
	datad => VCC,
	cin => \cmp_clk_20KHz|Add0~57\,
	combout => \cmp_clk_20KHz|Add0~58_combout\,
	cout => \cmp_clk_20KHz|Add0~59\);

-- Location: FF_X18_Y35_N29
\cmp_clk_20KHz|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(30));

-- Location: LCCOMB_X18_Y35_N30
\cmp_clk_20KHz|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Add0~60_combout\ = \cmp_clk_20KHz|count\(31) $ (!\cmp_clk_20KHz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|count\(31),
	cin => \cmp_clk_20KHz|Add0~59\,
	combout => \cmp_clk_20KHz|Add0~60_combout\);

-- Location: FF_X18_Y35_N31
\cmp_clk_20KHz|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|count\(31));

-- Location: LCCOMB_X19_Y35_N0
\cmp_clk_20KHz|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~9_combout\ = (\cmp_clk_1KHz|count\(0) & (!\cmp_clk_20KHz|count\(30) & (!\cmp_clk_20KHz|count\(29) & !\cmp_clk_20KHz|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_1KHz|count\(0),
	datab => \cmp_clk_20KHz|count\(30),
	datac => \cmp_clk_20KHz|count\(29),
	datad => \cmp_clk_20KHz|count\(31),
	combout => \cmp_clk_20KHz|Equal0~9_combout\);

-- Location: LCCOMB_X19_Y36_N24
\cmp_clk_20KHz|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|Equal0~10_combout\ = (\cmp_clk_20KHz|Equal0~8_combout\ & (\cmp_clk_20KHz|Equal0~4_combout\ & (\cmp_clk_20KHz|Equal0~7_combout\ & \cmp_clk_20KHz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp_clk_20KHz|Equal0~8_combout\,
	datab => \cmp_clk_20KHz|Equal0~4_combout\,
	datac => \cmp_clk_20KHz|Equal0~7_combout\,
	datad => \cmp_clk_20KHz|Equal0~9_combout\,
	combout => \cmp_clk_20KHz|Equal0~10_combout\);

-- Location: LCCOMB_X19_Y36_N0
\cmp_clk_20KHz|tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp_clk_20KHz|tmp~0_combout\ = \cmp_clk_20KHz|tmp~q\ $ (\cmp_clk_20KHz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmp_clk_20KHz|tmp~q\,
	datad => \cmp_clk_20KHz|Equal0~10_combout\,
	combout => \cmp_clk_20KHz|tmp~0_combout\);

-- Location: FF_X19_Y36_N1
\cmp_clk_20KHz|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \cmp_clk_20KHz|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmp_clk_20KHz|tmp~q\);

-- Location: LCCOMB_X16_Y40_N30
\clk_M~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_M~0_combout\ = (\clk_sw~input_o\ & ((\cmp_clk_20KHz|tmp~q\))) # (!\clk_sw~input_o\ & (\cmp_clk_1KHz|tmp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp_clk_1KHz|tmp~q\,
	datac => \clk_sw~input_o\,
	datad => \cmp_clk_20KHz|tmp~q\,
	combout => \clk_M~0_combout\);

-- Location: IOIBUF_X52_Y21_N8
\pb_rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_rst,
	o => \pb_rst~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\auto_ps~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_auto_ps,
	o => \auto_ps~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\pb_pause~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_pause,
	o => \pb_pause~input_o\);

ww_led_clk <= \led_clk~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_D(5) <= \D[5]~output_o\;

ww_D(6) <= \D[6]~output_o\;

ww_D(7) <= \D[7]~output_o\;

ww_E(0) <= \E[0]~output_o\;

ww_E(1) <= \E[1]~output_o\;

ww_E(2) <= \E[2]~output_o\;

ww_E(3) <= \E[3]~output_o\;

ww_E(4) <= \E[4]~output_o\;

ww_E(5) <= \E[5]~output_o\;

ww_E(6) <= \E[6]~output_o\;

ww_E(7) <= \E[7]~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;
END structure;


