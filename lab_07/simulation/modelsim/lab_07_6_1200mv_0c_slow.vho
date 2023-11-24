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

-- DATE "11/15/2023 20:49:22"

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

ENTITY 	lab_07var IS
    PORT (
	clk_ref : IN std_logic;
	clk_dbg : IN std_logic;
	PB0 : IN std_logic;
	PB1 : IN std_logic;
	seqDetout : BUFFER std_logic;
	SSo : BUFFER std_logic;
	QSIPO : BUFFER std_logic_vector(7 DOWNTO 0);
	A0 : BUFFER std_logic_vector(3 DOWNTO 0);
	A1 : BUFFER std_logic_vector(3 DOWNTO 0);
	B0 : BUFFER std_logic_vector(3 DOWNTO 0);
	B1 : BUFFER std_logic_vector(3 DOWNTO 0);
	C0 : BUFFER std_logic_vector(3 DOWNTO 0);
	Q0det : BUFFER std_logic_vector(3 DOWNTO 0);
	regDete : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lab_07var;

-- Design Ports Information
-- clk_ref	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seqDetout	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSo	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[4]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QSIPO[7]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[0]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0det[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0det[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0det[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0det[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regDete[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regDete[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regDete[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regDete[3]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_dbg	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_07var IS
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
SIGNAL ww_clk_dbg : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL ww_seqDetout : std_logic;
SIGNAL ww_SSo : std_logic;
SIGNAL ww_QSIPO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q0det : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_regDete : std_logic_vector(3 DOWNTO 0);
SIGNAL \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PB1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_ref~input_o\ : std_logic;
SIGNAL \seqDetout~output_o\ : std_logic;
SIGNAL \SSo~output_o\ : std_logic;
SIGNAL \QSIPO[0]~output_o\ : std_logic;
SIGNAL \QSIPO[1]~output_o\ : std_logic;
SIGNAL \QSIPO[2]~output_o\ : std_logic;
SIGNAL \QSIPO[3]~output_o\ : std_logic;
SIGNAL \QSIPO[4]~output_o\ : std_logic;
SIGNAL \QSIPO[5]~output_o\ : std_logic;
SIGNAL \QSIPO[6]~output_o\ : std_logic;
SIGNAL \QSIPO[7]~output_o\ : std_logic;
SIGNAL \A0[0]~output_o\ : std_logic;
SIGNAL \A0[1]~output_o\ : std_logic;
SIGNAL \A0[2]~output_o\ : std_logic;
SIGNAL \A0[3]~output_o\ : std_logic;
SIGNAL \A1[0]~output_o\ : std_logic;
SIGNAL \A1[1]~output_o\ : std_logic;
SIGNAL \A1[2]~output_o\ : std_logic;
SIGNAL \A1[3]~output_o\ : std_logic;
SIGNAL \B0[0]~output_o\ : std_logic;
SIGNAL \B0[1]~output_o\ : std_logic;
SIGNAL \B0[2]~output_o\ : std_logic;
SIGNAL \B0[3]~output_o\ : std_logic;
SIGNAL \B1[0]~output_o\ : std_logic;
SIGNAL \B1[1]~output_o\ : std_logic;
SIGNAL \B1[2]~output_o\ : std_logic;
SIGNAL \B1[3]~output_o\ : std_logic;
SIGNAL \C0[0]~output_o\ : std_logic;
SIGNAL \C0[1]~output_o\ : std_logic;
SIGNAL \C0[2]~output_o\ : std_logic;
SIGNAL \C0[3]~output_o\ : std_logic;
SIGNAL \Q0det[0]~output_o\ : std_logic;
SIGNAL \Q0det[1]~output_o\ : std_logic;
SIGNAL \Q0det[2]~output_o\ : std_logic;
SIGNAL \Q0det[3]~output_o\ : std_logic;
SIGNAL \regDete[0]~output_o\ : std_logic;
SIGNAL \regDete[1]~output_o\ : std_logic;
SIGNAL \regDete[2]~output_o\ : std_logic;
SIGNAL \regDete[3]~output_o\ : std_logic;
SIGNAL \clk_dbg~input_o\ : std_logic;
SIGNAL \pseSystem~0_combout\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \pseSystem~q\ : std_logic;
SIGNAL \clk0~combout\ : std_logic;
SIGNAL \clk0~clkctrl_outclk\ : std_logic;
SIGNAL \counter11bit1|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \PB1~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter11bit1|gen00:0:a00~q\ : std_logic;
SIGNAL \counter11bit1|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \counter11bit1|gen00:1:a00~q\ : std_logic;
SIGNAL \counter11bit1|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \counter11bit1|gen00:2:a00~q\ : std_logic;
SIGNAL \counter11bit1|comb~0_combout\ : std_logic;
SIGNAL \counter11bit1|mod08dff~feeder_combout\ : std_logic;
SIGNAL \counter11bit1|mod08dff~q\ : std_logic;
SIGNAL \counter11bit0|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:0:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:1:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:2:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:3:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:3:a00~q\ : std_logic;
SIGNAL \counter11bit0|v_cmp~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:4:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:4:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:5:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:5:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:6:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:6:a00~q\ : std_logic;
SIGNAL \counter11bit0|v_cmp~1_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:7:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:7:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:8:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:8:a00~q\ : std_logic;
SIGNAL \counter11bit0|gen00:9:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:9:a00~q\ : std_logic;
SIGNAL \counter11bit0|clk_prcss:v_cmp~0_combout\ : std_logic;
SIGNAL \counter11bit0|clk_prcss:v_cmp~1_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:10:a00~0_combout\ : std_logic;
SIGNAL \counter11bit0|gen00:10:a00~q\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \PISO00|DM_s~7_combout\ : std_logic;
SIGNAL \PISO00|gen00:0:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[1]~6_combout\ : std_logic;
SIGNAL \PISO00|gen00:1:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[2]~5_combout\ : std_logic;
SIGNAL \PISO00|gen00:2:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[3]~4_combout\ : std_logic;
SIGNAL \PISO00|gen00:3:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[4]~3_combout\ : std_logic;
SIGNAL \PISO00|gen00:4:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[5]~2_combout\ : std_logic;
SIGNAL \PISO00|gen00:5:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[6]~1_combout\ : std_logic;
SIGNAL \PISO00|gen00:6:aa01~q\ : std_logic;
SIGNAL \PISO00|DM_s[7]~0_combout\ : std_logic;
SIGNAL \PISO00|gen00:7:aa01~q\ : std_logic;
SIGNAL \seqdet|D_s[0]~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \seqdet|gen00:0:ffi0~q\ : std_logic;
SIGNAL \seqdet|D_s[1]~1_combout\ : std_logic;
SIGNAL \seqdet|gen00:1:ffi0~q\ : std_logic;
SIGNAL \seqdet|gen00:2:ffi0~q\ : std_logic;
SIGNAL \PIPOstt0|gen00:2:aa00~q\ : std_logic;
SIGNAL \PIPOstt0|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOstt0|gen00:1:aa00~q\ : std_logic;
SIGNAL \PIPOstt0|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOstt0|gen00:0:aa00~q\ : std_logic;
SIGNAL \SeqDetected~0_combout\ : std_logic;
SIGNAL \SeqDetected~combout\ : std_logic;
SIGNAL \SIPO00|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:0:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:1:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:2:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:3:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:4:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:5:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:6:aa00~q\ : std_logic;
SIGNAL \SIPO00|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \SIPO00|gen00:7:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:0:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:1:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:2:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:3:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:4:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:5:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:6:aa00~q\ : std_logic;
SIGNAL \PIPOAdd|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOAdd|gen00:7:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:0:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:1:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:2:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:3:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:4:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:5:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:6:aa00~q\ : std_logic;
SIGNAL \PIPOmem|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \PIPOmem|gen00:7:aa00~q\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:0:a00~feeder_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:0:a00~q\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:1:a00~feeder_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:1:a00~q\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:2:a00~feeder_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:2:a00~q\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:3:a00~0_combout\ : std_logic;
SIGNAL \nOfSeqDetec|gen00:3:a00~q\ : std_logic;
SIGNAL \seqdet|D_s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \romcomp|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk0~combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \nOfSeqDetec|ALT_INV_gen00:2:a00~q\ : std_logic;
SIGNAL \nOfSeqDetec|ALT_INV_gen00:1:a00~q\ : std_logic;
SIGNAL \nOfSeqDetec|ALT_INV_gen00:0:a00~q\ : std_logic;
SIGNAL \ALT_INV_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_PB1~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_ref <= clk_ref;
ww_clk_dbg <= clk_dbg;
ww_PB0 <= PB0;
ww_PB1 <= PB1;
seqDetout <= ww_seqDetout;
SSo <= ww_SSo;
QSIPO <= ww_QSIPO;
A0 <= ww_A0;
A1 <= ww_A1;
B0 <= ww_B0;
B1 <= ww_B1;
C0 <= ww_C0;
Q0det <= ww_Q0det;
regDete <= ww_regDete;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\counter11bit0|gen00:10:a00~q\ & \counter11bit0|gen00:9:a00~q\ & \counter11bit0|gen00:8:a00~q\ & \counter11bit0|gen00:7:a00~q\ & \counter11bit0|gen00:6:a00~q\ & 
\counter11bit0|gen00:5:a00~q\ & \counter11bit0|gen00:4:a00~q\ & \counter11bit0|gen00:3:a00~q\);

\romcomp|altsyncram_component|auto_generated|q_a\(0) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\romcomp|altsyncram_component|auto_generated|q_a\(1) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\romcomp|altsyncram_component|auto_generated|q_a\(2) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\romcomp|altsyncram_component|auto_generated|q_a\(3) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\romcomp|altsyncram_component|auto_generated|q_a\(4) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\romcomp|altsyncram_component|auto_generated|q_a\(5) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\romcomp|altsyncram_component|auto_generated|q_a\(6) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\romcomp|altsyncram_component|auto_generated|q_a\(7) <= \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\PB1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PB1~input_o\);

\clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk0~combout\);
\ALT_INV_clk0~combout\ <= NOT \clk0~combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\nOfSeqDetec|ALT_INV_gen00:2:a00~q\ <= NOT \nOfSeqDetec|gen00:2:a00~q\;
\nOfSeqDetec|ALT_INV_gen00:1:a00~q\ <= NOT \nOfSeqDetec|gen00:1:a00~q\;
\nOfSeqDetec|ALT_INV_gen00:0:a00~q\ <= NOT \nOfSeqDetec|gen00:0:a00~q\;
\ALT_INV_clk0~clkctrl_outclk\ <= NOT \clk0~clkctrl_outclk\;
\ALT_INV_PB1~inputclkctrl_outclk\ <= NOT \PB1~inputclkctrl_outclk\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y15_N9
\seqDetout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDetected~combout\,
	devoe => ww_devoe,
	o => \seqDetout~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\SSo~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PISO00|gen00:7:aa01~q\,
	devoe => ww_devoe,
	o => \SSo~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\QSIPO[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\QSIPO[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\QSIPO[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\QSIPO[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\QSIPO[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\QSIPO[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\QSIPO[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[6]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\QSIPO[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIPO00|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \QSIPO[7]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\A0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \A0[0]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\A0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \A0[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\A0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \A0[2]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\A0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \A0[3]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\A1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \A1[0]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\A1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \A1[1]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\A1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \A1[2]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\A1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOAdd|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \A1[3]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\B0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \B0[0]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\B0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \B0[1]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\B0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \B0[2]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\B0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \B0[3]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\B1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \B1[0]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\B1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \B1[1]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\B1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \B1[2]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\B1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOmem|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \B1[3]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\C0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seqdet|gen00:0:ffi0~q\,
	devoe => ww_devoe,
	o => \C0[0]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\C0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seqdet|gen00:1:ffi0~q\,
	devoe => ww_devoe,
	o => \C0[1]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\C0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seqdet|gen00:2:ffi0~q\,
	devoe => ww_devoe,
	o => \C0[2]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\C0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C0[3]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\Q0det[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nOfSeqDetec|gen00:0:a00~q\,
	devoe => ww_devoe,
	o => \Q0det[0]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\Q0det[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nOfSeqDetec|gen00:1:a00~q\,
	devoe => ww_devoe,
	o => \Q0det[1]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\Q0det[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nOfSeqDetec|gen00:2:a00~q\,
	devoe => ww_devoe,
	o => \Q0det[2]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\Q0det[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nOfSeqDetec|gen00:3:a00~q\,
	devoe => ww_devoe,
	o => \Q0det[3]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\regDete[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOstt0|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \regDete[0]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\regDete[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOstt0|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \regDete[1]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\regDete[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PIPOstt0|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \regDete[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\regDete[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regDete[3]~output_o\);

-- Location: IOIBUF_X52_Y21_N1
\clk_dbg~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_dbg,
	o => \clk_dbg~input_o\);

-- Location: LCCOMB_X47_Y19_N18
\pseSystem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pseSystem~0_combout\ = !\pseSystem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pseSystem~q\,
	combout => \pseSystem~0_combout\);

-- Location: IOIBUF_X27_Y0_N15
\PB1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB1,
	o => \PB1~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\PB0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB0,
	o => \PB0~input_o\);

-- Location: LCCOMB_X46_Y19_N14
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\PB0~input_o\) # (!\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB1~input_o\,
	datad => \PB0~input_o\,
	combout => \comb~1_combout\);

-- Location: FF_X47_Y19_N19
pseSystem : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SeqDetected~combout\,
	d => \pseSystem~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pseSystem~q\);

-- Location: LCCOMB_X47_Y19_N20
clk0 : cycloneiv_lcell_comb
-- Equation(s):
-- \clk0~combout\ = LCELL((\clk_dbg~input_o\) # (\pseSystem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_dbg~input_o\,
	datad => \pseSystem~q\,
	combout => \clk0~combout\);

-- Location: CLKCTRL_G5
\clk0~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk0~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y19_N18
\counter11bit1|gen00:0:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit1|gen00:0:a00~0_combout\ = !\counter11bit1|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit1|gen00:0:a00~q\,
	combout => \counter11bit1|gen00:0:a00~0_combout\);

-- Location: CLKCTRL_G17
\PB1~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PB1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PB1~inputclkctrl_outclk\);

-- Location: FF_X42_Y19_N19
\counter11bit1|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \counter11bit1|gen00:0:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit1|gen00:0:a00~q\);

-- Location: LCCOMB_X42_Y19_N28
\counter11bit1|gen00:1:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit1|gen00:1:a00~0_combout\ = \counter11bit1|gen00:1:a00~q\ $ (\counter11bit1|gen00:0:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit1|gen00:1:a00~q\,
	datad => \counter11bit1|gen00:0:a00~q\,
	combout => \counter11bit1|gen00:1:a00~0_combout\);

-- Location: FF_X42_Y19_N29
\counter11bit1|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \counter11bit1|gen00:1:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit1|gen00:1:a00~q\);

-- Location: LCCOMB_X42_Y19_N30
\counter11bit1|gen00:2:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit1|gen00:2:a00~0_combout\ = \counter11bit1|gen00:2:a00~q\ $ (((\counter11bit1|gen00:0:a00~q\ & \counter11bit1|gen00:1:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter11bit1|gen00:0:a00~q\,
	datac => \counter11bit1|gen00:2:a00~q\,
	datad => \counter11bit1|gen00:1:a00~q\,
	combout => \counter11bit1|gen00:2:a00~0_combout\);

-- Location: FF_X42_Y19_N31
\counter11bit1|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \counter11bit1|gen00:2:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit1|gen00:2:a00~q\);

-- Location: LCCOMB_X42_Y19_N24
\counter11bit1|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit1|comb~0_combout\ = (\counter11bit1|gen00:1:a00~q\ & (\counter11bit1|gen00:2:a00~q\ & \counter11bit1|gen00:0:a00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter11bit1|gen00:1:a00~q\,
	datac => \counter11bit1|gen00:2:a00~q\,
	datad => \counter11bit1|gen00:0:a00~q\,
	combout => \counter11bit1|comb~0_combout\);

-- Location: LCCOMB_X46_Y19_N28
\counter11bit1|mod08dff~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit1|mod08dff~feeder_combout\ = \counter11bit1|comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit1|comb~0_combout\,
	combout => \counter11bit1|mod08dff~feeder_combout\);

-- Location: FF_X46_Y19_N29
\counter11bit1|mod08dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \counter11bit1|mod08dff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit1|mod08dff~q\);

-- Location: LCCOMB_X43_Y19_N12
\counter11bit0|gen00:0:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:0:a00~0_combout\ = !\counter11bit0|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit0|gen00:0:a00~q\,
	combout => \counter11bit0|gen00:0:a00~0_combout\);

-- Location: FF_X43_Y19_N13
\counter11bit0|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:0:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:0:a00~q\);

-- Location: LCCOMB_X43_Y19_N2
\counter11bit0|gen00:1:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:1:a00~0_combout\ = \counter11bit0|gen00:1:a00~q\ $ (\counter11bit0|gen00:0:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit0|gen00:1:a00~q\,
	datad => \counter11bit0|gen00:0:a00~q\,
	combout => \counter11bit0|gen00:1:a00~0_combout\);

-- Location: FF_X43_Y19_N3
\counter11bit0|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:1:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:1:a00~q\);

-- Location: LCCOMB_X43_Y19_N22
\counter11bit0|gen00:2:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:2:a00~0_combout\ = \counter11bit0|gen00:2:a00~q\ $ (((\counter11bit0|gen00:1:a00~q\ & \counter11bit0|gen00:0:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter11bit0|gen00:1:a00~q\,
	datac => \counter11bit0|gen00:2:a00~q\,
	datad => \counter11bit0|gen00:0:a00~q\,
	combout => \counter11bit0|gen00:2:a00~0_combout\);

-- Location: FF_X43_Y19_N23
\counter11bit0|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:2:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:2:a00~q\);

-- Location: LCCOMB_X43_Y19_N24
\counter11bit0|gen00:3:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:3:a00~0_combout\ = \counter11bit0|gen00:3:a00~q\ $ (((\counter11bit0|gen00:0:a00~q\ & (\counter11bit0|gen00:1:a00~q\ & \counter11bit0|gen00:2:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:0:a00~q\,
	datab => \counter11bit0|gen00:1:a00~q\,
	datac => \counter11bit0|gen00:3:a00~q\,
	datad => \counter11bit0|gen00:2:a00~q\,
	combout => \counter11bit0|gen00:3:a00~0_combout\);

-- Location: FF_X43_Y19_N25
\counter11bit0|gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:3:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:3:a00~q\);

-- Location: LCCOMB_X43_Y19_N20
\counter11bit0|v_cmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|v_cmp~0_combout\ = (\counter11bit0|gen00:0:a00~q\ & (\counter11bit0|gen00:3:a00~q\ & (\counter11bit0|gen00:2:a00~q\ & \counter11bit0|gen00:1:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:0:a00~q\,
	datab => \counter11bit0|gen00:3:a00~q\,
	datac => \counter11bit0|gen00:2:a00~q\,
	datad => \counter11bit0|gen00:1:a00~q\,
	combout => \counter11bit0|v_cmp~0_combout\);

-- Location: LCCOMB_X43_Y19_N26
\counter11bit0|gen00:4:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:4:a00~0_combout\ = \counter11bit0|gen00:4:a00~q\ $ (\counter11bit0|v_cmp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit0|gen00:4:a00~q\,
	datad => \counter11bit0|v_cmp~0_combout\,
	combout => \counter11bit0|gen00:4:a00~0_combout\);

-- Location: FF_X43_Y19_N27
\counter11bit0|gen00:4:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:4:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:4:a00~q\);

-- Location: LCCOMB_X43_Y19_N0
\counter11bit0|gen00:5:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:5:a00~0_combout\ = \counter11bit0|gen00:5:a00~q\ $ (((\counter11bit0|v_cmp~0_combout\ & \counter11bit0|gen00:4:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter11bit0|v_cmp~0_combout\,
	datac => \counter11bit0|gen00:5:a00~q\,
	datad => \counter11bit0|gen00:4:a00~q\,
	combout => \counter11bit0|gen00:5:a00~0_combout\);

-- Location: FF_X43_Y19_N1
\counter11bit0|gen00:5:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:5:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:5:a00~q\);

-- Location: LCCOMB_X43_Y19_N30
\counter11bit0|gen00:6:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:6:a00~0_combout\ = \counter11bit0|gen00:6:a00~q\ $ (((\counter11bit0|gen00:5:a00~q\ & (\counter11bit0|v_cmp~0_combout\ & \counter11bit0|gen00:4:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:5:a00~q\,
	datab => \counter11bit0|v_cmp~0_combout\,
	datac => \counter11bit0|gen00:6:a00~q\,
	datad => \counter11bit0|gen00:4:a00~q\,
	combout => \counter11bit0|gen00:6:a00~0_combout\);

-- Location: FF_X43_Y19_N31
\counter11bit0|gen00:6:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:6:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:6:a00~q\);

-- Location: LCCOMB_X43_Y19_N6
\counter11bit0|v_cmp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|v_cmp~1_combout\ = (\counter11bit0|gen00:6:a00~q\ & (\counter11bit0|gen00:4:a00~q\ & (\counter11bit0|gen00:5:a00~q\ & \counter11bit0|v_cmp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:6:a00~q\,
	datab => \counter11bit0|gen00:4:a00~q\,
	datac => \counter11bit0|gen00:5:a00~q\,
	datad => \counter11bit0|v_cmp~0_combout\,
	combout => \counter11bit0|v_cmp~1_combout\);

-- Location: LCCOMB_X43_Y19_N8
\counter11bit0|gen00:7:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:7:a00~0_combout\ = \counter11bit0|gen00:7:a00~q\ $ (\counter11bit0|v_cmp~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit0|gen00:7:a00~q\,
	datad => \counter11bit0|v_cmp~1_combout\,
	combout => \counter11bit0|gen00:7:a00~0_combout\);

-- Location: FF_X43_Y19_N9
\counter11bit0|gen00:7:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:7:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:7:a00~q\);

-- Location: LCCOMB_X43_Y19_N18
\counter11bit0|gen00:8:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:8:a00~0_combout\ = \counter11bit0|gen00:8:a00~q\ $ (((\counter11bit0|gen00:7:a00~q\ & \counter11bit0|v_cmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:7:a00~q\,
	datac => \counter11bit0|gen00:8:a00~q\,
	datad => \counter11bit0|v_cmp~1_combout\,
	combout => \counter11bit0|gen00:8:a00~0_combout\);

-- Location: FF_X43_Y19_N19
\counter11bit0|gen00:8:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:8:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:8:a00~q\);

-- Location: LCCOMB_X43_Y19_N16
\counter11bit0|gen00:9:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:9:a00~0_combout\ = \counter11bit0|gen00:9:a00~q\ $ (((\counter11bit0|v_cmp~1_combout\ & (\counter11bit0|gen00:8:a00~q\ & \counter11bit0|gen00:7:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|v_cmp~1_combout\,
	datab => \counter11bit0|gen00:8:a00~q\,
	datac => \counter11bit0|gen00:9:a00~q\,
	datad => \counter11bit0|gen00:7:a00~q\,
	combout => \counter11bit0|gen00:9:a00~0_combout\);

-- Location: FF_X43_Y19_N17
\counter11bit0|gen00:9:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:9:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:9:a00~q\);

-- Location: LCCOMB_X43_Y19_N4
\counter11bit0|clk_prcss:v_cmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|clk_prcss:v_cmp~0_combout\ = (\counter11bit0|gen00:4:a00~q\ & (\counter11bit0|gen00:8:a00~q\ & (\counter11bit0|gen00:6:a00~q\ & \counter11bit0|gen00:5:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:4:a00~q\,
	datab => \counter11bit0|gen00:8:a00~q\,
	datac => \counter11bit0|gen00:6:a00~q\,
	datad => \counter11bit0|gen00:5:a00~q\,
	combout => \counter11bit0|clk_prcss:v_cmp~0_combout\);

-- Location: LCCOMB_X43_Y19_N14
\counter11bit0|clk_prcss:v_cmp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|clk_prcss:v_cmp~1_combout\ = (\counter11bit0|gen00:7:a00~q\ & (\counter11bit0|gen00:9:a00~q\ & (\counter11bit0|clk_prcss:v_cmp~0_combout\ & \counter11bit0|v_cmp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit0|gen00:7:a00~q\,
	datab => \counter11bit0|gen00:9:a00~q\,
	datac => \counter11bit0|clk_prcss:v_cmp~0_combout\,
	datad => \counter11bit0|v_cmp~0_combout\,
	combout => \counter11bit0|clk_prcss:v_cmp~1_combout\);

-- Location: LCCOMB_X44_Y19_N28
\counter11bit0|gen00:10:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter11bit0|gen00:10:a00~0_combout\ = \counter11bit0|gen00:10:a00~q\ $ (\counter11bit0|clk_prcss:v_cmp~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit0|gen00:10:a00~q\,
	datad => \counter11bit0|clk_prcss:v_cmp~1_combout\,
	combout => \counter11bit0|gen00:10:a00~0_combout\);

-- Location: FF_X44_Y19_N29
\counter11bit0|gen00:10:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \counter11bit0|gen00:10:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter11bit0|gen00:10:a00~q\);

-- Location: LCCOMB_X39_Y19_N4
\~QUARTUS_CREATED_GND~I\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: M9K_X40_Y19_N0
\romcomp|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0034000CF00280007F002C000EF0018000F0001400090000C0004F00200002F00040000F0034400CE00284007E002C400EE0018400F1001440091000C4004E00",
	mem_init1 => X"204002E00044000E0034800CD00288007D002C800ED0018800F2001480092000C8004D00208002D00048000D0034C00CC0028C007C002CC00EC0018C00F30014C0093000CC004C0020C002C0004C000C0035000CB00290007B002D000EB0019000F4001500094000D0004B00210002B00050000B0035400CA00294007A002D400EA0019400F5001540095000D4004A00214002A00054000A0035800C9002980079002D800E90019800F6001580096000D800490021800290005800090035C00C80029C0078002DC00E80019C00F70015C0097000DC00480021C00280005C00080036000C7002A00077002E000E7001A000F8001600098000E000470022000270",
	mem_init0 => X"006000070036400C6002A40076002E400E6001A400F9001640099000E400460022400260006400060036800C5002A80075002E800E5001A800FA00168009A000E800450022800250006800050036C00C4002AC0074002EC00E4001AC00FB0016C009B000EC00440022C00240006C00040037000C3002B00073002F000E3001B000FC00170009C000F000430023000230007000030037400C2002B40072002F400E2001B400FD00174009D000F400420023400220007400020037800C1002B80071002F800E1001B800FE00178009E000F800410023800210007800010037C00C0002BC0070002FC00E0001BC00FF0017C009F000FC00400023C00200007C0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_256_8.hex",
	init_file_layout => "port_a",
	logical_ram_name => "rom01:romcomp|altsyncram:altsyncram_component|altsyncram_5lq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk0~clkctrl_outclk\,
	clr0 => \ALT_INV_PB1~inputclkctrl_outclk\,
	portaaddr => \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N26
\PISO00|DM_s~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s~7_combout\ = (\counter11bit1|mod08dff~q\ & \romcomp|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter11bit1|mod08dff~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(0),
	combout => \PISO00|DM_s~7_combout\);

-- Location: FF_X41_Y19_N27
\PISO00|gen00:0:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s~7_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:0:aa01~q\);

-- Location: LCCOMB_X41_Y19_N28
\PISO00|DM_s[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[1]~6_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(1)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:0:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PISO00|gen00:0:aa01~q\,
	datac => \counter11bit1|mod08dff~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(1),
	combout => \PISO00|DM_s[1]~6_combout\);

-- Location: FF_X41_Y19_N29
\PISO00|gen00:1:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[1]~6_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:1:aa01~q\);

-- Location: LCCOMB_X41_Y19_N18
\PISO00|DM_s[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[2]~5_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(2)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:1:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit1|mod08dff~q\,
	datac => \PISO00|gen00:1:aa01~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(2),
	combout => \PISO00|DM_s[2]~5_combout\);

-- Location: FF_X41_Y19_N19
\PISO00|gen00:2:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[2]~5_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:2:aa01~q\);

-- Location: LCCOMB_X41_Y19_N4
\PISO00|DM_s[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[3]~4_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(3)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:2:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit1|mod08dff~q\,
	datac => \PISO00|gen00:2:aa01~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(3),
	combout => \PISO00|DM_s[3]~4_combout\);

-- Location: FF_X41_Y19_N5
\PISO00|gen00:3:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[3]~4_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:3:aa01~q\);

-- Location: LCCOMB_X41_Y19_N10
\PISO00|DM_s[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[4]~3_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(4)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:3:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter11bit1|mod08dff~q\,
	datac => \PISO00|gen00:3:aa01~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(4),
	combout => \PISO00|DM_s[4]~3_combout\);

-- Location: FF_X41_Y19_N11
\PISO00|gen00:4:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[4]~3_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:4:aa01~q\);

-- Location: LCCOMB_X41_Y19_N12
\PISO00|DM_s[5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[5]~2_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(5)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:4:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PISO00|gen00:4:aa01~q\,
	datac => \counter11bit1|mod08dff~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(5),
	combout => \PISO00|DM_s[5]~2_combout\);

-- Location: FF_X41_Y19_N13
\PISO00|gen00:5:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[5]~2_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:5:aa01~q\);

-- Location: LCCOMB_X41_Y19_N6
\PISO00|DM_s[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[6]~1_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(6)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:5:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PISO00|gen00:5:aa01~q\,
	datac => \counter11bit1|mod08dff~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(6),
	combout => \PISO00|DM_s[6]~1_combout\);

-- Location: FF_X41_Y19_N7
\PISO00|gen00:6:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[6]~1_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:6:aa01~q\);

-- Location: LCCOMB_X41_Y19_N24
\PISO00|DM_s[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PISO00|DM_s[7]~0_combout\ = (\counter11bit1|mod08dff~q\ & ((\romcomp|altsyncram_component|auto_generated|q_a\(7)))) # (!\counter11bit1|mod08dff~q\ & (\PISO00|gen00:6:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PISO00|gen00:6:aa01~q\,
	datac => \counter11bit1|mod08dff~q\,
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(7),
	combout => \PISO00|DM_s[7]~0_combout\);

-- Location: FF_X41_Y19_N25
\PISO00|gen00:7:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PISO00|DM_s[7]~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PISO00|gen00:7:aa01~q\);

-- Location: LCCOMB_X46_Y19_N22
\seqdet|D_s[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seqdet|D_s[0]~0_combout\ = (\seqdet|gen00:1:ffi0~q\ & (((!\seqdet|gen00:0:ffi0~q\ & \seqdet|gen00:2:ffi0~q\)) # (!\PISO00|gen00:7:aa01~q\))) # (!\seqdet|gen00:1:ffi0~q\ & (!\seqdet|gen00:0:ffi0~q\ & ((!\PISO00|gen00:7:aa01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqdet|gen00:1:ffi0~q\,
	datab => \seqdet|gen00:0:ffi0~q\,
	datac => \seqdet|gen00:2:ffi0~q\,
	datad => \PISO00|gen00:7:aa01~q\,
	combout => \seqdet|D_s[0]~0_combout\);

-- Location: LCCOMB_X46_Y19_N8
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\counter11bit1|mod08dff~q\) # (!\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB1~input_o\,
	datad => \counter11bit1|mod08dff~q\,
	combout => \comb~0_combout\);

-- Location: FF_X46_Y19_N15
\seqdet|gen00:0:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~combout\,
	asdata => \seqdet|D_s[0]~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqdet|gen00:0:ffi0~q\);

-- Location: LCCOMB_X46_Y19_N24
\seqdet|D_s[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seqdet|D_s[1]~1_combout\ = (\seqdet|gen00:1:ffi0~q\ & ((\seqdet|gen00:2:ffi0~q\ & ((!\seqdet|gen00:0:ffi0~q\))) # (!\seqdet|gen00:2:ffi0~q\ & (!\PISO00|gen00:7:aa01~q\)))) # (!\seqdet|gen00:1:ffi0~q\ & (!\PISO00|gen00:7:aa01~q\ & 
-- ((\seqdet|gen00:0:ffi0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PISO00|gen00:7:aa01~q\,
	datab => \seqdet|gen00:2:ffi0~q\,
	datac => \seqdet|gen00:1:ffi0~q\,
	datad => \seqdet|gen00:0:ffi0~q\,
	combout => \seqdet|D_s[1]~1_combout\);

-- Location: FF_X46_Y19_N25
\seqdet|gen00:1:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~combout\,
	d => \seqdet|D_s[1]~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqdet|gen00:1:ffi0~q\);

-- Location: LCCOMB_X46_Y19_N16
\seqdet|D_s[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seqdet|D_s\(2) = (\seqdet|gen00:1:ffi0~q\ & (\PISO00|gen00:7:aa01~q\ & (\seqdet|gen00:0:ffi0~q\ $ (\seqdet|gen00:2:ffi0~q\)))) # (!\seqdet|gen00:1:ffi0~q\ & (((\seqdet|gen00:2:ffi0~q\ & !\PISO00|gen00:7:aa01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqdet|gen00:1:ffi0~q\,
	datab => \seqdet|gen00:0:ffi0~q\,
	datac => \seqdet|gen00:2:ffi0~q\,
	datad => \PISO00|gen00:7:aa01~q\,
	combout => \seqdet|D_s\(2));

-- Location: FF_X46_Y19_N17
\seqdet|gen00:2:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~combout\,
	d => \seqdet|D_s\(2),
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqdet|gen00:2:ffi0~q\);

-- Location: FF_X47_Y19_N23
\PIPOstt0|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~combout\,
	asdata => \seqdet|gen00:2:ffi0~q\,
	clrn => \PB1~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOstt0|gen00:2:aa00~q\);

-- Location: LCCOMB_X47_Y19_N24
\PIPOstt0|gen00:1:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOstt0|gen00:1:aa00~feeder_combout\ = \seqdet|gen00:1:ffi0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seqdet|gen00:1:ffi0~q\,
	combout => \PIPOstt0|gen00:1:aa00~feeder_combout\);

-- Location: FF_X47_Y19_N25
\PIPOstt0|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~combout\,
	d => \PIPOstt0|gen00:1:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOstt0|gen00:1:aa00~q\);

-- Location: LCCOMB_X48_Y19_N30
\PIPOstt0|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOstt0|gen00:0:aa00~feeder_combout\ = \seqdet|gen00:0:ffi0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seqdet|gen00:0:ffi0~q\,
	combout => \PIPOstt0|gen00:0:aa00~feeder_combout\);

-- Location: FF_X48_Y19_N31
\PIPOstt0|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOstt0|gen00:0:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOstt0|gen00:0:aa00~q\);

-- Location: LCCOMB_X47_Y19_N30
\SeqDetected~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SeqDetected~0_combout\ = (\seqdet|gen00:2:ffi0~q\ & (\PIPOstt0|gen00:1:aa00~q\ & (!\PIPOstt0|gen00:0:aa00~q\ & \seqdet|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seqdet|gen00:2:ffi0~q\,
	datab => \PIPOstt0|gen00:1:aa00~q\,
	datac => \PIPOstt0|gen00:0:aa00~q\,
	datad => \seqdet|gen00:0:ffi0~q\,
	combout => \SeqDetected~0_combout\);

-- Location: LCCOMB_X47_Y19_N28
SeqDetected : cycloneiv_lcell_comb
-- Equation(s):
-- \SeqDetected~combout\ = LCELL((\PIPOstt0|gen00:2:aa00~q\ & (\SeqDetected~0_combout\ & \seqdet|gen00:1:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIPOstt0|gen00:2:aa00~q\,
	datac => \SeqDetected~0_combout\,
	datad => \seqdet|gen00:1:ffi0~q\,
	combout => \SeqDetected~combout\);

-- Location: LCCOMB_X46_Y3_N28
\SIPO00|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:0:aa00~feeder_combout\ = \PISO00|gen00:7:aa01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PISO00|gen00:7:aa01~q\,
	combout => \SIPO00|gen00:0:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N29
\SIPO00|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:0:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:0:aa00~q\);

-- Location: LCCOMB_X46_Y3_N10
\SIPO00|gen00:1:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:1:aa00~feeder_combout\ = \SIPO00|gen00:0:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:0:aa00~q\,
	combout => \SIPO00|gen00:1:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N11
\SIPO00|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:1:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:1:aa00~q\);

-- Location: LCCOMB_X46_Y3_N0
\SIPO00|gen00:2:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:2:aa00~feeder_combout\ = \SIPO00|gen00:1:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:1:aa00~q\,
	combout => \SIPO00|gen00:2:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N1
\SIPO00|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:2:aa00~q\);

-- Location: LCCOMB_X46_Y3_N2
\SIPO00|gen00:3:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:3:aa00~feeder_combout\ = \SIPO00|gen00:2:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:2:aa00~q\,
	combout => \SIPO00|gen00:3:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N3
\SIPO00|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:3:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:3:aa00~q\);

-- Location: LCCOMB_X46_Y3_N24
\SIPO00|gen00:4:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:4:aa00~feeder_combout\ = \SIPO00|gen00:3:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:3:aa00~q\,
	combout => \SIPO00|gen00:4:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N25
\SIPO00|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:4:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:4:aa00~q\);

-- Location: LCCOMB_X46_Y3_N18
\SIPO00|gen00:5:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:5:aa00~feeder_combout\ = \SIPO00|gen00:4:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:4:aa00~q\,
	combout => \SIPO00|gen00:5:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N19
\SIPO00|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:5:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:5:aa00~q\);

-- Location: LCCOMB_X46_Y3_N12
\SIPO00|gen00:6:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:6:aa00~feeder_combout\ = \SIPO00|gen00:5:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:5:aa00~q\,
	combout => \SIPO00|gen00:6:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N13
\SIPO00|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:6:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:6:aa00~q\);

-- Location: LCCOMB_X46_Y3_N22
\SIPO00|gen00:7:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SIPO00|gen00:7:aa00~feeder_combout\ = \SIPO00|gen00:6:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SIPO00|gen00:6:aa00~q\,
	combout => \SIPO00|gen00:7:aa00~feeder_combout\);

-- Location: FF_X46_Y3_N23
\SIPO00|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \SIPO00|gen00:7:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIPO00|gen00:7:aa00~q\);

-- Location: LCCOMB_X44_Y19_N8
\PIPOAdd|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:0:aa00~feeder_combout\ = \counter11bit0|gen00:3:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:3:a00~q\,
	combout => \PIPOAdd|gen00:0:aa00~feeder_combout\);

-- Location: FF_X44_Y19_N9
\PIPOAdd|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:0:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:0:aa00~q\);

-- Location: LCCOMB_X43_Y19_N28
\PIPOAdd|gen00:1:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:1:aa00~feeder_combout\ = \counter11bit0|gen00:4:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:4:a00~q\,
	combout => \PIPOAdd|gen00:1:aa00~feeder_combout\);

-- Location: FF_X43_Y19_N29
\PIPOAdd|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:1:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:1:aa00~q\);

-- Location: FF_X42_Y19_N13
\PIPOAdd|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	asdata => \counter11bit0|gen00:5:a00~q\,
	clrn => \PB1~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:2:aa00~q\);

-- Location: LCCOMB_X44_Y19_N6
\PIPOAdd|gen00:3:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:3:aa00~feeder_combout\ = \counter11bit0|gen00:6:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:6:a00~q\,
	combout => \PIPOAdd|gen00:3:aa00~feeder_combout\);

-- Location: FF_X44_Y19_N7
\PIPOAdd|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:3:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:3:aa00~q\);

-- Location: LCCOMB_X44_Y19_N4
\PIPOAdd|gen00:4:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:4:aa00~feeder_combout\ = \counter11bit0|gen00:7:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:7:a00~q\,
	combout => \PIPOAdd|gen00:4:aa00~feeder_combout\);

-- Location: FF_X44_Y19_N5
\PIPOAdd|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:4:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:4:aa00~q\);

-- Location: LCCOMB_X48_Y19_N28
\PIPOAdd|gen00:5:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:5:aa00~feeder_combout\ = \counter11bit0|gen00:8:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:8:a00~q\,
	combout => \PIPOAdd|gen00:5:aa00~feeder_combout\);

-- Location: FF_X48_Y19_N29
\PIPOAdd|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:5:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:5:aa00~q\);

-- Location: LCCOMB_X43_Y19_N10
\PIPOAdd|gen00:6:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:6:aa00~feeder_combout\ = \counter11bit0|gen00:9:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:9:a00~q\,
	combout => \PIPOAdd|gen00:6:aa00~feeder_combout\);

-- Location: FF_X43_Y19_N11
\PIPOAdd|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:6:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:6:aa00~q\);

-- Location: LCCOMB_X44_Y19_N30
\PIPOAdd|gen00:7:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOAdd|gen00:7:aa00~feeder_combout\ = \counter11bit0|gen00:10:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter11bit0|gen00:10:a00~q\,
	combout => \PIPOAdd|gen00:7:aa00~feeder_combout\);

-- Location: FF_X44_Y19_N31
\PIPOAdd|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk0~clkctrl_outclk\,
	d => \PIPOAdd|gen00:7:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOAdd|gen00:7:aa00~q\);

-- Location: LCCOMB_X41_Y19_N14
\PIPOmem|gen00:0:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:0:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(0),
	combout => \PIPOmem|gen00:0:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N15
\PIPOmem|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:0:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:0:aa00~q\);

-- Location: LCCOMB_X41_Y19_N20
\PIPOmem|gen00:1:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:1:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(1),
	combout => \PIPOmem|gen00:1:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N21
\PIPOmem|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:1:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:1:aa00~q\);

-- Location: LCCOMB_X41_Y19_N30
\PIPOmem|gen00:2:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:2:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(2),
	combout => \PIPOmem|gen00:2:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N31
\PIPOmem|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:2:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:2:aa00~q\);

-- Location: LCCOMB_X41_Y19_N8
\PIPOmem|gen00:3:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:3:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(3),
	combout => \PIPOmem|gen00:3:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N9
\PIPOmem|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:3:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:3:aa00~q\);

-- Location: LCCOMB_X41_Y19_N22
\PIPOmem|gen00:4:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:4:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(4),
	combout => \PIPOmem|gen00:4:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N23
\PIPOmem|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:4:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:4:aa00~q\);

-- Location: LCCOMB_X41_Y19_N16
\PIPOmem|gen00:5:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:5:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(5),
	combout => \PIPOmem|gen00:5:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N17
\PIPOmem|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:5:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:5:aa00~q\);

-- Location: LCCOMB_X41_Y19_N2
\PIPOmem|gen00:6:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:6:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(6),
	combout => \PIPOmem|gen00:6:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N3
\PIPOmem|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:6:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:6:aa00~q\);

-- Location: LCCOMB_X41_Y19_N0
\PIPOmem|gen00:7:aa00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PIPOmem|gen00:7:aa00~feeder_combout\ = \romcomp|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \romcomp|altsyncram_component|auto_generated|q_a\(7),
	combout => \PIPOmem|gen00:7:aa00~feeder_combout\);

-- Location: FF_X41_Y19_N1
\PIPOmem|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk0~clkctrl_outclk\,
	d => \PIPOmem|gen00:7:aa00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PIPOmem|gen00:7:aa00~q\);

-- Location: LCCOMB_X47_Y19_N22
\nOfSeqDetec|gen00:0:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:0:a00~0_combout\ = !\nOfSeqDetec|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nOfSeqDetec|gen00:0:a00~q\,
	combout => \nOfSeqDetec|gen00:0:a00~0_combout\);

-- Location: LCCOMB_X47_Y19_N26
\nOfSeqDetec|gen00:0:a00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:0:a00~feeder_combout\ = \nOfSeqDetec|gen00:0:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nOfSeqDetec|gen00:0:a00~0_combout\,
	combout => \nOfSeqDetec|gen00:0:a00~feeder_combout\);

-- Location: FF_X47_Y19_N27
\nOfSeqDetec|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SeqDetected~combout\,
	d => \nOfSeqDetec|gen00:0:a00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nOfSeqDetec|gen00:0:a00~q\);

-- Location: LCCOMB_X48_Y18_N18
\nOfSeqDetec|gen00:1:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:1:a00~0_combout\ = !\nOfSeqDetec|gen00:1:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nOfSeqDetec|gen00:1:a00~q\,
	combout => \nOfSeqDetec|gen00:1:a00~0_combout\);

-- Location: LCCOMB_X48_Y18_N6
\nOfSeqDetec|gen00:1:a00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:1:a00~feeder_combout\ = \nOfSeqDetec|gen00:1:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nOfSeqDetec|gen00:1:a00~0_combout\,
	combout => \nOfSeqDetec|gen00:1:a00~feeder_combout\);

-- Location: FF_X48_Y18_N7
\nOfSeqDetec|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \nOfSeqDetec|ALT_INV_gen00:0:a00~q\,
	d => \nOfSeqDetec|gen00:1:a00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nOfSeqDetec|gen00:1:a00~q\);

-- Location: LCCOMB_X49_Y18_N18
\nOfSeqDetec|gen00:2:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:2:a00~0_combout\ = !\nOfSeqDetec|gen00:2:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nOfSeqDetec|gen00:2:a00~q\,
	combout => \nOfSeqDetec|gen00:2:a00~0_combout\);

-- Location: LCCOMB_X49_Y18_N12
\nOfSeqDetec|gen00:2:a00~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:2:a00~feeder_combout\ = \nOfSeqDetec|gen00:2:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nOfSeqDetec|gen00:2:a00~0_combout\,
	combout => \nOfSeqDetec|gen00:2:a00~feeder_combout\);

-- Location: FF_X49_Y18_N13
\nOfSeqDetec|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \nOfSeqDetec|ALT_INV_gen00:1:a00~q\,
	d => \nOfSeqDetec|gen00:2:a00~feeder_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nOfSeqDetec|gen00:2:a00~q\);

-- Location: LCCOMB_X49_Y18_N30
\nOfSeqDetec|gen00:3:a00~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nOfSeqDetec|gen00:3:a00~0_combout\ = !\nOfSeqDetec|gen00:3:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nOfSeqDetec|gen00:3:a00~q\,
	combout => \nOfSeqDetec|gen00:3:a00~0_combout\);

-- Location: FF_X49_Y18_N31
\nOfSeqDetec|gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \nOfSeqDetec|ALT_INV_gen00:2:a00~q\,
	d => \nOfSeqDetec|gen00:3:a00~0_combout\,
	clrn => \PB1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nOfSeqDetec|gen00:3:a00~q\);

-- Location: IOIBUF_X52_Y21_N8
\clk_ref~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ref,
	o => \clk_ref~input_o\);

ww_seqDetout <= \seqDetout~output_o\;

ww_SSo <= \SSo~output_o\;

ww_QSIPO(0) <= \QSIPO[0]~output_o\;

ww_QSIPO(1) <= \QSIPO[1]~output_o\;

ww_QSIPO(2) <= \QSIPO[2]~output_o\;

ww_QSIPO(3) <= \QSIPO[3]~output_o\;

ww_QSIPO(4) <= \QSIPO[4]~output_o\;

ww_QSIPO(5) <= \QSIPO[5]~output_o\;

ww_QSIPO(6) <= \QSIPO[6]~output_o\;

ww_QSIPO(7) <= \QSIPO[7]~output_o\;

ww_A0(0) <= \A0[0]~output_o\;

ww_A0(1) <= \A0[1]~output_o\;

ww_A0(2) <= \A0[2]~output_o\;

ww_A0(3) <= \A0[3]~output_o\;

ww_A1(0) <= \A1[0]~output_o\;

ww_A1(1) <= \A1[1]~output_o\;

ww_A1(2) <= \A1[2]~output_o\;

ww_A1(3) <= \A1[3]~output_o\;

ww_B0(0) <= \B0[0]~output_o\;

ww_B0(1) <= \B0[1]~output_o\;

ww_B0(2) <= \B0[2]~output_o\;

ww_B0(3) <= \B0[3]~output_o\;

ww_B1(0) <= \B1[0]~output_o\;

ww_B1(1) <= \B1[1]~output_o\;

ww_B1(2) <= \B1[2]~output_o\;

ww_B1(3) <= \B1[3]~output_o\;

ww_C0(0) <= \C0[0]~output_o\;

ww_C0(1) <= \C0[1]~output_o\;

ww_C0(2) <= \C0[2]~output_o\;

ww_C0(3) <= \C0[3]~output_o\;

ww_Q0det(0) <= \Q0det[0]~output_o\;

ww_Q0det(1) <= \Q0det[1]~output_o\;

ww_Q0det(2) <= \Q0det[2]~output_o\;

ww_Q0det(3) <= \Q0det[3]~output_o\;

ww_regDete(0) <= \regDete[0]~output_o\;

ww_regDete(1) <= \regDete[1]~output_o\;

ww_regDete(2) <= \regDete[2]~output_o\;

ww_regDete(3) <= \regDete[3]~output_o\;
END structure;


