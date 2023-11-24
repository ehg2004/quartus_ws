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

-- DATE "11/23/2023 15:43:14"

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

ENTITY 	lab_07_dec IS
    PORT (
	clk_ref : IN std_logic;
	PB0 : IN std_logic;
	PB1 : IN std_logic;
	SW0 : IN std_logic;
	LED0 : BUFFER std_logic;
	A0dec : BUFFER std_logic_vector(7 DOWNTO 0);
	A1dec : BUFFER std_logic_vector(7 DOWNTO 0);
	B0dec : BUFFER std_logic_vector(7 DOWNTO 0);
	B1dec : BUFFER std_logic_vector(7 DOWNTO 0);
	C0dec : BUFFER std_logic_vector(7 DOWNTO 0);
	Q0dec : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lab_07_dec;

-- Design Ports Information
-- LED0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0dec[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1dec[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0dec[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1dec[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0dec[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0dec[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ref	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_07_dec IS
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
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_A0dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A1dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B0dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B1dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_C0dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q0dec : std_logic_vector(7 DOWNTO 0);
SIGNAL \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cmpLab07|clock9PH|mod09dff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmpLab07|clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_ref~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \A0dec[0]~output_o\ : std_logic;
SIGNAL \A0dec[1]~output_o\ : std_logic;
SIGNAL \A0dec[2]~output_o\ : std_logic;
SIGNAL \A0dec[3]~output_o\ : std_logic;
SIGNAL \A0dec[4]~output_o\ : std_logic;
SIGNAL \A0dec[5]~output_o\ : std_logic;
SIGNAL \A0dec[6]~output_o\ : std_logic;
SIGNAL \A0dec[7]~output_o\ : std_logic;
SIGNAL \A1dec[0]~output_o\ : std_logic;
SIGNAL \A1dec[1]~output_o\ : std_logic;
SIGNAL \A1dec[2]~output_o\ : std_logic;
SIGNAL \A1dec[3]~output_o\ : std_logic;
SIGNAL \A1dec[4]~output_o\ : std_logic;
SIGNAL \A1dec[5]~output_o\ : std_logic;
SIGNAL \A1dec[6]~output_o\ : std_logic;
SIGNAL \A1dec[7]~output_o\ : std_logic;
SIGNAL \B0dec[0]~output_o\ : std_logic;
SIGNAL \B0dec[1]~output_o\ : std_logic;
SIGNAL \B0dec[2]~output_o\ : std_logic;
SIGNAL \B0dec[3]~output_o\ : std_logic;
SIGNAL \B0dec[4]~output_o\ : std_logic;
SIGNAL \B0dec[5]~output_o\ : std_logic;
SIGNAL \B0dec[6]~output_o\ : std_logic;
SIGNAL \B0dec[7]~output_o\ : std_logic;
SIGNAL \B1dec[0]~output_o\ : std_logic;
SIGNAL \B1dec[1]~output_o\ : std_logic;
SIGNAL \B1dec[2]~output_o\ : std_logic;
SIGNAL \B1dec[3]~output_o\ : std_logic;
SIGNAL \B1dec[4]~output_o\ : std_logic;
SIGNAL \B1dec[5]~output_o\ : std_logic;
SIGNAL \B1dec[6]~output_o\ : std_logic;
SIGNAL \B1dec[7]~output_o\ : std_logic;
SIGNAL \C0dec[0]~output_o\ : std_logic;
SIGNAL \C0dec[1]~output_o\ : std_logic;
SIGNAL \C0dec[2]~output_o\ : std_logic;
SIGNAL \C0dec[3]~output_o\ : std_logic;
SIGNAL \C0dec[4]~output_o\ : std_logic;
SIGNAL \C0dec[5]~output_o\ : std_logic;
SIGNAL \C0dec[6]~output_o\ : std_logic;
SIGNAL \C0dec[7]~output_o\ : std_logic;
SIGNAL \Q0dec[0]~output_o\ : std_logic;
SIGNAL \Q0dec[1]~output_o\ : std_logic;
SIGNAL \Q0dec[2]~output_o\ : std_logic;
SIGNAL \Q0dec[3]~output_o\ : std_logic;
SIGNAL \Q0dec[4]~output_o\ : std_logic;
SIGNAL \Q0dec[5]~output_o\ : std_logic;
SIGNAL \Q0dec[6]~output_o\ : std_logic;
SIGNAL \Q0dec[7]~output_o\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:0:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:1:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:2:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:3:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9|gen00:3:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9|mod09dff~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|clock9|mod09dff~q\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:0:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:1:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:2:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:3:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|clock9PH|gen00:3:a00~q\ : std_logic;
SIGNAL \cmpLab07|clock9PH|mod09dff~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|clock9PH|mod09dff~q\ : std_logic;
SIGNAL \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:0:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:0:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:1:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:1:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:2:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:2:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:3:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:3:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:3:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|v_cmp~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:4:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:4:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:4:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:5:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:5:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:5:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:6:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:6:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:6:a00~q\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:7:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:7:a00~1_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:7:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|countAdd0|gen00:7:a00~q\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s~7_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:0:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[1]~6_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:1:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[2]~5_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:2:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[3]~4_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:3:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[4]~3_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:4:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[5]~2_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:5:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[6]~1_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:6:aa01~q\ : std_logic;
SIGNAL \cmpLab07|PISO00|DM_s[7]~0_combout\ : std_logic;
SIGNAL \cmpLab07|PISO00|gen00:7:aa01~q\ : std_logic;
SIGNAL \cmpLab07|seqdet|D_s[0]~0_combout\ : std_logic;
SIGNAL \cmpLab07|seqdet|gen00:0:ffi0~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|comb~0_combout\ : std_logic;
SIGNAL \cmpLab07|seqdet|gen00:0:ffi0~q\ : std_logic;
SIGNAL \cmpLab07|seqdet|D_s[1]~1_combout\ : std_logic;
SIGNAL \cmpLab07|seqdet|gen00:1:ffi0~q\ : std_logic;
SIGNAL \cmpLab07|seqdet|gen00:2:ffi0~q\ : std_logic;
SIGNAL \cmpLab07|PIPOstt0|gen00:0:aa00~q\ : std_logic;
SIGNAL \cmpLab07|SeqDetected~0_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOstt0|gen00:2:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOstt0|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOstt0|gen00:1:aa00~q\ : std_logic;
SIGNAL \cmpLab07|SeqDetected~combout\ : std_logic;
SIGNAL \cmpLab07|pseSystem~0_combout\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \cmpLab07|comb~1_combout\ : std_logic;
SIGNAL \cmpLab07|pseSystem~q\ : std_logic;
SIGNAL \clk_ref~input_o\ : std_logic;
SIGNAL \clk_ref~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkref8Hz|Add0~0_combout\ : std_logic;
SIGNAL \clkref8Hz|count[0]~8_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~0_combout\ : std_logic;
SIGNAL \clkref80Hz|count~0_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~1\ : std_logic;
SIGNAL \clkref80Hz|Add0~2_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~3\ : std_logic;
SIGNAL \clkref80Hz|Add0~4_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~5\ : std_logic;
SIGNAL \clkref80Hz|Add0~6_combout\ : std_logic;
SIGNAL \clkref80Hz|count~1_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~7\ : std_logic;
SIGNAL \clkref80Hz|Add0~8_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~9\ : std_logic;
SIGNAL \clkref80Hz|Add0~10_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~11\ : std_logic;
SIGNAL \clkref80Hz|Add0~12_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~13\ : std_logic;
SIGNAL \clkref80Hz|Add0~14_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~15\ : std_logic;
SIGNAL \clkref80Hz|Add0~16_combout\ : std_logic;
SIGNAL \clkref80Hz|count~2_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~17\ : std_logic;
SIGNAL \clkref80Hz|Add0~18_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~19\ : std_logic;
SIGNAL \clkref80Hz|Add0~20_combout\ : std_logic;
SIGNAL \clkref80Hz|count~3_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~21\ : std_logic;
SIGNAL \clkref80Hz|Add0~22_combout\ : std_logic;
SIGNAL \clkref80Hz|count~4_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~23\ : std_logic;
SIGNAL \clkref80Hz|Add0~24_combout\ : std_logic;
SIGNAL \clkref80Hz|count~5_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~25\ : std_logic;
SIGNAL \clkref80Hz|Add0~26_combout\ : std_logic;
SIGNAL \clkref80Hz|count~6_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~27\ : std_logic;
SIGNAL \clkref80Hz|Add0~28_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~29\ : std_logic;
SIGNAL \clkref80Hz|Add0~30_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~31\ : std_logic;
SIGNAL \clkref80Hz|Add0~32_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~33\ : std_logic;
SIGNAL \clkref80Hz|Add0~34_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~35\ : std_logic;
SIGNAL \clkref80Hz|Add0~36_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~37\ : std_logic;
SIGNAL \clkref80Hz|Add0~38_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~39\ : std_logic;
SIGNAL \clkref80Hz|Add0~40_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~41\ : std_logic;
SIGNAL \clkref80Hz|Add0~42_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~43\ : std_logic;
SIGNAL \clkref80Hz|Add0~44_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~45\ : std_logic;
SIGNAL \clkref80Hz|Add0~46_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~47\ : std_logic;
SIGNAL \clkref80Hz|Add0~48_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~49\ : std_logic;
SIGNAL \clkref80Hz|Add0~50_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~51\ : std_logic;
SIGNAL \clkref80Hz|Add0~52_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~53\ : std_logic;
SIGNAL \clkref80Hz|Add0~54_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~55\ : std_logic;
SIGNAL \clkref80Hz|Add0~56_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~57\ : std_logic;
SIGNAL \clkref80Hz|Add0~58_combout\ : std_logic;
SIGNAL \clkref80Hz|Add0~59\ : std_logic;
SIGNAL \clkref80Hz|Add0~60_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkref80Hz|Equal0~10_combout\ : std_logic;
SIGNAL \clkref80Hz|tmp~0_combout\ : std_logic;
SIGNAL \clkref80Hz|tmp~q\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \clkref8Hz|Add0~1\ : std_logic;
SIGNAL \clkref8Hz|Add0~2_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~3\ : std_logic;
SIGNAL \clkref8Hz|Add0~4_combout\ : std_logic;
SIGNAL \clkref8Hz|count~1_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~5\ : std_logic;
SIGNAL \clkref8Hz|Add0~6_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~7\ : std_logic;
SIGNAL \clkref8Hz|Add0~8_combout\ : std_logic;
SIGNAL \clkref8Hz|count~0_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~9\ : std_logic;
SIGNAL \clkref8Hz|Add0~10_combout\ : std_logic;
SIGNAL \clkref8Hz|count~2_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~11\ : std_logic;
SIGNAL \clkref8Hz|Add0~12_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~13\ : std_logic;
SIGNAL \clkref8Hz|Add0~14_combout\ : std_logic;
SIGNAL \clkref8Hz|count~3_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~15\ : std_logic;
SIGNAL \clkref8Hz|Add0~16_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~17\ : std_logic;
SIGNAL \clkref8Hz|Add0~18_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~19\ : std_logic;
SIGNAL \clkref8Hz|Add0~20_combout\ : std_logic;
SIGNAL \clkref8Hz|count~4_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~21\ : std_logic;
SIGNAL \clkref8Hz|Add0~22_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~23\ : std_logic;
SIGNAL \clkref8Hz|Add0~24_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~25\ : std_logic;
SIGNAL \clkref8Hz|Add0~26_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~27\ : std_logic;
SIGNAL \clkref8Hz|Add0~28_combout\ : std_logic;
SIGNAL \clkref8Hz|count~5_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~29\ : std_logic;
SIGNAL \clkref8Hz|Add0~30_combout\ : std_logic;
SIGNAL \clkref8Hz|count~6_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~31\ : std_logic;
SIGNAL \clkref8Hz|Add0~32_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~33\ : std_logic;
SIGNAL \clkref8Hz|Add0~34_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~35\ : std_logic;
SIGNAL \clkref8Hz|Add0~36_combout\ : std_logic;
SIGNAL \clkref8Hz|count~7_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~37\ : std_logic;
SIGNAL \clkref8Hz|Add0~38_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~39\ : std_logic;
SIGNAL \clkref8Hz|Add0~40_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~41\ : std_logic;
SIGNAL \clkref8Hz|Add0~42_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~43\ : std_logic;
SIGNAL \clkref8Hz|Add0~44_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~45\ : std_logic;
SIGNAL \clkref8Hz|Add0~46_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~47\ : std_logic;
SIGNAL \clkref8Hz|Add0~48_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~49\ : std_logic;
SIGNAL \clkref8Hz|Add0~50_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~51\ : std_logic;
SIGNAL \clkref8Hz|Add0~52_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~53\ : std_logic;
SIGNAL \clkref8Hz|Add0~54_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~55\ : std_logic;
SIGNAL \clkref8Hz|Add0~56_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~57\ : std_logic;
SIGNAL \clkref8Hz|Add0~58_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~59\ : std_logic;
SIGNAL \clkref8Hz|Add0~60_combout\ : std_logic;
SIGNAL \clkref8Hz|Add0~61\ : std_logic;
SIGNAL \clkref8Hz|Add0~62_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkref8Hz|Equal0~10_combout\ : std_logic;
SIGNAL \clkref8Hz|tmp~0_combout\ : std_logic;
SIGNAL \clkref8Hz|tmp~q\ : std_logic;
SIGNAL \clk_t~0_combout\ : std_logic;
SIGNAL \cmpLab07|clk0~combout\ : std_logic;
SIGNAL \cmpLab07|clk0~clkctrl_outclk\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:2:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:0:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:3:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:1:aa00~q\ : std_logic;
SIGNAL \A0|D~0_combout\ : std_logic;
SIGNAL \A0|D~1_combout\ : std_logic;
SIGNAL \A0|D~2_combout\ : std_logic;
SIGNAL \A0|D~3_combout\ : std_logic;
SIGNAL \A0|D~4_combout\ : std_logic;
SIGNAL \A0|D~5_combout\ : std_logic;
SIGNAL \A0|D~6_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:4:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:6:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:7:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOAdd|gen00:5:aa00~q\ : std_logic;
SIGNAL \A1|D~0_combout\ : std_logic;
SIGNAL \A1|D~1_combout\ : std_logic;
SIGNAL \A1|D~2_combout\ : std_logic;
SIGNAL \A1|D~3_combout\ : std_logic;
SIGNAL \A1|D~4_combout\ : std_logic;
SIGNAL \A1|D~5_combout\ : std_logic;
SIGNAL \A1|D~6_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:2:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:1:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:3:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:0:aa00~q\ : std_logic;
SIGNAL \B0|D~0_combout\ : std_logic;
SIGNAL \B0|D~1_combout\ : std_logic;
SIGNAL \B0|D~2_combout\ : std_logic;
SIGNAL \B0|D~3_combout\ : std_logic;
SIGNAL \B0|D~4_combout\ : std_logic;
SIGNAL \B0|D~5_combout\ : std_logic;
SIGNAL \B0|D~6_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:6:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:4:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:7:aa00~q\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|PIPOmem|gen00:5:aa00~q\ : std_logic;
SIGNAL \B1|D~0_combout\ : std_logic;
SIGNAL \B1|D~1_combout\ : std_logic;
SIGNAL \B1|D~2_combout\ : std_logic;
SIGNAL \B1|D~3_combout\ : std_logic;
SIGNAL \B1|D~4_combout\ : std_logic;
SIGNAL \B1|D~5_combout\ : std_logic;
SIGNAL \B1|D~6_combout\ : std_logic;
SIGNAL \C0|D~0_combout\ : std_logic;
SIGNAL \C0|D~1_combout\ : std_logic;
SIGNAL \C0|D~2_combout\ : std_logic;
SIGNAL \C0|D~3_combout\ : std_logic;
SIGNAL \C0|D~4_combout\ : std_logic;
SIGNAL \C0|D~5_combout\ : std_logic;
SIGNAL \C0|D~6_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:0:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:0:a00~q\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:1:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:1:a00~q\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:2:a00~feeder_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:2:a00~q\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:3:a00~0_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|gen00:3:a00~q\ : std_logic;
SIGNAL \Q0|D~0_combout\ : std_logic;
SIGNAL \Q0|D~1_combout\ : std_logic;
SIGNAL \Q0|D~2_combout\ : std_logic;
SIGNAL \Q0|D~3_combout\ : std_logic;
SIGNAL \Q0|D~4_combout\ : std_logic;
SIGNAL \Q0|D~5_combout\ : std_logic;
SIGNAL \Q0|D~6_combout\ : std_logic;
SIGNAL \clkref80Hz|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkref8Hz|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cmpLab07|seqdet|D_s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cmpLab07|ALT_INV_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_PB1~input_o\ : std_logic;
SIGNAL \cmpLab07|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \cmpLab07|ALT_INV_clk0~combout\ : std_logic;
SIGNAL \cmpLab07|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|ALT_INV_gen00:1:a00~q\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|ALT_INV_gen00:2:a00~q\ : std_logic;
SIGNAL \cmpLab07|nOfSeqDetec|ALT_INV_gen00:0:a00~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_ref <= clk_ref;
ww_PB0 <= PB0;
ww_PB1 <= PB1;
ww_SW0 <= SW0;
LED0 <= ww_LED0;
A0dec <= ww_A0dec;
A1dec <= ww_A1dec;
B0dec <= ww_B0dec;
B1dec <= ww_B1dec;
C0dec <= ww_C0dec;
Q0dec <= ww_Q0dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cmpLab07|countAdd0|gen00:7:a00~q\ & \cmpLab07|countAdd0|gen00:6:a00~q\ & \cmpLab07|countAdd0|gen00:5:a00~q\ & \cmpLab07|countAdd0|gen00:4:a00~q\ & 
\cmpLab07|countAdd0|gen00:3:a00~q\ & \cmpLab07|countAdd0|gen00:2:a00~q\ & \cmpLab07|countAdd0|gen00:1:a00~q\ & \cmpLab07|countAdd0|gen00:0:a00~q\);

\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(0) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(1) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(2) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(3) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(4) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(5) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(6) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(7) <= \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\cmpLab07|clock9PH|mod09dff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cmpLab07|clock9PH|mod09dff~q\);

\cmpLab07|clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cmpLab07|clk0~combout\);

\clk_ref~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_ref~input_o\);
\cmpLab07|ALT_INV_clk0~clkctrl_outclk\ <= NOT \cmpLab07|clk0~clkctrl_outclk\;
\ALT_INV_PB1~input_o\ <= NOT \PB1~input_o\;
\cmpLab07|ALT_INV_comb~1_combout\ <= NOT \cmpLab07|comb~1_combout\;
\cmpLab07|ALT_INV_clk0~combout\ <= NOT \cmpLab07|clk0~combout\;
\cmpLab07|ALT_INV_comb~0_combout\ <= NOT \cmpLab07|comb~0_combout\;
\cmpLab07|nOfSeqDetec|ALT_INV_gen00:1:a00~q\ <= NOT \cmpLab07|nOfSeqDetec|gen00:1:a00~q\;
\cmpLab07|nOfSeqDetec|ALT_INV_gen00:2:a00~q\ <= NOT \cmpLab07|nOfSeqDetec|gen00:2:a00~q\;
\cmpLab07|nOfSeqDetec|ALT_INV_gen00:0:a00~q\ <= NOT \cmpLab07|nOfSeqDetec|gen00:0:a00~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y54_N2
\LED0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\A0dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~0_combout\,
	devoe => ww_devoe,
	o => \A0dec[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\A0dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~1_combout\,
	devoe => ww_devoe,
	o => \A0dec[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\A0dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~2_combout\,
	devoe => ww_devoe,
	o => \A0dec[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\A0dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~3_combout\,
	devoe => ww_devoe,
	o => \A0dec[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\A0dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~4_combout\,
	devoe => ww_devoe,
	o => \A0dec[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\A0dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~5_combout\,
	devoe => ww_devoe,
	o => \A0dec[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\A0dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|D~6_combout\,
	devoe => ww_devoe,
	o => \A0dec[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\A0dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A0dec[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\A1dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~0_combout\,
	devoe => ww_devoe,
	o => \A1dec[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\A1dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~1_combout\,
	devoe => ww_devoe,
	o => \A1dec[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\A1dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~2_combout\,
	devoe => ww_devoe,
	o => \A1dec[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\A1dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~3_combout\,
	devoe => ww_devoe,
	o => \A1dec[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\A1dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~4_combout\,
	devoe => ww_devoe,
	o => \A1dec[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\A1dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~5_combout\,
	devoe => ww_devoe,
	o => \A1dec[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\A1dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D~6_combout\,
	devoe => ww_devoe,
	o => \A1dec[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\A1dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A1dec[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\B0dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~0_combout\,
	devoe => ww_devoe,
	o => \B0dec[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\B0dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~1_combout\,
	devoe => ww_devoe,
	o => \B0dec[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\B0dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~2_combout\,
	devoe => ww_devoe,
	o => \B0dec[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\B0dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~3_combout\,
	devoe => ww_devoe,
	o => \B0dec[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\B0dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~4_combout\,
	devoe => ww_devoe,
	o => \B0dec[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\B0dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~5_combout\,
	devoe => ww_devoe,
	o => \B0dec[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\B0dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|D~6_combout\,
	devoe => ww_devoe,
	o => \B0dec[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\B0dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B0dec[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\B1dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~0_combout\,
	devoe => ww_devoe,
	o => \B1dec[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\B1dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~1_combout\,
	devoe => ww_devoe,
	o => \B1dec[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\B1dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~2_combout\,
	devoe => ww_devoe,
	o => \B1dec[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\B1dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~3_combout\,
	devoe => ww_devoe,
	o => \B1dec[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\B1dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~4_combout\,
	devoe => ww_devoe,
	o => \B1dec[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\B1dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~5_combout\,
	devoe => ww_devoe,
	o => \B1dec[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\B1dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|D~6_combout\,
	devoe => ww_devoe,
	o => \B1dec[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\B1dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B1dec[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\C0dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~0_combout\,
	devoe => ww_devoe,
	o => \C0dec[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\C0dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~1_combout\,
	devoe => ww_devoe,
	o => \C0dec[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\C0dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~2_combout\,
	devoe => ww_devoe,
	o => \C0dec[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\C0dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~3_combout\,
	devoe => ww_devoe,
	o => \C0dec[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\C0dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~4_combout\,
	devoe => ww_devoe,
	o => \C0dec[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\C0dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~5_combout\,
	devoe => ww_devoe,
	o => \C0dec[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\C0dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|D~6_combout\,
	devoe => ww_devoe,
	o => \C0dec[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\C0dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \C0dec[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\Q0dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~0_combout\,
	devoe => ww_devoe,
	o => \Q0dec[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Q0dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~1_combout\,
	devoe => ww_devoe,
	o => \Q0dec[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Q0dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~2_combout\,
	devoe => ww_devoe,
	o => \Q0dec[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\Q0dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~3_combout\,
	devoe => ww_devoe,
	o => \Q0dec[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Q0dec[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~4_combout\,
	devoe => ww_devoe,
	o => \Q0dec[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Q0dec[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~5_combout\,
	devoe => ww_devoe,
	o => \Q0dec[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Q0dec[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0|D~6_combout\,
	devoe => ww_devoe,
	o => \Q0dec[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\Q0dec[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q0dec[7]~output_o\);

-- Location: LCCOMB_X54_Y52_N28
\cmpLab07|clock9|gen00:0:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9|gen00:0:a00~0_combout\ = !\cmpLab07|clock9|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|clock9|gen00:0:a00~q\,
	combout => \cmpLab07|clock9|gen00:0:a00~0_combout\);

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

-- Location: FF_X54_Y52_N29
\cmpLab07|clock9|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9|gen00:0:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9|gen00:0:a00~q\);

-- Location: LCCOMB_X54_Y52_N18
\cmpLab07|clock9|gen00:1:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9|gen00:1:a00~0_combout\ = \cmpLab07|clock9|gen00:1:a00~q\ $ (\cmpLab07|clock9|gen00:0:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|clock9|gen00:1:a00~q\,
	datad => \cmpLab07|clock9|gen00:0:a00~q\,
	combout => \cmpLab07|clock9|gen00:1:a00~0_combout\);

-- Location: FF_X54_Y52_N19
\cmpLab07|clock9|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9|gen00:1:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9|gen00:1:a00~q\);

-- Location: LCCOMB_X54_Y52_N10
\cmpLab07|clock9|gen00:2:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9|gen00:2:a00~0_combout\ = \cmpLab07|clock9|gen00:2:a00~q\ $ (((\cmpLab07|clock9|gen00:0:a00~q\ & \cmpLab07|clock9|gen00:1:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|gen00:0:a00~q\,
	datac => \cmpLab07|clock9|gen00:2:a00~q\,
	datad => \cmpLab07|clock9|gen00:1:a00~q\,
	combout => \cmpLab07|clock9|gen00:2:a00~0_combout\);

-- Location: FF_X54_Y52_N11
\cmpLab07|clock9|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9|gen00:2:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9|gen00:2:a00~q\);

-- Location: LCCOMB_X54_Y52_N20
\cmpLab07|clock9|gen00:3:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9|gen00:3:a00~0_combout\ = \cmpLab07|clock9|gen00:3:a00~q\ $ (((\cmpLab07|clock9|gen00:2:a00~q\ & (\cmpLab07|clock9|gen00:0:a00~q\ & \cmpLab07|clock9|gen00:1:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|clock9|gen00:2:a00~q\,
	datab => \cmpLab07|clock9|gen00:0:a00~q\,
	datac => \cmpLab07|clock9|gen00:3:a00~q\,
	datad => \cmpLab07|clock9|gen00:1:a00~q\,
	combout => \cmpLab07|clock9|gen00:3:a00~0_combout\);

-- Location: FF_X54_Y52_N21
\cmpLab07|clock9|gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9|gen00:3:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9|gen00:3:a00~q\);

-- Location: LCCOMB_X54_Y50_N18
\cmpLab07|clock9|mod09dff~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9|mod09dff~feeder_combout\ = \cmpLab07|clock9|gen00:3:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|clock9|gen00:3:a00~q\,
	combout => \cmpLab07|clock9|mod09dff~feeder_combout\);

-- Location: FF_X54_Y50_N19
\cmpLab07|clock9|mod09dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9|mod09dff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9|mod09dff~q\);

-- Location: LCCOMB_X45_Y52_N30
\cmpLab07|clock9PH|gen00:0:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9PH|gen00:0:a00~0_combout\ = !\cmpLab07|clock9PH|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|clock9PH|gen00:0:a00~q\,
	combout => \cmpLab07|clock9PH|gen00:0:a00~0_combout\);

-- Location: FF_X45_Y52_N31
\cmpLab07|clock9PH|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9PH|gen00:0:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9PH|gen00:0:a00~q\);

-- Location: LCCOMB_X45_Y52_N26
\cmpLab07|clock9PH|gen00:1:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9PH|gen00:1:a00~0_combout\ = \cmpLab07|clock9PH|gen00:1:a00~q\ $ (\cmpLab07|clock9PH|gen00:0:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|clock9PH|gen00:1:a00~q\,
	datad => \cmpLab07|clock9PH|gen00:0:a00~q\,
	combout => \cmpLab07|clock9PH|gen00:1:a00~0_combout\);

-- Location: FF_X45_Y52_N27
\cmpLab07|clock9PH|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9PH|gen00:1:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9PH|gen00:1:a00~q\);

-- Location: LCCOMB_X45_Y52_N22
\cmpLab07|clock9PH|gen00:2:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9PH|gen00:2:a00~0_combout\ = \cmpLab07|clock9PH|gen00:2:a00~q\ $ (((\cmpLab07|clock9PH|gen00:1:a00~q\ & \cmpLab07|clock9PH|gen00:0:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|clock9PH|gen00:1:a00~q\,
	datac => \cmpLab07|clock9PH|gen00:2:a00~q\,
	datad => \cmpLab07|clock9PH|gen00:0:a00~q\,
	combout => \cmpLab07|clock9PH|gen00:2:a00~0_combout\);

-- Location: FF_X45_Y52_N23
\cmpLab07|clock9PH|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9PH|gen00:2:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9PH|gen00:2:a00~q\);

-- Location: LCCOMB_X45_Y52_N28
\cmpLab07|clock9PH|gen00:3:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9PH|gen00:3:a00~0_combout\ = \cmpLab07|clock9PH|gen00:3:a00~q\ $ (((\cmpLab07|clock9PH|gen00:0:a00~q\ & (\cmpLab07|clock9PH|gen00:2:a00~q\ & \cmpLab07|clock9PH|gen00:1:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|clock9PH|gen00:0:a00~q\,
	datab => \cmpLab07|clock9PH|gen00:2:a00~q\,
	datac => \cmpLab07|clock9PH|gen00:3:a00~q\,
	datad => \cmpLab07|clock9PH|gen00:1:a00~q\,
	combout => \cmpLab07|clock9PH|gen00:3:a00~0_combout\);

-- Location: FF_X45_Y52_N29
\cmpLab07|clock9PH|gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9PH|gen00:3:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9PH|gen00:3:a00~q\);

-- Location: LCCOMB_X45_Y52_N24
\cmpLab07|clock9PH|mod09dff~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clock9PH|mod09dff~feeder_combout\ = \cmpLab07|clock9PH|gen00:3:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|clock9PH|gen00:3:a00~q\,
	combout => \cmpLab07|clock9PH|mod09dff~feeder_combout\);

-- Location: FF_X45_Y52_N25
\cmpLab07|clock9PH|mod09dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	d => \cmpLab07|clock9PH|mod09dff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|clock9PH|mod09dff~q\);

-- Location: CLKCTRL_G11
\cmpLab07|clock9PH|mod09dff~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cmpLab07|clock9PH|mod09dff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y53_N10
\cmpLab07|countAdd0|gen00:0:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:0:a00~0_combout\ = !\cmpLab07|countAdd0|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|countAdd0|gen00:0:a00~q\,
	combout => \cmpLab07|countAdd0|gen00:0:a00~0_combout\);

-- Location: LCCOMB_X62_Y53_N12
\cmpLab07|countAdd0|gen00:0:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:0:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:0:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:0:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:0:a00~feeder_combout\);

-- Location: FF_X62_Y53_N13
\cmpLab07|countAdd0|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:0:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:0:a00~q\);

-- Location: LCCOMB_X62_Y53_N28
\cmpLab07|countAdd0|gen00:1:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:1:a00~0_combout\ = \cmpLab07|countAdd0|gen00:0:a00~q\ $ (\cmpLab07|countAdd0|gen00:1:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|countAdd0|gen00:0:a00~q\,
	datad => \cmpLab07|countAdd0|gen00:1:a00~q\,
	combout => \cmpLab07|countAdd0|gen00:1:a00~0_combout\);

-- Location: LCCOMB_X62_Y53_N2
\cmpLab07|countAdd0|gen00:1:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:1:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:1:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:1:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:1:a00~feeder_combout\);

-- Location: FF_X62_Y53_N3
\cmpLab07|countAdd0|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:1:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:1:a00~q\);

-- Location: LCCOMB_X62_Y53_N18
\cmpLab07|countAdd0|gen00:2:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:2:a00~0_combout\ = \cmpLab07|countAdd0|gen00:2:a00~q\ $ (((\cmpLab07|countAdd0|gen00:0:a00~q\ & \cmpLab07|countAdd0|gen00:1:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|countAdd0|gen00:0:a00~q\,
	datab => \cmpLab07|countAdd0|gen00:2:a00~q\,
	datad => \cmpLab07|countAdd0|gen00:1:a00~q\,
	combout => \cmpLab07|countAdd0|gen00:2:a00~0_combout\);

-- Location: LCCOMB_X62_Y53_N0
\cmpLab07|countAdd0|gen00:2:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:2:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:2:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:2:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:2:a00~feeder_combout\);

-- Location: FF_X62_Y53_N1
\cmpLab07|countAdd0|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:2:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:2:a00~q\);

-- Location: LCCOMB_X62_Y53_N20
\cmpLab07|countAdd0|gen00:3:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:3:a00~0_combout\ = \cmpLab07|countAdd0|gen00:3:a00~q\ $ (((\cmpLab07|countAdd0|gen00:2:a00~q\ & (\cmpLab07|countAdd0|gen00:0:a00~q\ & \cmpLab07|countAdd0|gen00:1:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|countAdd0|gen00:3:a00~q\,
	datab => \cmpLab07|countAdd0|gen00:2:a00~q\,
	datac => \cmpLab07|countAdd0|gen00:0:a00~q\,
	datad => \cmpLab07|countAdd0|gen00:1:a00~q\,
	combout => \cmpLab07|countAdd0|gen00:3:a00~0_combout\);

-- Location: LCCOMB_X62_Y53_N30
\cmpLab07|countAdd0|gen00:3:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:3:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:3:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:3:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:3:a00~feeder_combout\);

-- Location: FF_X62_Y53_N31
\cmpLab07|countAdd0|gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:3:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:3:a00~q\);

-- Location: LCCOMB_X62_Y53_N16
\cmpLab07|countAdd0|v_cmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|v_cmp~0_combout\ = (\cmpLab07|countAdd0|gen00:1:a00~q\ & (\cmpLab07|countAdd0|gen00:2:a00~q\ & (\cmpLab07|countAdd0|gen00:3:a00~q\ & \cmpLab07|countAdd0|gen00:0:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|countAdd0|gen00:1:a00~q\,
	datab => \cmpLab07|countAdd0|gen00:2:a00~q\,
	datac => \cmpLab07|countAdd0|gen00:3:a00~q\,
	datad => \cmpLab07|countAdd0|gen00:0:a00~q\,
	combout => \cmpLab07|countAdd0|v_cmp~0_combout\);

-- Location: LCCOMB_X61_Y53_N12
\cmpLab07|countAdd0|gen00:4:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:4:a00~0_combout\ = \cmpLab07|countAdd0|gen00:4:a00~q\ $ (\cmpLab07|countAdd0|v_cmp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|countAdd0|gen00:4:a00~q\,
	datad => \cmpLab07|countAdd0|v_cmp~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:4:a00~0_combout\);

-- Location: LCCOMB_X61_Y53_N2
\cmpLab07|countAdd0|gen00:4:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:4:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:4:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:4:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:4:a00~feeder_combout\);

-- Location: FF_X61_Y53_N3
\cmpLab07|countAdd0|gen00:4:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:4:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:4:a00~q\);

-- Location: LCCOMB_X61_Y53_N28
\cmpLab07|countAdd0|gen00:5:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:5:a00~0_combout\ = \cmpLab07|countAdd0|gen00:5:a00~q\ $ (((\cmpLab07|countAdd0|gen00:4:a00~q\ & \cmpLab07|countAdd0|v_cmp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|countAdd0|gen00:4:a00~q\,
	datac => \cmpLab07|countAdd0|gen00:5:a00~q\,
	datad => \cmpLab07|countAdd0|v_cmp~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:5:a00~0_combout\);

-- Location: LCCOMB_X61_Y53_N14
\cmpLab07|countAdd0|gen00:5:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:5:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:5:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:5:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:5:a00~feeder_combout\);

-- Location: FF_X61_Y53_N15
\cmpLab07|countAdd0|gen00:5:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:5:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:5:a00~q\);

-- Location: LCCOMB_X61_Y53_N24
\cmpLab07|countAdd0|gen00:6:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:6:a00~0_combout\ = \cmpLab07|countAdd0|gen00:6:a00~q\ $ (((\cmpLab07|countAdd0|gen00:4:a00~q\ & (\cmpLab07|countAdd0|gen00:5:a00~q\ & \cmpLab07|countAdd0|v_cmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|countAdd0|gen00:6:a00~q\,
	datab => \cmpLab07|countAdd0|gen00:4:a00~q\,
	datac => \cmpLab07|countAdd0|gen00:5:a00~q\,
	datad => \cmpLab07|countAdd0|v_cmp~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:6:a00~0_combout\);

-- Location: LCCOMB_X61_Y53_N10
\cmpLab07|countAdd0|gen00:6:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:6:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:6:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:6:a00~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:6:a00~feeder_combout\);

-- Location: FF_X61_Y53_N11
\cmpLab07|countAdd0|gen00:6:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:6:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:6:a00~q\);

-- Location: LCCOMB_X61_Y53_N22
\cmpLab07|countAdd0|gen00:7:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:7:a00~0_combout\ = (!\cmpLab07|countAdd0|gen00:4:a00~q\) # (!\cmpLab07|countAdd0|gen00:5:a00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|countAdd0|gen00:5:a00~q\,
	datad => \cmpLab07|countAdd0|gen00:4:a00~q\,
	combout => \cmpLab07|countAdd0|gen00:7:a00~0_combout\);

-- Location: LCCOMB_X61_Y53_N16
\cmpLab07|countAdd0|gen00:7:a00~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:7:a00~1_combout\ = \cmpLab07|countAdd0|gen00:7:a00~q\ $ (((\cmpLab07|countAdd0|gen00:6:a00~q\ & (!\cmpLab07|countAdd0|gen00:7:a00~0_combout\ & \cmpLab07|countAdd0|v_cmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|countAdd0|gen00:6:a00~q\,
	datab => \cmpLab07|countAdd0|gen00:7:a00~q\,
	datac => \cmpLab07|countAdd0|gen00:7:a00~0_combout\,
	datad => \cmpLab07|countAdd0|v_cmp~0_combout\,
	combout => \cmpLab07|countAdd0|gen00:7:a00~1_combout\);

-- Location: LCCOMB_X61_Y53_N8
\cmpLab07|countAdd0|gen00:7:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|countAdd0|gen00:7:a00~feeder_combout\ = \cmpLab07|countAdd0|gen00:7:a00~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|countAdd0|gen00:7:a00~1_combout\,
	combout => \cmpLab07|countAdd0|gen00:7:a00~feeder_combout\);

-- Location: FF_X61_Y53_N9
\cmpLab07|countAdd0|gen00:7:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clock9PH|mod09dff~clkctrl_outclk\,
	d => \cmpLab07|countAdd0|gen00:7:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|countAdd0|gen00:7:a00~q\);

-- Location: LCCOMB_X45_Y42_N24
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

-- Location: M9K_X53_Y50_N0
\cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0034000CF00280007F002C000EF0018000F0001400090000C0004F00200002F00040000F0034400CE00284007E002C400EE0018400F1001440091000C4004E00",
	mem_init1 => X"204002E00044000E0034800CD00288007D002C800ED0018800F2001480092000C8004D00208002D00048000D0034C00CC0028C007C002CC00EC0018C00F30014C0093000CC004C0020C002C0004C000C0035000CB00290007B002D000EB0019000F4001500094000D0004B00210002B00050000B0035400CA00294007A002D400EA0019400F5001540095000D4004A00214002A00054000A0035800C9002980079002D800E90019800F6001580096000D800490021800290005800090035C00C80029C0078002DC00E80019C00F70015C0097000DC00480021C00280005C00080036000C7002A00077002E000E7001A000F8001600098000E000470022000270",
	mem_init0 => X"006000070036400C6002A40076002E400E6001A400F9001640099000E400460022400260006400060036800C5002A80075002E800E5001A800FA00168009A000E800450022800250006800050036C00C4002AC0074002EC00E4001AC00FB0016C009B000EC00440022C00240006C00040037000C3002B00073002F000E3001B000FC00170009C000F000430023000230007000030037400C2002B40072002F400E2001B400FD00174009D000F400420023400220007400020037800C1002B80071002F800E1001B800FE00178009E000F800410023800210007800010037C00C0002BC0070002FC00E0001BC00FF0017C009F000FC00400023C00200007C0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_256_8.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lab_07varmod9:cmpLab07|rom01:romcomp|altsyncram:altsyncram_component|altsyncram_1sp3:auto_generated|ALTSYNCRAM",
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
	clk0 => \cmpLab07|clk0~clkctrl_outclk\,
	clr0 => \ALT_INV_PB1~input_o\,
	portaaddr => \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \cmpLab07|romcomp|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y50_N30
\cmpLab07|PISO00|DM_s~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s~7_combout\ = (\cmpLab07|clock9|mod09dff~q\ & \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(0),
	combout => \cmpLab07|PISO00|DM_s~7_combout\);

-- Location: FF_X54_Y50_N31
\cmpLab07|PISO00|gen00:0:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s~7_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:0:aa01~q\);

-- Location: LCCOMB_X54_Y50_N0
\cmpLab07|PISO00|DM_s[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[1]~6_combout\ = (\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(1)))) # (!\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|PISO00|gen00:0:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datac => \cmpLab07|PISO00|gen00:0:aa01~q\,
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(1),
	combout => \cmpLab07|PISO00|DM_s[1]~6_combout\);

-- Location: FF_X54_Y50_N1
\cmpLab07|PISO00|gen00:1:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[1]~6_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:1:aa01~q\);

-- Location: LCCOMB_X54_Y50_N6
\cmpLab07|PISO00|DM_s[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[2]~5_combout\ = (\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(2))) # (!\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|PISO00|gen00:1:aa01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datac => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(2),
	datad => \cmpLab07|PISO00|gen00:1:aa01~q\,
	combout => \cmpLab07|PISO00|DM_s[2]~5_combout\);

-- Location: FF_X54_Y50_N7
\cmpLab07|PISO00|gen00:2:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[2]~5_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:2:aa01~q\);

-- Location: LCCOMB_X54_Y50_N8
\cmpLab07|PISO00|DM_s[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[3]~4_combout\ = (\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(3)))) # (!\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|PISO00|gen00:2:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PISO00|gen00:2:aa01~q\,
	datac => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(3),
	datad => \cmpLab07|clock9|mod09dff~q\,
	combout => \cmpLab07|PISO00|DM_s[3]~4_combout\);

-- Location: FF_X54_Y50_N9
\cmpLab07|PISO00|gen00:3:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[3]~4_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:3:aa01~q\);

-- Location: LCCOMB_X54_Y50_N14
\cmpLab07|PISO00|DM_s[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[4]~3_combout\ = (\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(4)))) # (!\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|PISO00|gen00:3:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datac => \cmpLab07|PISO00|gen00:3:aa01~q\,
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(4),
	combout => \cmpLab07|PISO00|DM_s[4]~3_combout\);

-- Location: FF_X54_Y50_N15
\cmpLab07|PISO00|gen00:4:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[4]~3_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:4:aa01~q\);

-- Location: LCCOMB_X54_Y50_N16
\cmpLab07|PISO00|DM_s[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[5]~2_combout\ = (\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(5)))) # (!\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|PISO00|gen00:4:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datac => \cmpLab07|PISO00|gen00:4:aa01~q\,
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(5),
	combout => \cmpLab07|PISO00|DM_s[5]~2_combout\);

-- Location: FF_X54_Y50_N17
\cmpLab07|PISO00|gen00:5:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[5]~2_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:5:aa01~q\);

-- Location: LCCOMB_X54_Y50_N4
\cmpLab07|PISO00|DM_s[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[6]~1_combout\ = (\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(6)))) # (!\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|PISO00|gen00:5:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datac => \cmpLab07|PISO00|gen00:5:aa01~q\,
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(6),
	combout => \cmpLab07|PISO00|DM_s[6]~1_combout\);

-- Location: FF_X54_Y50_N5
\cmpLab07|PISO00|gen00:6:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[6]~1_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:6:aa01~q\);

-- Location: LCCOMB_X54_Y50_N10
\cmpLab07|PISO00|DM_s[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PISO00|DM_s[7]~0_combout\ = (\cmpLab07|clock9|mod09dff~q\ & ((\cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(7)))) # (!\cmpLab07|clock9|mod09dff~q\ & (\cmpLab07|PISO00|gen00:6:aa01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|clock9|mod09dff~q\,
	datac => \cmpLab07|PISO00|gen00:6:aa01~q\,
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(7),
	combout => \cmpLab07|PISO00|DM_s[7]~0_combout\);

-- Location: FF_X54_Y50_N11
\cmpLab07|PISO00|gen00:7:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PISO00|DM_s[7]~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PISO00|gen00:7:aa01~q\);

-- Location: LCCOMB_X55_Y50_N18
\cmpLab07|seqdet|D_s[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|seqdet|D_s[0]~0_combout\ = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & (((!\cmpLab07|seqdet|gen00:0:ffi0~q\ & \cmpLab07|seqdet|gen00:2:ffi0~q\)) # (!\cmpLab07|PISO00|gen00:7:aa01~q\))) # (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & 
-- (!\cmpLab07|seqdet|gen00:0:ffi0~q\ & ((!\cmpLab07|PISO00|gen00:7:aa01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datac => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datad => \cmpLab07|PISO00|gen00:7:aa01~q\,
	combout => \cmpLab07|seqdet|D_s[0]~0_combout\);

-- Location: LCCOMB_X55_Y50_N16
\cmpLab07|seqdet|gen00:0:ffi0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|seqdet|gen00:0:ffi0~feeder_combout\ = \cmpLab07|seqdet|D_s[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|seqdet|D_s[0]~0_combout\,
	combout => \cmpLab07|seqdet|gen00:0:ffi0~feeder_combout\);

-- Location: LCCOMB_X55_Y50_N0
\cmpLab07|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|comb~0_combout\ = ((\cmpLab07|clock9PH|mod09dff~q\ & !\cmpLab07|clk0~combout\)) # (!\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \cmpLab07|clock9PH|mod09dff~q\,
	datad => \cmpLab07|clk0~combout\,
	combout => \cmpLab07|comb~0_combout\);

-- Location: FF_X55_Y50_N17
\cmpLab07|seqdet|gen00:0:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~combout\,
	d => \cmpLab07|seqdet|gen00:0:ffi0~feeder_combout\,
	clrn => \cmpLab07|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|seqdet|gen00:0:ffi0~q\);

-- Location: LCCOMB_X55_Y50_N10
\cmpLab07|seqdet|D_s[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|seqdet|D_s[1]~1_combout\ = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & ((\cmpLab07|seqdet|gen00:2:ffi0~q\ & (!\cmpLab07|seqdet|gen00:0:ffi0~q\)) # (!\cmpLab07|seqdet|gen00:2:ffi0~q\ & ((!\cmpLab07|PISO00|gen00:7:aa01~q\))))) # 
-- (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|seqdet|gen00:0:ffi0~q\ & ((!\cmpLab07|PISO00|gen00:7:aa01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datac => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datad => \cmpLab07|PISO00|gen00:7:aa01~q\,
	combout => \cmpLab07|seqdet|D_s[1]~1_combout\);

-- Location: FF_X55_Y50_N11
\cmpLab07|seqdet|gen00:1:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~combout\,
	d => \cmpLab07|seqdet|D_s[1]~1_combout\,
	clrn => \cmpLab07|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|seqdet|gen00:1:ffi0~q\);

-- Location: LCCOMB_X55_Y50_N14
\cmpLab07|seqdet|D_s[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|seqdet|D_s\(2) = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|PISO00|gen00:7:aa01~q\ & (\cmpLab07|seqdet|gen00:0:ffi0~q\ $ (\cmpLab07|seqdet|gen00:2:ffi0~q\)))) # (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & (((\cmpLab07|seqdet|gen00:2:ffi0~q\ & 
-- !\cmpLab07|PISO00|gen00:7:aa01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datac => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datad => \cmpLab07|PISO00|gen00:7:aa01~q\,
	combout => \cmpLab07|seqdet|D_s\(2));

-- Location: FF_X55_Y50_N15
\cmpLab07|seqdet|gen00:2:ffi0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~combout\,
	d => \cmpLab07|seqdet|D_s\(2),
	clrn => \cmpLab07|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|seqdet|gen00:2:ffi0~q\);

-- Location: FF_X56_Y50_N21
\cmpLab07|PIPOstt0|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	asdata => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOstt0|gen00:0:aa00~q\);

-- Location: LCCOMB_X56_Y50_N20
\cmpLab07|SeqDetected~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|SeqDetected~0_combout\ = (\cmpLab07|seqdet|gen00:2:ffi0~q\ & (\cmpLab07|seqdet|gen00:0:ffi0~q\ & (!\cmpLab07|PIPOstt0|gen00:0:aa00~q\ & \cmpLab07|seqdet|gen00:1:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datac => \cmpLab07|PIPOstt0|gen00:0:aa00~q\,
	datad => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	combout => \cmpLab07|SeqDetected~0_combout\);

-- Location: FF_X56_Y50_N31
\cmpLab07|PIPOstt0|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~combout\,
	asdata => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOstt0|gen00:2:aa00~q\);

-- Location: LCCOMB_X56_Y50_N10
\cmpLab07|PIPOstt0|gen00:1:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PIPOstt0|gen00:1:aa00~feeder_combout\ = \cmpLab07|seqdet|gen00:1:ffi0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	combout => \cmpLab07|PIPOstt0|gen00:1:aa00~feeder_combout\);

-- Location: FF_X56_Y50_N11
\cmpLab07|PIPOstt0|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~combout\,
	d => \cmpLab07|PIPOstt0|gen00:1:aa00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOstt0|gen00:1:aa00~q\);

-- Location: LCCOMB_X56_Y50_N30
\cmpLab07|SeqDetected\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|SeqDetected~combout\ = LCELL((\cmpLab07|SeqDetected~0_combout\ & (\cmpLab07|PIPOstt0|gen00:2:aa00~q\ & \cmpLab07|PIPOstt0|gen00:1:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|SeqDetected~0_combout\,
	datac => \cmpLab07|PIPOstt0|gen00:2:aa00~q\,
	datad => \cmpLab07|PIPOstt0|gen00:1:aa00~q\,
	combout => \cmpLab07|SeqDetected~combout\);

-- Location: LCCOMB_X55_Y50_N30
\cmpLab07|pseSystem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|pseSystem~0_combout\ = !\cmpLab07|pseSystem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|pseSystem~q\,
	combout => \cmpLab07|pseSystem~0_combout\);

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

-- Location: LCCOMB_X56_Y50_N22
\cmpLab07|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|comb~1_combout\ = (!\PB0~input_o\) # (!\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB1~input_o\,
	datad => \PB0~input_o\,
	combout => \cmpLab07|comb~1_combout\);

-- Location: FF_X55_Y50_N31
\cmpLab07|pseSystem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|SeqDetected~combout\,
	d => \cmpLab07|pseSystem~0_combout\,
	clrn => \cmpLab07|ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|pseSystem~q\);

-- Location: IOIBUF_X78_Y29_N22
\clk_ref~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ref,
	o => \clk_ref~input_o\);

-- Location: CLKCTRL_G9
\clk_ref~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X63_Y43_N0
\clkref8Hz|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~0_combout\ = \clkref8Hz|count\(0) $ (GND)
-- \clkref8Hz|Add0~1\ = CARRY(!\clkref8Hz|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(0),
	datad => VCC,
	combout => \clkref8Hz|Add0~0_combout\,
	cout => \clkref8Hz|Add0~1\);

-- Location: LCCOMB_X62_Y40_N20
\clkref8Hz|count[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count[0]~8_combout\ = !\clkref8Hz|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Add0~0_combout\,
	combout => \clkref8Hz|count[0]~8_combout\);

-- Location: FF_X62_Y40_N21
\clkref8Hz|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(0));

-- Location: LCCOMB_X61_Y40_N2
\clkref80Hz|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~0_combout\ = (\clkref8Hz|count\(0) & (\clkref80Hz|count\(1) & VCC)) # (!\clkref8Hz|count\(0) & (\clkref80Hz|count\(1) $ (VCC)))
-- \clkref80Hz|Add0~1\ = CARRY((!\clkref8Hz|count\(0) & \clkref80Hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(0),
	datab => \clkref80Hz|count\(1),
	datad => VCC,
	combout => \clkref80Hz|Add0~0_combout\,
	cout => \clkref80Hz|Add0~1\);

-- Location: LCCOMB_X61_Y40_N0
\clkref80Hz|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~0_combout\ = (\clkref80Hz|Add0~0_combout\ & !\clkref80Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|Add0~0_combout\,
	datad => \clkref80Hz|Equal0~10_combout\,
	combout => \clkref80Hz|count~0_combout\);

-- Location: FF_X61_Y40_N1
\clkref80Hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(1));

-- Location: LCCOMB_X61_Y40_N4
\clkref80Hz|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~2_combout\ = (\clkref80Hz|count\(2) & (!\clkref80Hz|Add0~1\)) # (!\clkref80Hz|count\(2) & ((\clkref80Hz|Add0~1\) # (GND)))
-- \clkref80Hz|Add0~3\ = CARRY((!\clkref80Hz|Add0~1\) # (!\clkref80Hz|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(2),
	datad => VCC,
	cin => \clkref80Hz|Add0~1\,
	combout => \clkref80Hz|Add0~2_combout\,
	cout => \clkref80Hz|Add0~3\);

-- Location: FF_X61_Y40_N5
\clkref80Hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(2));

-- Location: LCCOMB_X61_Y40_N6
\clkref80Hz|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~4_combout\ = (\clkref80Hz|count\(3) & (\clkref80Hz|Add0~3\ $ (GND))) # (!\clkref80Hz|count\(3) & (!\clkref80Hz|Add0~3\ & VCC))
-- \clkref80Hz|Add0~5\ = CARRY((\clkref80Hz|count\(3) & !\clkref80Hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(3),
	datad => VCC,
	cin => \clkref80Hz|Add0~3\,
	combout => \clkref80Hz|Add0~4_combout\,
	cout => \clkref80Hz|Add0~5\);

-- Location: FF_X61_Y40_N7
\clkref80Hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(3));

-- Location: LCCOMB_X61_Y40_N8
\clkref80Hz|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~6_combout\ = (\clkref80Hz|count\(4) & (!\clkref80Hz|Add0~5\)) # (!\clkref80Hz|count\(4) & ((\clkref80Hz|Add0~5\) # (GND)))
-- \clkref80Hz|Add0~7\ = CARRY((!\clkref80Hz|Add0~5\) # (!\clkref80Hz|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(4),
	datad => VCC,
	cin => \clkref80Hz|Add0~5\,
	combout => \clkref80Hz|Add0~6_combout\,
	cout => \clkref80Hz|Add0~7\);

-- Location: LCCOMB_X60_Y40_N20
\clkref80Hz|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~1_combout\ = (\clkref80Hz|Add0~6_combout\ & !\clkref80Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|Add0~6_combout\,
	datad => \clkref80Hz|Equal0~10_combout\,
	combout => \clkref80Hz|count~1_combout\);

-- Location: FF_X60_Y40_N21
\clkref80Hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(4));

-- Location: LCCOMB_X61_Y40_N10
\clkref80Hz|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~8_combout\ = (\clkref80Hz|count\(5) & (\clkref80Hz|Add0~7\ $ (GND))) # (!\clkref80Hz|count\(5) & (!\clkref80Hz|Add0~7\ & VCC))
-- \clkref80Hz|Add0~9\ = CARRY((\clkref80Hz|count\(5) & !\clkref80Hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(5),
	datad => VCC,
	cin => \clkref80Hz|Add0~7\,
	combout => \clkref80Hz|Add0~8_combout\,
	cout => \clkref80Hz|Add0~9\);

-- Location: FF_X61_Y40_N11
\clkref80Hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(5));

-- Location: LCCOMB_X61_Y40_N12
\clkref80Hz|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~10_combout\ = (\clkref80Hz|count\(6) & (!\clkref80Hz|Add0~9\)) # (!\clkref80Hz|count\(6) & ((\clkref80Hz|Add0~9\) # (GND)))
-- \clkref80Hz|Add0~11\ = CARRY((!\clkref80Hz|Add0~9\) # (!\clkref80Hz|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(6),
	datad => VCC,
	cin => \clkref80Hz|Add0~9\,
	combout => \clkref80Hz|Add0~10_combout\,
	cout => \clkref80Hz|Add0~11\);

-- Location: FF_X61_Y40_N13
\clkref80Hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(6));

-- Location: LCCOMB_X61_Y40_N14
\clkref80Hz|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~12_combout\ = (\clkref80Hz|count\(7) & (\clkref80Hz|Add0~11\ $ (GND))) # (!\clkref80Hz|count\(7) & (!\clkref80Hz|Add0~11\ & VCC))
-- \clkref80Hz|Add0~13\ = CARRY((\clkref80Hz|count\(7) & !\clkref80Hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(7),
	datad => VCC,
	cin => \clkref80Hz|Add0~11\,
	combout => \clkref80Hz|Add0~12_combout\,
	cout => \clkref80Hz|Add0~13\);

-- Location: FF_X61_Y40_N15
\clkref80Hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(7));

-- Location: LCCOMB_X61_Y40_N16
\clkref80Hz|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~14_combout\ = (\clkref80Hz|count\(8) & (!\clkref80Hz|Add0~13\)) # (!\clkref80Hz|count\(8) & ((\clkref80Hz|Add0~13\) # (GND)))
-- \clkref80Hz|Add0~15\ = CARRY((!\clkref80Hz|Add0~13\) # (!\clkref80Hz|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(8),
	datad => VCC,
	cin => \clkref80Hz|Add0~13\,
	combout => \clkref80Hz|Add0~14_combout\,
	cout => \clkref80Hz|Add0~15\);

-- Location: FF_X61_Y40_N17
\clkref80Hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(8));

-- Location: LCCOMB_X61_Y40_N18
\clkref80Hz|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~16_combout\ = (\clkref80Hz|count\(9) & (\clkref80Hz|Add0~15\ $ (GND))) # (!\clkref80Hz|count\(9) & (!\clkref80Hz|Add0~15\ & VCC))
-- \clkref80Hz|Add0~17\ = CARRY((\clkref80Hz|count\(9) & !\clkref80Hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(9),
	datad => VCC,
	cin => \clkref80Hz|Add0~15\,
	combout => \clkref80Hz|Add0~16_combout\,
	cout => \clkref80Hz|Add0~17\);

-- Location: LCCOMB_X60_Y40_N22
\clkref80Hz|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~2_combout\ = (!\clkref80Hz|Equal0~10_combout\ & \clkref80Hz|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|Equal0~10_combout\,
	datad => \clkref80Hz|Add0~16_combout\,
	combout => \clkref80Hz|count~2_combout\);

-- Location: FF_X60_Y40_N23
\clkref80Hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(9));

-- Location: LCCOMB_X61_Y40_N20
\clkref80Hz|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~18_combout\ = (\clkref80Hz|count\(10) & (!\clkref80Hz|Add0~17\)) # (!\clkref80Hz|count\(10) & ((\clkref80Hz|Add0~17\) # (GND)))
-- \clkref80Hz|Add0~19\ = CARRY((!\clkref80Hz|Add0~17\) # (!\clkref80Hz|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(10),
	datad => VCC,
	cin => \clkref80Hz|Add0~17\,
	combout => \clkref80Hz|Add0~18_combout\,
	cout => \clkref80Hz|Add0~19\);

-- Location: FF_X61_Y40_N21
\clkref80Hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(10));

-- Location: LCCOMB_X61_Y40_N22
\clkref80Hz|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~20_combout\ = (\clkref80Hz|count\(11) & (\clkref80Hz|Add0~19\ $ (GND))) # (!\clkref80Hz|count\(11) & (!\clkref80Hz|Add0~19\ & VCC))
-- \clkref80Hz|Add0~21\ = CARRY((\clkref80Hz|count\(11) & !\clkref80Hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(11),
	datad => VCC,
	cin => \clkref80Hz|Add0~19\,
	combout => \clkref80Hz|Add0~20_combout\,
	cout => \clkref80Hz|Add0~21\);

-- Location: LCCOMB_X60_Y40_N30
\clkref80Hz|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~3_combout\ = (!\clkref80Hz|Equal0~10_combout\ & \clkref80Hz|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|Equal0~10_combout\,
	datad => \clkref80Hz|Add0~20_combout\,
	combout => \clkref80Hz|count~3_combout\);

-- Location: FF_X60_Y40_N31
\clkref80Hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(11));

-- Location: LCCOMB_X61_Y40_N24
\clkref80Hz|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~22_combout\ = (\clkref80Hz|count\(12) & (!\clkref80Hz|Add0~21\)) # (!\clkref80Hz|count\(12) & ((\clkref80Hz|Add0~21\) # (GND)))
-- \clkref80Hz|Add0~23\ = CARRY((!\clkref80Hz|Add0~21\) # (!\clkref80Hz|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(12),
	datad => VCC,
	cin => \clkref80Hz|Add0~21\,
	combout => \clkref80Hz|Add0~22_combout\,
	cout => \clkref80Hz|Add0~23\);

-- Location: LCCOMB_X60_Y40_N16
\clkref80Hz|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~4_combout\ = (\clkref80Hz|Add0~22_combout\ & !\clkref80Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|Add0~22_combout\,
	datad => \clkref80Hz|Equal0~10_combout\,
	combout => \clkref80Hz|count~4_combout\);

-- Location: FF_X60_Y40_N17
\clkref80Hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(12));

-- Location: LCCOMB_X61_Y40_N26
\clkref80Hz|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~24_combout\ = (\clkref80Hz|count\(13) & (\clkref80Hz|Add0~23\ $ (GND))) # (!\clkref80Hz|count\(13) & (!\clkref80Hz|Add0~23\ & VCC))
-- \clkref80Hz|Add0~25\ = CARRY((\clkref80Hz|count\(13) & !\clkref80Hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(13),
	datad => VCC,
	cin => \clkref80Hz|Add0~23\,
	combout => \clkref80Hz|Add0~24_combout\,
	cout => \clkref80Hz|Add0~25\);

-- Location: LCCOMB_X60_Y40_N8
\clkref80Hz|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~5_combout\ = (!\clkref80Hz|Equal0~10_combout\ & \clkref80Hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|Equal0~10_combout\,
	datad => \clkref80Hz|Add0~24_combout\,
	combout => \clkref80Hz|count~5_combout\);

-- Location: FF_X60_Y40_N9
\clkref80Hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(13));

-- Location: LCCOMB_X61_Y40_N28
\clkref80Hz|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~26_combout\ = (\clkref80Hz|count\(14) & (!\clkref80Hz|Add0~25\)) # (!\clkref80Hz|count\(14) & ((\clkref80Hz|Add0~25\) # (GND)))
-- \clkref80Hz|Add0~27\ = CARRY((!\clkref80Hz|Add0~25\) # (!\clkref80Hz|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(14),
	datad => VCC,
	cin => \clkref80Hz|Add0~25\,
	combout => \clkref80Hz|Add0~26_combout\,
	cout => \clkref80Hz|Add0~27\);

-- Location: LCCOMB_X60_Y40_N6
\clkref80Hz|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|count~6_combout\ = (!\clkref80Hz|Equal0~10_combout\ & \clkref80Hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|Equal0~10_combout\,
	datad => \clkref80Hz|Add0~26_combout\,
	combout => \clkref80Hz|count~6_combout\);

-- Location: FF_X60_Y40_N7
\clkref80Hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(14));

-- Location: LCCOMB_X61_Y40_N30
\clkref80Hz|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~28_combout\ = (\clkref80Hz|count\(15) & (\clkref80Hz|Add0~27\ $ (GND))) # (!\clkref80Hz|count\(15) & (!\clkref80Hz|Add0~27\ & VCC))
-- \clkref80Hz|Add0~29\ = CARRY((\clkref80Hz|count\(15) & !\clkref80Hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(15),
	datad => VCC,
	cin => \clkref80Hz|Add0~27\,
	combout => \clkref80Hz|Add0~28_combout\,
	cout => \clkref80Hz|Add0~29\);

-- Location: FF_X61_Y40_N31
\clkref80Hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(15));

-- Location: LCCOMB_X60_Y40_N26
\clkref80Hz|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~3_combout\ = (\clkref80Hz|count\(14) & (\clkref80Hz|count\(13) & (!\clkref80Hz|count\(15) & \clkref80Hz|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(14),
	datab => \clkref80Hz|count\(13),
	datac => \clkref80Hz|count\(15),
	datad => \clkref80Hz|count\(12),
	combout => \clkref80Hz|Equal0~3_combout\);

-- Location: LCCOMB_X60_Y40_N18
\clkref80Hz|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~0_combout\ = (!\clkref80Hz|count\(2) & (\clkref80Hz|count\(1) & (\clkref8Hz|count\(0) & !\clkref80Hz|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(2),
	datab => \clkref80Hz|count\(1),
	datac => \clkref8Hz|count\(0),
	datad => \clkref80Hz|count\(3),
	combout => \clkref80Hz|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y40_N4
\clkref80Hz|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~1_combout\ = (!\clkref80Hz|count\(7) & (!\clkref80Hz|count\(6) & (!\clkref80Hz|count\(5) & \clkref80Hz|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(7),
	datab => \clkref80Hz|count\(6),
	datac => \clkref80Hz|count\(5),
	datad => \clkref80Hz|count\(4),
	combout => \clkref80Hz|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y40_N28
\clkref80Hz|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~2_combout\ = (\clkref80Hz|count\(9) & (!\clkref80Hz|count\(8) & (\clkref80Hz|count\(11) & !\clkref80Hz|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(9),
	datab => \clkref80Hz|count\(8),
	datac => \clkref80Hz|count\(11),
	datad => \clkref80Hz|count\(10),
	combout => \clkref80Hz|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y40_N12
\clkref80Hz|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~4_combout\ = (\clkref80Hz|Equal0~3_combout\ & (\clkref80Hz|Equal0~0_combout\ & (\clkref80Hz|Equal0~1_combout\ & \clkref80Hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|Equal0~3_combout\,
	datab => \clkref80Hz|Equal0~0_combout\,
	datac => \clkref80Hz|Equal0~1_combout\,
	datad => \clkref80Hz|Equal0~2_combout\,
	combout => \clkref80Hz|Equal0~4_combout\);

-- Location: LCCOMB_X61_Y39_N0
\clkref80Hz|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~30_combout\ = (\clkref80Hz|count\(16) & (!\clkref80Hz|Add0~29\)) # (!\clkref80Hz|count\(16) & ((\clkref80Hz|Add0~29\) # (GND)))
-- \clkref80Hz|Add0~31\ = CARRY((!\clkref80Hz|Add0~29\) # (!\clkref80Hz|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(16),
	datad => VCC,
	cin => \clkref80Hz|Add0~29\,
	combout => \clkref80Hz|Add0~30_combout\,
	cout => \clkref80Hz|Add0~31\);

-- Location: FF_X61_Y39_N1
\clkref80Hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(16));

-- Location: LCCOMB_X61_Y39_N2
\clkref80Hz|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~32_combout\ = (\clkref80Hz|count\(17) & (\clkref80Hz|Add0~31\ $ (GND))) # (!\clkref80Hz|count\(17) & (!\clkref80Hz|Add0~31\ & VCC))
-- \clkref80Hz|Add0~33\ = CARRY((\clkref80Hz|count\(17) & !\clkref80Hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(17),
	datad => VCC,
	cin => \clkref80Hz|Add0~31\,
	combout => \clkref80Hz|Add0~32_combout\,
	cout => \clkref80Hz|Add0~33\);

-- Location: FF_X61_Y39_N3
\clkref80Hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(17));

-- Location: LCCOMB_X61_Y39_N4
\clkref80Hz|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~34_combout\ = (\clkref80Hz|count\(18) & (!\clkref80Hz|Add0~33\)) # (!\clkref80Hz|count\(18) & ((\clkref80Hz|Add0~33\) # (GND)))
-- \clkref80Hz|Add0~35\ = CARRY((!\clkref80Hz|Add0~33\) # (!\clkref80Hz|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(18),
	datad => VCC,
	cin => \clkref80Hz|Add0~33\,
	combout => \clkref80Hz|Add0~34_combout\,
	cout => \clkref80Hz|Add0~35\);

-- Location: FF_X61_Y39_N5
\clkref80Hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(18));

-- Location: LCCOMB_X61_Y39_N6
\clkref80Hz|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~36_combout\ = (\clkref80Hz|count\(19) & (\clkref80Hz|Add0~35\ $ (GND))) # (!\clkref80Hz|count\(19) & (!\clkref80Hz|Add0~35\ & VCC))
-- \clkref80Hz|Add0~37\ = CARRY((\clkref80Hz|count\(19) & !\clkref80Hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(19),
	datad => VCC,
	cin => \clkref80Hz|Add0~35\,
	combout => \clkref80Hz|Add0~36_combout\,
	cout => \clkref80Hz|Add0~37\);

-- Location: FF_X61_Y39_N7
\clkref80Hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(19));

-- Location: LCCOMB_X60_Y39_N16
\clkref80Hz|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~5_combout\ = (!\clkref80Hz|count\(18) & (!\clkref80Hz|count\(19) & (!\clkref80Hz|count\(16) & !\clkref80Hz|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(18),
	datab => \clkref80Hz|count\(19),
	datac => \clkref80Hz|count\(16),
	datad => \clkref80Hz|count\(17),
	combout => \clkref80Hz|Equal0~5_combout\);

-- Location: LCCOMB_X61_Y39_N8
\clkref80Hz|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~38_combout\ = (\clkref80Hz|count\(20) & (!\clkref80Hz|Add0~37\)) # (!\clkref80Hz|count\(20) & ((\clkref80Hz|Add0~37\) # (GND)))
-- \clkref80Hz|Add0~39\ = CARRY((!\clkref80Hz|Add0~37\) # (!\clkref80Hz|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(20),
	datad => VCC,
	cin => \clkref80Hz|Add0~37\,
	combout => \clkref80Hz|Add0~38_combout\,
	cout => \clkref80Hz|Add0~39\);

-- Location: FF_X61_Y39_N9
\clkref80Hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(20));

-- Location: LCCOMB_X61_Y39_N10
\clkref80Hz|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~40_combout\ = (\clkref80Hz|count\(21) & (\clkref80Hz|Add0~39\ $ (GND))) # (!\clkref80Hz|count\(21) & (!\clkref80Hz|Add0~39\ & VCC))
-- \clkref80Hz|Add0~41\ = CARRY((\clkref80Hz|count\(21) & !\clkref80Hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(21),
	datad => VCC,
	cin => \clkref80Hz|Add0~39\,
	combout => \clkref80Hz|Add0~40_combout\,
	cout => \clkref80Hz|Add0~41\);

-- Location: FF_X61_Y39_N11
\clkref80Hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(21));

-- Location: LCCOMB_X61_Y39_N12
\clkref80Hz|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~42_combout\ = (\clkref80Hz|count\(22) & (!\clkref80Hz|Add0~41\)) # (!\clkref80Hz|count\(22) & ((\clkref80Hz|Add0~41\) # (GND)))
-- \clkref80Hz|Add0~43\ = CARRY((!\clkref80Hz|Add0~41\) # (!\clkref80Hz|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(22),
	datad => VCC,
	cin => \clkref80Hz|Add0~41\,
	combout => \clkref80Hz|Add0~42_combout\,
	cout => \clkref80Hz|Add0~43\);

-- Location: FF_X61_Y39_N13
\clkref80Hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(22));

-- Location: LCCOMB_X61_Y39_N14
\clkref80Hz|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~44_combout\ = (\clkref80Hz|count\(23) & (\clkref80Hz|Add0~43\ $ (GND))) # (!\clkref80Hz|count\(23) & (!\clkref80Hz|Add0~43\ & VCC))
-- \clkref80Hz|Add0~45\ = CARRY((\clkref80Hz|count\(23) & !\clkref80Hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(23),
	datad => VCC,
	cin => \clkref80Hz|Add0~43\,
	combout => \clkref80Hz|Add0~44_combout\,
	cout => \clkref80Hz|Add0~45\);

-- Location: FF_X61_Y39_N15
\clkref80Hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(23));

-- Location: LCCOMB_X60_Y39_N22
\clkref80Hz|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~6_combout\ = (!\clkref80Hz|count\(22) & (!\clkref80Hz|count\(23) & (!\clkref80Hz|count\(20) & !\clkref80Hz|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(22),
	datab => \clkref80Hz|count\(23),
	datac => \clkref80Hz|count\(20),
	datad => \clkref80Hz|count\(21),
	combout => \clkref80Hz|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y39_N16
\clkref80Hz|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~46_combout\ = (\clkref80Hz|count\(24) & (!\clkref80Hz|Add0~45\)) # (!\clkref80Hz|count\(24) & ((\clkref80Hz|Add0~45\) # (GND)))
-- \clkref80Hz|Add0~47\ = CARRY((!\clkref80Hz|Add0~45\) # (!\clkref80Hz|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(24),
	datad => VCC,
	cin => \clkref80Hz|Add0~45\,
	combout => \clkref80Hz|Add0~46_combout\,
	cout => \clkref80Hz|Add0~47\);

-- Location: FF_X61_Y39_N17
\clkref80Hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(24));

-- Location: LCCOMB_X61_Y39_N18
\clkref80Hz|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~48_combout\ = (\clkref80Hz|count\(25) & (\clkref80Hz|Add0~47\ $ (GND))) # (!\clkref80Hz|count\(25) & (!\clkref80Hz|Add0~47\ & VCC))
-- \clkref80Hz|Add0~49\ = CARRY((\clkref80Hz|count\(25) & !\clkref80Hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(25),
	datad => VCC,
	cin => \clkref80Hz|Add0~47\,
	combout => \clkref80Hz|Add0~48_combout\,
	cout => \clkref80Hz|Add0~49\);

-- Location: FF_X61_Y39_N19
\clkref80Hz|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(25));

-- Location: LCCOMB_X61_Y39_N20
\clkref80Hz|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~50_combout\ = (\clkref80Hz|count\(26) & (!\clkref80Hz|Add0~49\)) # (!\clkref80Hz|count\(26) & ((\clkref80Hz|Add0~49\) # (GND)))
-- \clkref80Hz|Add0~51\ = CARRY((!\clkref80Hz|Add0~49\) # (!\clkref80Hz|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(26),
	datad => VCC,
	cin => \clkref80Hz|Add0~49\,
	combout => \clkref80Hz|Add0~50_combout\,
	cout => \clkref80Hz|Add0~51\);

-- Location: FF_X61_Y39_N21
\clkref80Hz|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(26));

-- Location: LCCOMB_X61_Y39_N22
\clkref80Hz|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~52_combout\ = (\clkref80Hz|count\(27) & (\clkref80Hz|Add0~51\ $ (GND))) # (!\clkref80Hz|count\(27) & (!\clkref80Hz|Add0~51\ & VCC))
-- \clkref80Hz|Add0~53\ = CARRY((\clkref80Hz|count\(27) & !\clkref80Hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(27),
	datad => VCC,
	cin => \clkref80Hz|Add0~51\,
	combout => \clkref80Hz|Add0~52_combout\,
	cout => \clkref80Hz|Add0~53\);

-- Location: FF_X61_Y39_N23
\clkref80Hz|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(27));

-- Location: LCCOMB_X60_Y39_N0
\clkref80Hz|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~7_combout\ = (!\clkref80Hz|count\(26) & (!\clkref80Hz|count\(25) & (!\clkref80Hz|count\(27) & !\clkref80Hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(26),
	datab => \clkref80Hz|count\(25),
	datac => \clkref80Hz|count\(27),
	datad => \clkref80Hz|count\(24),
	combout => \clkref80Hz|Equal0~7_combout\);

-- Location: LCCOMB_X61_Y39_N24
\clkref80Hz|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~54_combout\ = (\clkref80Hz|count\(28) & (!\clkref80Hz|Add0~53\)) # (!\clkref80Hz|count\(28) & ((\clkref80Hz|Add0~53\) # (GND)))
-- \clkref80Hz|Add0~55\ = CARRY((!\clkref80Hz|Add0~53\) # (!\clkref80Hz|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(28),
	datad => VCC,
	cin => \clkref80Hz|Add0~53\,
	combout => \clkref80Hz|Add0~54_combout\,
	cout => \clkref80Hz|Add0~55\);

-- Location: FF_X61_Y39_N25
\clkref80Hz|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(28));

-- Location: LCCOMB_X61_Y39_N26
\clkref80Hz|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~56_combout\ = (\clkref80Hz|count\(29) & (\clkref80Hz|Add0~55\ $ (GND))) # (!\clkref80Hz|count\(29) & (!\clkref80Hz|Add0~55\ & VCC))
-- \clkref80Hz|Add0~57\ = CARRY((\clkref80Hz|count\(29) & !\clkref80Hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(29),
	datad => VCC,
	cin => \clkref80Hz|Add0~55\,
	combout => \clkref80Hz|Add0~56_combout\,
	cout => \clkref80Hz|Add0~57\);

-- Location: FF_X61_Y39_N27
\clkref80Hz|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(29));

-- Location: LCCOMB_X61_Y39_N28
\clkref80Hz|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~58_combout\ = (\clkref80Hz|count\(30) & (!\clkref80Hz|Add0~57\)) # (!\clkref80Hz|count\(30) & ((\clkref80Hz|Add0~57\) # (GND)))
-- \clkref80Hz|Add0~59\ = CARRY((!\clkref80Hz|Add0~57\) # (!\clkref80Hz|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|count\(30),
	datad => VCC,
	cin => \clkref80Hz|Add0~57\,
	combout => \clkref80Hz|Add0~58_combout\,
	cout => \clkref80Hz|Add0~59\);

-- Location: FF_X61_Y39_N29
\clkref80Hz|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(30));

-- Location: LCCOMB_X61_Y39_N30
\clkref80Hz|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Add0~60_combout\ = \clkref80Hz|count\(31) $ (!\clkref80Hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(31),
	cin => \clkref80Hz|Add0~59\,
	combout => \clkref80Hz|Add0~60_combout\);

-- Location: FF_X61_Y39_N31
\clkref80Hz|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref80Hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|count\(31));

-- Location: LCCOMB_X60_Y39_N2
\clkref80Hz|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~8_combout\ = (!\clkref80Hz|count\(31) & (!\clkref80Hz|count\(30) & (!\clkref80Hz|count\(29) & !\clkref80Hz|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|count\(31),
	datab => \clkref80Hz|count\(30),
	datac => \clkref80Hz|count\(29),
	datad => \clkref80Hz|count\(28),
	combout => \clkref80Hz|Equal0~8_combout\);

-- Location: LCCOMB_X60_Y40_N2
\clkref80Hz|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~9_combout\ = (\clkref80Hz|Equal0~7_combout\ & \clkref80Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkref80Hz|Equal0~7_combout\,
	datad => \clkref80Hz|Equal0~8_combout\,
	combout => \clkref80Hz|Equal0~9_combout\);

-- Location: LCCOMB_X60_Y40_N10
\clkref80Hz|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|Equal0~10_combout\ = (\clkref80Hz|Equal0~4_combout\ & (\clkref80Hz|Equal0~5_combout\ & (\clkref80Hz|Equal0~6_combout\ & \clkref80Hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|Equal0~4_combout\,
	datab => \clkref80Hz|Equal0~5_combout\,
	datac => \clkref80Hz|Equal0~6_combout\,
	datad => \clkref80Hz|Equal0~9_combout\,
	combout => \clkref80Hz|Equal0~10_combout\);

-- Location: LCCOMB_X60_Y40_N14
\clkref80Hz|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref80Hz|tmp~0_combout\ = \clkref80Hz|tmp~q\ $ (\clkref80Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref80Hz|tmp~q\,
	datad => \clkref80Hz|Equal0~10_combout\,
	combout => \clkref80Hz|tmp~0_combout\);

-- Location: FF_X60_Y40_N15
\clkref80Hz|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~input_o\,
	d => \clkref80Hz|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref80Hz|tmp~q\);

-- Location: IOIBUF_X51_Y54_N29
\SW0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X63_Y43_N2
\clkref8Hz|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~2_combout\ = (\clkref8Hz|count\(1) & (!\clkref8Hz|Add0~1\)) # (!\clkref8Hz|count\(1) & ((\clkref8Hz|Add0~1\) # (GND)))
-- \clkref8Hz|Add0~3\ = CARRY((!\clkref8Hz|Add0~1\) # (!\clkref8Hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(1),
	datad => VCC,
	cin => \clkref8Hz|Add0~1\,
	combout => \clkref8Hz|Add0~2_combout\,
	cout => \clkref8Hz|Add0~3\);

-- Location: FF_X63_Y43_N3
\clkref8Hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(1));

-- Location: LCCOMB_X63_Y43_N4
\clkref8Hz|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~4_combout\ = (\clkref8Hz|count\(2) & (\clkref8Hz|Add0~3\ $ (GND))) # (!\clkref8Hz|count\(2) & (!\clkref8Hz|Add0~3\ & VCC))
-- \clkref8Hz|Add0~5\ = CARRY((\clkref8Hz|count\(2) & !\clkref8Hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(2),
	datad => VCC,
	cin => \clkref8Hz|Add0~3\,
	combout => \clkref8Hz|Add0~4_combout\,
	cout => \clkref8Hz|Add0~5\);

-- Location: LCCOMB_X64_Y42_N0
\clkref8Hz|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~1_combout\ = (!\clkref8Hz|Equal0~10_combout\ & \clkref8Hz|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|Equal0~10_combout\,
	datad => \clkref8Hz|Add0~4_combout\,
	combout => \clkref8Hz|count~1_combout\);

-- Location: FF_X64_Y42_N1
\clkref8Hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(2));

-- Location: LCCOMB_X63_Y43_N6
\clkref8Hz|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~6_combout\ = (\clkref8Hz|count\(3) & (!\clkref8Hz|Add0~5\)) # (!\clkref8Hz|count\(3) & ((\clkref8Hz|Add0~5\) # (GND)))
-- \clkref8Hz|Add0~7\ = CARRY((!\clkref8Hz|Add0~5\) # (!\clkref8Hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(3),
	datad => VCC,
	cin => \clkref8Hz|Add0~5\,
	combout => \clkref8Hz|Add0~6_combout\,
	cout => \clkref8Hz|Add0~7\);

-- Location: FF_X63_Y43_N7
\clkref8Hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(3));

-- Location: LCCOMB_X63_Y43_N8
\clkref8Hz|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~8_combout\ = (\clkref8Hz|count\(4) & (\clkref8Hz|Add0~7\ $ (GND))) # (!\clkref8Hz|count\(4) & (!\clkref8Hz|Add0~7\ & VCC))
-- \clkref8Hz|Add0~9\ = CARRY((\clkref8Hz|count\(4) & !\clkref8Hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(4),
	datad => VCC,
	cin => \clkref8Hz|Add0~7\,
	combout => \clkref8Hz|Add0~8_combout\,
	cout => \clkref8Hz|Add0~9\);

-- Location: LCCOMB_X64_Y43_N20
\clkref8Hz|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~0_combout\ = (!\clkref8Hz|Equal0~10_combout\ & \clkref8Hz|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Equal0~10_combout\,
	datad => \clkref8Hz|Add0~8_combout\,
	combout => \clkref8Hz|count~0_combout\);

-- Location: FF_X64_Y43_N21
\clkref8Hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(4));

-- Location: LCCOMB_X63_Y43_N10
\clkref8Hz|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~10_combout\ = (\clkref8Hz|count\(5) & (!\clkref8Hz|Add0~9\)) # (!\clkref8Hz|count\(5) & ((\clkref8Hz|Add0~9\) # (GND)))
-- \clkref8Hz|Add0~11\ = CARRY((!\clkref8Hz|Add0~9\) # (!\clkref8Hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(5),
	datad => VCC,
	cin => \clkref8Hz|Add0~9\,
	combout => \clkref8Hz|Add0~10_combout\,
	cout => \clkref8Hz|Add0~11\);

-- Location: LCCOMB_X64_Y43_N26
\clkref8Hz|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~2_combout\ = (!\clkref8Hz|Equal0~10_combout\ & \clkref8Hz|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Equal0~10_combout\,
	datad => \clkref8Hz|Add0~10_combout\,
	combout => \clkref8Hz|count~2_combout\);

-- Location: FF_X64_Y43_N27
\clkref8Hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(5));

-- Location: LCCOMB_X63_Y43_N12
\clkref8Hz|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~12_combout\ = (\clkref8Hz|count\(6) & (\clkref8Hz|Add0~11\ $ (GND))) # (!\clkref8Hz|count\(6) & (!\clkref8Hz|Add0~11\ & VCC))
-- \clkref8Hz|Add0~13\ = CARRY((\clkref8Hz|count\(6) & !\clkref8Hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(6),
	datad => VCC,
	cin => \clkref8Hz|Add0~11\,
	combout => \clkref8Hz|Add0~12_combout\,
	cout => \clkref8Hz|Add0~13\);

-- Location: FF_X63_Y43_N13
\clkref8Hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(6));

-- Location: LCCOMB_X63_Y43_N14
\clkref8Hz|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~14_combout\ = (\clkref8Hz|count\(7) & (!\clkref8Hz|Add0~13\)) # (!\clkref8Hz|count\(7) & ((\clkref8Hz|Add0~13\) # (GND)))
-- \clkref8Hz|Add0~15\ = CARRY((!\clkref8Hz|Add0~13\) # (!\clkref8Hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(7),
	datad => VCC,
	cin => \clkref8Hz|Add0~13\,
	combout => \clkref8Hz|Add0~14_combout\,
	cout => \clkref8Hz|Add0~15\);

-- Location: LCCOMB_X64_Y42_N22
\clkref8Hz|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~3_combout\ = (\clkref8Hz|Add0~14_combout\ & !\clkref8Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Add0~14_combout\,
	datad => \clkref8Hz|Equal0~10_combout\,
	combout => \clkref8Hz|count~3_combout\);

-- Location: FF_X64_Y42_N23
\clkref8Hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(7));

-- Location: LCCOMB_X63_Y43_N16
\clkref8Hz|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~16_combout\ = (\clkref8Hz|count\(8) & (\clkref8Hz|Add0~15\ $ (GND))) # (!\clkref8Hz|count\(8) & (!\clkref8Hz|Add0~15\ & VCC))
-- \clkref8Hz|Add0~17\ = CARRY((\clkref8Hz|count\(8) & !\clkref8Hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(8),
	datad => VCC,
	cin => \clkref8Hz|Add0~15\,
	combout => \clkref8Hz|Add0~16_combout\,
	cout => \clkref8Hz|Add0~17\);

-- Location: FF_X63_Y43_N17
\clkref8Hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(8));

-- Location: LCCOMB_X63_Y43_N18
\clkref8Hz|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~18_combout\ = (\clkref8Hz|count\(9) & (!\clkref8Hz|Add0~17\)) # (!\clkref8Hz|count\(9) & ((\clkref8Hz|Add0~17\) # (GND)))
-- \clkref8Hz|Add0~19\ = CARRY((!\clkref8Hz|Add0~17\) # (!\clkref8Hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(9),
	datad => VCC,
	cin => \clkref8Hz|Add0~17\,
	combout => \clkref8Hz|Add0~18_combout\,
	cout => \clkref8Hz|Add0~19\);

-- Location: FF_X63_Y43_N19
\clkref8Hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(9));

-- Location: LCCOMB_X63_Y43_N20
\clkref8Hz|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~20_combout\ = (\clkref8Hz|count\(10) & (\clkref8Hz|Add0~19\ $ (GND))) # (!\clkref8Hz|count\(10) & (!\clkref8Hz|Add0~19\ & VCC))
-- \clkref8Hz|Add0~21\ = CARRY((\clkref8Hz|count\(10) & !\clkref8Hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(10),
	datad => VCC,
	cin => \clkref8Hz|Add0~19\,
	combout => \clkref8Hz|Add0~20_combout\,
	cout => \clkref8Hz|Add0~21\);

-- Location: LCCOMB_X64_Y43_N28
\clkref8Hz|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~4_combout\ = (!\clkref8Hz|Equal0~10_combout\ & \clkref8Hz|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Equal0~10_combout\,
	datad => \clkref8Hz|Add0~20_combout\,
	combout => \clkref8Hz|count~4_combout\);

-- Location: FF_X64_Y43_N29
\clkref8Hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(10));

-- Location: LCCOMB_X63_Y43_N22
\clkref8Hz|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~22_combout\ = (\clkref8Hz|count\(11) & (!\clkref8Hz|Add0~21\)) # (!\clkref8Hz|count\(11) & ((\clkref8Hz|Add0~21\) # (GND)))
-- \clkref8Hz|Add0~23\ = CARRY((!\clkref8Hz|Add0~21\) # (!\clkref8Hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(11),
	datad => VCC,
	cin => \clkref8Hz|Add0~21\,
	combout => \clkref8Hz|Add0~22_combout\,
	cout => \clkref8Hz|Add0~23\);

-- Location: FF_X63_Y43_N23
\clkref8Hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(11));

-- Location: LCCOMB_X63_Y43_N24
\clkref8Hz|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~24_combout\ = (\clkref8Hz|count\(12) & (\clkref8Hz|Add0~23\ $ (GND))) # (!\clkref8Hz|count\(12) & (!\clkref8Hz|Add0~23\ & VCC))
-- \clkref8Hz|Add0~25\ = CARRY((\clkref8Hz|count\(12) & !\clkref8Hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(12),
	datad => VCC,
	cin => \clkref8Hz|Add0~23\,
	combout => \clkref8Hz|Add0~24_combout\,
	cout => \clkref8Hz|Add0~25\);

-- Location: FF_X63_Y43_N25
\clkref8Hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(12));

-- Location: LCCOMB_X63_Y43_N26
\clkref8Hz|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~26_combout\ = (\clkref8Hz|count\(13) & (!\clkref8Hz|Add0~25\)) # (!\clkref8Hz|count\(13) & ((\clkref8Hz|Add0~25\) # (GND)))
-- \clkref8Hz|Add0~27\ = CARRY((!\clkref8Hz|Add0~25\) # (!\clkref8Hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(13),
	datad => VCC,
	cin => \clkref8Hz|Add0~25\,
	combout => \clkref8Hz|Add0~26_combout\,
	cout => \clkref8Hz|Add0~27\);

-- Location: FF_X63_Y43_N27
\clkref8Hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(13));

-- Location: LCCOMB_X63_Y43_N28
\clkref8Hz|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~28_combout\ = (\clkref8Hz|count\(14) & (\clkref8Hz|Add0~27\ $ (GND))) # (!\clkref8Hz|count\(14) & (!\clkref8Hz|Add0~27\ & VCC))
-- \clkref8Hz|Add0~29\ = CARRY((\clkref8Hz|count\(14) & !\clkref8Hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(14),
	datad => VCC,
	cin => \clkref8Hz|Add0~27\,
	combout => \clkref8Hz|Add0~28_combout\,
	cout => \clkref8Hz|Add0~29\);

-- Location: LCCOMB_X64_Y43_N12
\clkref8Hz|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~5_combout\ = (!\clkref8Hz|Equal0~10_combout\ & \clkref8Hz|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Equal0~10_combout\,
	datad => \clkref8Hz|Add0~28_combout\,
	combout => \clkref8Hz|count~5_combout\);

-- Location: FF_X64_Y43_N13
\clkref8Hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(14));

-- Location: LCCOMB_X63_Y43_N30
\clkref8Hz|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~30_combout\ = (\clkref8Hz|count\(15) & (!\clkref8Hz|Add0~29\)) # (!\clkref8Hz|count\(15) & ((\clkref8Hz|Add0~29\) # (GND)))
-- \clkref8Hz|Add0~31\ = CARRY((!\clkref8Hz|Add0~29\) # (!\clkref8Hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(15),
	datad => VCC,
	cin => \clkref8Hz|Add0~29\,
	combout => \clkref8Hz|Add0~30_combout\,
	cout => \clkref8Hz|Add0~31\);

-- Location: LCCOMB_X64_Y42_N24
\clkref8Hz|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~6_combout\ = (!\clkref8Hz|Equal0~10_combout\ & \clkref8Hz|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|Equal0~10_combout\,
	datad => \clkref8Hz|Add0~30_combout\,
	combout => \clkref8Hz|count~6_combout\);

-- Location: FF_X64_Y42_N25
\clkref8Hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(15));

-- Location: LCCOMB_X64_Y42_N30
\clkref8Hz|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~4_combout\ = (!\clkref8Hz|count\(13) & (\clkref8Hz|count\(15) & (!\clkref8Hz|count\(12) & \clkref8Hz|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(13),
	datab => \clkref8Hz|count\(15),
	datac => \clkref8Hz|count\(12),
	datad => \clkref8Hz|count\(14),
	combout => \clkref8Hz|Equal0~4_combout\);

-- Location: LCCOMB_X64_Y43_N14
\clkref8Hz|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~3_combout\ = (!\clkref8Hz|count\(8) & (!\clkref8Hz|count\(11) & (\clkref8Hz|count\(10) & !\clkref8Hz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(8),
	datab => \clkref8Hz|count\(11),
	datac => \clkref8Hz|count\(10),
	datad => \clkref8Hz|count\(9),
	combout => \clkref8Hz|Equal0~3_combout\);

-- Location: LCCOMB_X64_Y42_N4
\clkref8Hz|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~1_combout\ = (\clkref8Hz|count\(7) & (\clkref8Hz|count\(5) & (!\clkref8Hz|count\(6) & \clkref8Hz|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(7),
	datab => \clkref8Hz|count\(5),
	datac => \clkref8Hz|count\(6),
	datad => \clkref8Hz|count\(0),
	combout => \clkref8Hz|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y42_N8
\clkref8Hz|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~0_combout\ = (!\clkref8Hz|count\(3) & (\clkref8Hz|count\(2) & (\clkref8Hz|count\(4) & !\clkref8Hz|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(3),
	datab => \clkref8Hz|count\(2),
	datac => \clkref8Hz|count\(4),
	datad => \clkref8Hz|count\(1),
	combout => \clkref8Hz|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y42_N26
\clkref8Hz|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~2_combout\ = (\clkref8Hz|Equal0~1_combout\ & \clkref8Hz|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Equal0~1_combout\,
	datad => \clkref8Hz|Equal0~0_combout\,
	combout => \clkref8Hz|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y42_N0
\clkref8Hz|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~32_combout\ = (\clkref8Hz|count\(16) & (\clkref8Hz|Add0~31\ $ (GND))) # (!\clkref8Hz|count\(16) & (!\clkref8Hz|Add0~31\ & VCC))
-- \clkref8Hz|Add0~33\ = CARRY((\clkref8Hz|count\(16) & !\clkref8Hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(16),
	datad => VCC,
	cin => \clkref8Hz|Add0~31\,
	combout => \clkref8Hz|Add0~32_combout\,
	cout => \clkref8Hz|Add0~33\);

-- Location: FF_X63_Y42_N1
\clkref8Hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(16));

-- Location: LCCOMB_X63_Y42_N2
\clkref8Hz|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~34_combout\ = (\clkref8Hz|count\(17) & (!\clkref8Hz|Add0~33\)) # (!\clkref8Hz|count\(17) & ((\clkref8Hz|Add0~33\) # (GND)))
-- \clkref8Hz|Add0~35\ = CARRY((!\clkref8Hz|Add0~33\) # (!\clkref8Hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(17),
	datad => VCC,
	cin => \clkref8Hz|Add0~33\,
	combout => \clkref8Hz|Add0~34_combout\,
	cout => \clkref8Hz|Add0~35\);

-- Location: FF_X63_Y42_N3
\clkref8Hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(17));

-- Location: LCCOMB_X63_Y42_N4
\clkref8Hz|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~36_combout\ = (\clkref8Hz|count\(18) & (\clkref8Hz|Add0~35\ $ (GND))) # (!\clkref8Hz|count\(18) & (!\clkref8Hz|Add0~35\ & VCC))
-- \clkref8Hz|Add0~37\ = CARRY((\clkref8Hz|count\(18) & !\clkref8Hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(18),
	datad => VCC,
	cin => \clkref8Hz|Add0~35\,
	combout => \clkref8Hz|Add0~36_combout\,
	cout => \clkref8Hz|Add0~37\);

-- Location: LCCOMB_X64_Y42_N6
\clkref8Hz|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|count~7_combout\ = (\clkref8Hz|Add0~36_combout\ & !\clkref8Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|Add0~36_combout\,
	datad => \clkref8Hz|Equal0~10_combout\,
	combout => \clkref8Hz|count~7_combout\);

-- Location: FF_X64_Y42_N7
\clkref8Hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(18));

-- Location: LCCOMB_X63_Y42_N6
\clkref8Hz|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~38_combout\ = (\clkref8Hz|count\(19) & (!\clkref8Hz|Add0~37\)) # (!\clkref8Hz|count\(19) & ((\clkref8Hz|Add0~37\) # (GND)))
-- \clkref8Hz|Add0~39\ = CARRY((!\clkref8Hz|Add0~37\) # (!\clkref8Hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(19),
	datad => VCC,
	cin => \clkref8Hz|Add0~37\,
	combout => \clkref8Hz|Add0~38_combout\,
	cout => \clkref8Hz|Add0~39\);

-- Location: FF_X63_Y42_N7
\clkref8Hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(19));

-- Location: LCCOMB_X64_Y42_N10
\clkref8Hz|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~5_combout\ = (!\clkref8Hz|count\(17) & (!\clkref8Hz|count\(19) & (!\clkref8Hz|count\(16) & \clkref8Hz|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(17),
	datab => \clkref8Hz|count\(19),
	datac => \clkref8Hz|count\(16),
	datad => \clkref8Hz|count\(18),
	combout => \clkref8Hz|Equal0~5_combout\);

-- Location: LCCOMB_X63_Y42_N8
\clkref8Hz|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~40_combout\ = (\clkref8Hz|count\(20) & (\clkref8Hz|Add0~39\ $ (GND))) # (!\clkref8Hz|count\(20) & (!\clkref8Hz|Add0~39\ & VCC))
-- \clkref8Hz|Add0~41\ = CARRY((\clkref8Hz|count\(20) & !\clkref8Hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(20),
	datad => VCC,
	cin => \clkref8Hz|Add0~39\,
	combout => \clkref8Hz|Add0~40_combout\,
	cout => \clkref8Hz|Add0~41\);

-- Location: FF_X63_Y42_N9
\clkref8Hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(20));

-- Location: LCCOMB_X63_Y42_N10
\clkref8Hz|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~42_combout\ = (\clkref8Hz|count\(21) & (!\clkref8Hz|Add0~41\)) # (!\clkref8Hz|count\(21) & ((\clkref8Hz|Add0~41\) # (GND)))
-- \clkref8Hz|Add0~43\ = CARRY((!\clkref8Hz|Add0~41\) # (!\clkref8Hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(21),
	datad => VCC,
	cin => \clkref8Hz|Add0~41\,
	combout => \clkref8Hz|Add0~42_combout\,
	cout => \clkref8Hz|Add0~43\);

-- Location: FF_X63_Y42_N11
\clkref8Hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(21));

-- Location: LCCOMB_X63_Y42_N12
\clkref8Hz|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~44_combout\ = (\clkref8Hz|count\(22) & (\clkref8Hz|Add0~43\ $ (GND))) # (!\clkref8Hz|count\(22) & (!\clkref8Hz|Add0~43\ & VCC))
-- \clkref8Hz|Add0~45\ = CARRY((\clkref8Hz|count\(22) & !\clkref8Hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(22),
	datad => VCC,
	cin => \clkref8Hz|Add0~43\,
	combout => \clkref8Hz|Add0~44_combout\,
	cout => \clkref8Hz|Add0~45\);

-- Location: FF_X63_Y42_N13
\clkref8Hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(22));

-- Location: LCCOMB_X63_Y42_N14
\clkref8Hz|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~46_combout\ = (\clkref8Hz|count\(23) & (!\clkref8Hz|Add0~45\)) # (!\clkref8Hz|count\(23) & ((\clkref8Hz|Add0~45\) # (GND)))
-- \clkref8Hz|Add0~47\ = CARRY((!\clkref8Hz|Add0~45\) # (!\clkref8Hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(23),
	datad => VCC,
	cin => \clkref8Hz|Add0~45\,
	combout => \clkref8Hz|Add0~46_combout\,
	cout => \clkref8Hz|Add0~47\);

-- Location: FF_X63_Y42_N15
\clkref8Hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(23));

-- Location: LCCOMB_X64_Y42_N20
\clkref8Hz|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~6_combout\ = (!\clkref8Hz|count\(22) & (!\clkref8Hz|count\(20) & (!\clkref8Hz|count\(21) & !\clkref8Hz|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(22),
	datab => \clkref8Hz|count\(20),
	datac => \clkref8Hz|count\(21),
	datad => \clkref8Hz|count\(23),
	combout => \clkref8Hz|Equal0~6_combout\);

-- Location: LCCOMB_X63_Y42_N16
\clkref8Hz|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~48_combout\ = (\clkref8Hz|count\(24) & (\clkref8Hz|Add0~47\ $ (GND))) # (!\clkref8Hz|count\(24) & (!\clkref8Hz|Add0~47\ & VCC))
-- \clkref8Hz|Add0~49\ = CARRY((\clkref8Hz|count\(24) & !\clkref8Hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(24),
	datad => VCC,
	cin => \clkref8Hz|Add0~47\,
	combout => \clkref8Hz|Add0~48_combout\,
	cout => \clkref8Hz|Add0~49\);

-- Location: FF_X63_Y42_N17
\clkref8Hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(24));

-- Location: LCCOMB_X63_Y42_N18
\clkref8Hz|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~50_combout\ = (\clkref8Hz|count\(25) & (!\clkref8Hz|Add0~49\)) # (!\clkref8Hz|count\(25) & ((\clkref8Hz|Add0~49\) # (GND)))
-- \clkref8Hz|Add0~51\ = CARRY((!\clkref8Hz|Add0~49\) # (!\clkref8Hz|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(25),
	datad => VCC,
	cin => \clkref8Hz|Add0~49\,
	combout => \clkref8Hz|Add0~50_combout\,
	cout => \clkref8Hz|Add0~51\);

-- Location: FF_X63_Y42_N19
\clkref8Hz|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(25));

-- Location: LCCOMB_X63_Y42_N20
\clkref8Hz|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~52_combout\ = (\clkref8Hz|count\(26) & (\clkref8Hz|Add0~51\ $ (GND))) # (!\clkref8Hz|count\(26) & (!\clkref8Hz|Add0~51\ & VCC))
-- \clkref8Hz|Add0~53\ = CARRY((\clkref8Hz|count\(26) & !\clkref8Hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(26),
	datad => VCC,
	cin => \clkref8Hz|Add0~51\,
	combout => \clkref8Hz|Add0~52_combout\,
	cout => \clkref8Hz|Add0~53\);

-- Location: FF_X63_Y42_N21
\clkref8Hz|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(26));

-- Location: LCCOMB_X63_Y42_N22
\clkref8Hz|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~54_combout\ = (\clkref8Hz|count\(27) & (!\clkref8Hz|Add0~53\)) # (!\clkref8Hz|count\(27) & ((\clkref8Hz|Add0~53\) # (GND)))
-- \clkref8Hz|Add0~55\ = CARRY((!\clkref8Hz|Add0~53\) # (!\clkref8Hz|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(27),
	datad => VCC,
	cin => \clkref8Hz|Add0~53\,
	combout => \clkref8Hz|Add0~54_combout\,
	cout => \clkref8Hz|Add0~55\);

-- Location: FF_X63_Y42_N23
\clkref8Hz|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(27));

-- Location: LCCOMB_X63_Y42_N24
\clkref8Hz|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~56_combout\ = (\clkref8Hz|count\(28) & (\clkref8Hz|Add0~55\ $ (GND))) # (!\clkref8Hz|count\(28) & (!\clkref8Hz|Add0~55\ & VCC))
-- \clkref8Hz|Add0~57\ = CARRY((\clkref8Hz|count\(28) & !\clkref8Hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(28),
	datad => VCC,
	cin => \clkref8Hz|Add0~55\,
	combout => \clkref8Hz|Add0~56_combout\,
	cout => \clkref8Hz|Add0~57\);

-- Location: FF_X63_Y42_N25
\clkref8Hz|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(28));

-- Location: LCCOMB_X63_Y42_N26
\clkref8Hz|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~58_combout\ = (\clkref8Hz|count\(29) & (!\clkref8Hz|Add0~57\)) # (!\clkref8Hz|count\(29) & ((\clkref8Hz|Add0~57\) # (GND)))
-- \clkref8Hz|Add0~59\ = CARRY((!\clkref8Hz|Add0~57\) # (!\clkref8Hz|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(29),
	datad => VCC,
	cin => \clkref8Hz|Add0~57\,
	combout => \clkref8Hz|Add0~58_combout\,
	cout => \clkref8Hz|Add0~59\);

-- Location: FF_X63_Y42_N27
\clkref8Hz|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(29));

-- Location: LCCOMB_X63_Y42_N28
\clkref8Hz|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~60_combout\ = (\clkref8Hz|count\(30) & (\clkref8Hz|Add0~59\ $ (GND))) # (!\clkref8Hz|count\(30) & (!\clkref8Hz|Add0~59\ & VCC))
-- \clkref8Hz|Add0~61\ = CARRY((\clkref8Hz|count\(30) & !\clkref8Hz|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkref8Hz|count\(30),
	datad => VCC,
	cin => \clkref8Hz|Add0~59\,
	combout => \clkref8Hz|Add0~60_combout\,
	cout => \clkref8Hz|Add0~61\);

-- Location: FF_X63_Y42_N29
\clkref8Hz|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(30));

-- Location: LCCOMB_X63_Y42_N30
\clkref8Hz|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Add0~62_combout\ = \clkref8Hz|count\(31) $ (\clkref8Hz|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(31),
	cin => \clkref8Hz|Add0~61\,
	combout => \clkref8Hz|Add0~62_combout\);

-- Location: FF_X63_Y42_N31
\clkref8Hz|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~inputclkctrl_outclk\,
	d => \clkref8Hz|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|count\(31));

-- Location: LCCOMB_X64_Y42_N14
\clkref8Hz|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~8_combout\ = (!\clkref8Hz|count\(30) & (!\clkref8Hz|count\(28) & (!\clkref8Hz|count\(29) & !\clkref8Hz|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(30),
	datab => \clkref8Hz|count\(28),
	datac => \clkref8Hz|count\(29),
	datad => \clkref8Hz|count\(31),
	combout => \clkref8Hz|Equal0~8_combout\);

-- Location: LCCOMB_X64_Y42_N16
\clkref8Hz|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~7_combout\ = (!\clkref8Hz|count\(26) & (!\clkref8Hz|count\(25) & (!\clkref8Hz|count\(24) & !\clkref8Hz|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|count\(26),
	datab => \clkref8Hz|count\(25),
	datac => \clkref8Hz|count\(24),
	datad => \clkref8Hz|count\(27),
	combout => \clkref8Hz|Equal0~7_combout\);

-- Location: LCCOMB_X64_Y42_N12
\clkref8Hz|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~9_combout\ = (\clkref8Hz|Equal0~5_combout\ & (\clkref8Hz|Equal0~6_combout\ & (\clkref8Hz|Equal0~8_combout\ & \clkref8Hz|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|Equal0~5_combout\,
	datab => \clkref8Hz|Equal0~6_combout\,
	datac => \clkref8Hz|Equal0~8_combout\,
	datad => \clkref8Hz|Equal0~7_combout\,
	combout => \clkref8Hz|Equal0~9_combout\);

-- Location: LCCOMB_X64_Y42_N18
\clkref8Hz|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|Equal0~10_combout\ = (\clkref8Hz|Equal0~4_combout\ & (\clkref8Hz|Equal0~3_combout\ & (\clkref8Hz|Equal0~2_combout\ & \clkref8Hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref8Hz|Equal0~4_combout\,
	datab => \clkref8Hz|Equal0~3_combout\,
	datac => \clkref8Hz|Equal0~2_combout\,
	datad => \clkref8Hz|Equal0~9_combout\,
	combout => \clkref8Hz|Equal0~10_combout\);

-- Location: LCCOMB_X64_Y42_N28
\clkref8Hz|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkref8Hz|tmp~0_combout\ = \clkref8Hz|tmp~q\ $ (\clkref8Hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkref8Hz|tmp~q\,
	datad => \clkref8Hz|Equal0~10_combout\,
	combout => \clkref8Hz|tmp~0_combout\);

-- Location: FF_X64_Y42_N29
\clkref8Hz|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ref~input_o\,
	d => \clkref8Hz|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkref8Hz|tmp~q\);

-- Location: LCCOMB_X55_Y50_N24
\clk_t~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_t~0_combout\ = (\SW0~input_o\ & (\clkref80Hz|tmp~q\)) # (!\SW0~input_o\ & ((\clkref8Hz|tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkref80Hz|tmp~q\,
	datac => \SW0~input_o\,
	datad => \clkref8Hz|tmp~q\,
	combout => \clk_t~0_combout\);

-- Location: LCCOMB_X55_Y50_N6
\cmpLab07|clk0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|clk0~combout\ = LCELL((\cmpLab07|pseSystem~q\) # (\clk_t~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|pseSystem~q\,
	datad => \clk_t~0_combout\,
	combout => \cmpLab07|clk0~combout\);

-- Location: CLKCTRL_G10
\cmpLab07|clk0~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cmpLab07|clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cmpLab07|clk0~clkctrl_outclk\);

-- Location: FF_X62_Y53_N23
\cmpLab07|PIPOAdd|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:2:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:2:aa00~q\);

-- Location: FF_X62_Y53_N15
\cmpLab07|PIPOAdd|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:0:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:0:aa00~q\);

-- Location: FF_X62_Y53_N5
\cmpLab07|PIPOAdd|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:3:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:3:aa00~q\);

-- Location: FF_X62_Y53_N25
\cmpLab07|PIPOAdd|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:1:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:1:aa00~q\);

-- Location: LCCOMB_X62_Y53_N26
\A0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~0_combout\ = (\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:1:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:0:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & 
-- (\cmpLab07|PIPOAdd|gen00:3:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:1:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	combout => \A0|D~0_combout\);

-- Location: LCCOMB_X62_Y53_N6
\A0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~1_combout\ = (\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:1:aa00~q\))) # (!\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:2:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & 
-- (\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:0:aa00~q\ $ (\cmpLab07|PIPOAdd|gen00:1:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	combout => \A0|D~1_combout\);

-- Location: LCCOMB_X62_Y53_N8
\A0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~2_combout\ = (\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:1:aa00~q\) # (!\cmpLab07|PIPOAdd|gen00:0:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & 
-- (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & \cmpLab07|PIPOAdd|gen00:1:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	combout => \A0|D~2_combout\);

-- Location: LCCOMB_X62_Y53_N14
\A0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~3_combout\ = (\cmpLab07|PIPOAdd|gen00:1:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:0:aa00~q\))) # (!\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & !\cmpLab07|PIPOAdd|gen00:0:aa00~q\)))) # 
-- (!\cmpLab07|PIPOAdd|gen00:1:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:2:aa00~q\ $ (\cmpLab07|PIPOAdd|gen00:0:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	combout => \A0|D~3_combout\);

-- Location: LCCOMB_X62_Y53_N4
\A0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~4_combout\ = (\cmpLab07|PIPOAdd|gen00:1:aa00~q\ & (((\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & !\cmpLab07|PIPOAdd|gen00:3:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:1:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & ((!\cmpLab07|PIPOAdd|gen00:3:aa00~q\))) # 
-- (!\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:0:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	combout => \A0|D~4_combout\);

-- Location: LCCOMB_X62_Y53_N22
\A0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~5_combout\ = (\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:3:aa00~q\ $ (((\cmpLab07|PIPOAdd|gen00:1:aa00~q\) # (!\cmpLab07|PIPOAdd|gen00:2:aa00~q\))))) # (!\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & 
-- (!\cmpLab07|PIPOAdd|gen00:2:aa00~q\ & \cmpLab07|PIPOAdd|gen00:1:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	combout => \A0|D~5_combout\);

-- Location: LCCOMB_X62_Y53_N24
\A0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|D~6_combout\ = (\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:2:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:1:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:0:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:1:aa00~q\ & 
-- (\cmpLab07|PIPOAdd|gen00:2:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:3:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:1:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:3:aa00~q\,
	combout => \A0|D~6_combout\);

-- Location: FF_X61_Y53_N31
\cmpLab07|PIPOAdd|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:4:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:4:aa00~q\);

-- Location: FF_X61_Y53_N21
\cmpLab07|PIPOAdd|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:6:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:6:aa00~q\);

-- Location: FF_X61_Y53_N1
\cmpLab07|PIPOAdd|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:7:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:7:aa00~q\);

-- Location: FF_X61_Y53_N19
\cmpLab07|PIPOAdd|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|clk0~clkctrl_outclk\,
	asdata => \cmpLab07|countAdd0|gen00:5:a00~q\,
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOAdd|gen00:5:aa00~q\);

-- Location: LCCOMB_X61_Y53_N4
\A1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~0_combout\ = (\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:5:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:4:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & 
-- (\cmpLab07|PIPOAdd|gen00:7:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	combout => \A1|D~0_combout\);

-- Location: LCCOMB_X61_Y53_N6
\A1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~1_combout\ = (\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:5:aa00~q\))) # (!\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:6:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & 
-- (\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:4:aa00~q\ $ (\cmpLab07|PIPOAdd|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	combout => \A1|D~1_combout\);

-- Location: LCCOMB_X61_Y53_N26
\A1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~2_combout\ = (\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:5:aa00~q\) # (!\cmpLab07|PIPOAdd|gen00:4:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & 
-- (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & \cmpLab07|PIPOAdd|gen00:5:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	combout => \A1|D~2_combout\);

-- Location: LCCOMB_X61_Y53_N30
\A1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~3_combout\ = (\cmpLab07|PIPOAdd|gen00:5:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:4:aa00~q\))) # (!\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & !\cmpLab07|PIPOAdd|gen00:4:aa00~q\)))) # 
-- (!\cmpLab07|PIPOAdd|gen00:5:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:6:aa00~q\ $ (\cmpLab07|PIPOAdd|gen00:4:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	combout => \A1|D~3_combout\);

-- Location: LCCOMB_X61_Y53_N0
\A1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~4_combout\ = (\cmpLab07|PIPOAdd|gen00:5:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & ((!\cmpLab07|PIPOAdd|gen00:7:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:5:aa00~q\ & ((\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & ((!\cmpLab07|PIPOAdd|gen00:7:aa00~q\))) # 
-- (!\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:4:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	combout => \A1|D~4_combout\);

-- Location: LCCOMB_X61_Y53_N20
\A1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~5_combout\ = (\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:7:aa00~q\ $ (((\cmpLab07|PIPOAdd|gen00:5:aa00~q\) # (!\cmpLab07|PIPOAdd|gen00:6:aa00~q\))))) # (!\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & 
-- (!\cmpLab07|PIPOAdd|gen00:6:aa00~q\ & \cmpLab07|PIPOAdd|gen00:5:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	combout => \A1|D~5_combout\);

-- Location: LCCOMB_X61_Y53_N18
\A1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|D~6_combout\ = (\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\ & (\cmpLab07|PIPOAdd|gen00:6:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:5:aa00~q\)))) # (!\cmpLab07|PIPOAdd|gen00:4:aa00~q\ & (!\cmpLab07|PIPOAdd|gen00:5:aa00~q\ & 
-- (\cmpLab07|PIPOAdd|gen00:6:aa00~q\ $ (!\cmpLab07|PIPOAdd|gen00:7:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOAdd|gen00:4:aa00~q\,
	datab => \cmpLab07|PIPOAdd|gen00:6:aa00~q\,
	datac => \cmpLab07|PIPOAdd|gen00:5:aa00~q\,
	datad => \cmpLab07|PIPOAdd|gen00:7:aa00~q\,
	combout => \A1|D~6_combout\);

-- Location: FF_X54_Y50_N13
\cmpLab07|PIPOmem|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	asdata => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(2),
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:2:aa00~q\);

-- Location: FF_X54_Y50_N3
\cmpLab07|PIPOmem|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	asdata => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(1),
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:1:aa00~q\);

-- Location: FF_X54_Y50_N23
\cmpLab07|PIPOmem|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	asdata => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(3),
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:3:aa00~q\);

-- Location: FF_X54_Y50_N29
\cmpLab07|PIPOmem|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	asdata => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(0),
	clrn => \PB1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:0:aa00~q\);

-- Location: LCCOMB_X54_Y50_N20
\B0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~0_combout\ = (\cmpLab07|PIPOmem|gen00:2:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:1:aa00~q\ & (\cmpLab07|PIPOmem|gen00:3:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:0:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:2:aa00~q\ & (\cmpLab07|PIPOmem|gen00:0:aa00~q\ & 
-- (\cmpLab07|PIPOmem|gen00:1:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:3:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	combout => \B0|D~0_combout\);

-- Location: LCCOMB_X54_Y50_N26
\B0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~1_combout\ = (\cmpLab07|PIPOmem|gen00:1:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:0:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:3:aa00~q\))) # (!\cmpLab07|PIPOmem|gen00:0:aa00~q\ & (\cmpLab07|PIPOmem|gen00:2:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:1:aa00~q\ & 
-- (\cmpLab07|PIPOmem|gen00:2:aa00~q\ & (\cmpLab07|PIPOmem|gen00:3:aa00~q\ $ (\cmpLab07|PIPOmem|gen00:0:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	combout => \B0|D~1_combout\);

-- Location: LCCOMB_X54_Y50_N24
\B0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~2_combout\ = (\cmpLab07|PIPOmem|gen00:2:aa00~q\ & (\cmpLab07|PIPOmem|gen00:3:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:1:aa00~q\) # (!\cmpLab07|PIPOmem|gen00:0:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:2:aa00~q\ & (\cmpLab07|PIPOmem|gen00:1:aa00~q\ & 
-- (!\cmpLab07|PIPOmem|gen00:3:aa00~q\ & !\cmpLab07|PIPOmem|gen00:0:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	combout => \B0|D~2_combout\);

-- Location: LCCOMB_X54_Y50_N28
\B0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~3_combout\ = (\cmpLab07|PIPOmem|gen00:1:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:0:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:2:aa00~q\))) # (!\cmpLab07|PIPOmem|gen00:0:aa00~q\ & (\cmpLab07|PIPOmem|gen00:3:aa00~q\ & !\cmpLab07|PIPOmem|gen00:2:aa00~q\)))) # 
-- (!\cmpLab07|PIPOmem|gen00:1:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:3:aa00~q\ & (\cmpLab07|PIPOmem|gen00:0:aa00~q\ $ (\cmpLab07|PIPOmem|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	combout => \B0|D~3_combout\);

-- Location: LCCOMB_X54_Y50_N22
\B0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~4_combout\ = (\cmpLab07|PIPOmem|gen00:1:aa00~q\ & (((\cmpLab07|PIPOmem|gen00:0:aa00~q\ & !\cmpLab07|PIPOmem|gen00:3:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:1:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:2:aa00~q\ & ((!\cmpLab07|PIPOmem|gen00:3:aa00~q\))) # 
-- (!\cmpLab07|PIPOmem|gen00:2:aa00~q\ & (\cmpLab07|PIPOmem|gen00:0:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	combout => \B0|D~4_combout\);

-- Location: LCCOMB_X54_Y50_N12
\B0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~5_combout\ = (\cmpLab07|PIPOmem|gen00:0:aa00~q\ & (\cmpLab07|PIPOmem|gen00:3:aa00~q\ $ (((\cmpLab07|PIPOmem|gen00:1:aa00~q\) # (!\cmpLab07|PIPOmem|gen00:2:aa00~q\))))) # (!\cmpLab07|PIPOmem|gen00:0:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:3:aa00~q\ & 
-- (!\cmpLab07|PIPOmem|gen00:2:aa00~q\ & \cmpLab07|PIPOmem|gen00:1:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	combout => \B0|D~5_combout\);

-- Location: LCCOMB_X54_Y50_N2
\B0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|D~6_combout\ = (\cmpLab07|PIPOmem|gen00:0:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:3:aa00~q\ & (\cmpLab07|PIPOmem|gen00:1:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:2:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:0:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:1:aa00~q\ & 
-- (\cmpLab07|PIPOmem|gen00:3:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:3:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:0:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:1:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:2:aa00~q\,
	combout => \B0|D~6_combout\);

-- Location: LCCOMB_X52_Y50_N12
\cmpLab07|PIPOmem|gen00:6:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PIPOmem|gen00:6:aa00~feeder_combout\ = \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(6),
	combout => \cmpLab07|PIPOmem|gen00:6:aa00~feeder_combout\);

-- Location: FF_X52_Y50_N13
\cmpLab07|PIPOmem|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PIPOmem|gen00:6:aa00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:6:aa00~q\);

-- Location: LCCOMB_X52_Y50_N4
\cmpLab07|PIPOmem|gen00:4:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PIPOmem|gen00:4:aa00~feeder_combout\ = \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(4),
	combout => \cmpLab07|PIPOmem|gen00:4:aa00~feeder_combout\);

-- Location: FF_X52_Y50_N5
\cmpLab07|PIPOmem|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PIPOmem|gen00:4:aa00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:4:aa00~q\);

-- Location: LCCOMB_X52_Y50_N22
\cmpLab07|PIPOmem|gen00:7:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PIPOmem|gen00:7:aa00~feeder_combout\ = \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(7),
	combout => \cmpLab07|PIPOmem|gen00:7:aa00~feeder_combout\);

-- Location: FF_X52_Y50_N23
\cmpLab07|PIPOmem|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PIPOmem|gen00:7:aa00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:7:aa00~q\);

-- Location: LCCOMB_X52_Y50_N18
\cmpLab07|PIPOmem|gen00:5:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|PIPOmem|gen00:5:aa00~feeder_combout\ = \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmpLab07|romcomp|altsyncram_component|auto_generated|q_a\(5),
	combout => \cmpLab07|PIPOmem|gen00:5:aa00~feeder_combout\);

-- Location: FF_X52_Y50_N19
\cmpLab07|PIPOmem|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|ALT_INV_clk0~clkctrl_outclk\,
	d => \cmpLab07|PIPOmem|gen00:5:aa00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|PIPOmem|gen00:5:aa00~q\);

-- Location: LCCOMB_X52_Y50_N28
\B1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~0_combout\ = (\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:5:aa00~q\ & (\cmpLab07|PIPOmem|gen00:4:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:7:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (\cmpLab07|PIPOmem|gen00:4:aa00~q\ & 
-- (\cmpLab07|PIPOmem|gen00:7:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~0_combout\);

-- Location: LCCOMB_X52_Y50_N26
\B1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~1_combout\ = (\cmpLab07|PIPOmem|gen00:7:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:4:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:5:aa00~q\))) # (!\cmpLab07|PIPOmem|gen00:4:aa00~q\ & (\cmpLab07|PIPOmem|gen00:6:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:7:aa00~q\ & 
-- (\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (\cmpLab07|PIPOmem|gen00:4:aa00~q\ $ (\cmpLab07|PIPOmem|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~1_combout\);

-- Location: LCCOMB_X52_Y50_N8
\B1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~2_combout\ = (\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (\cmpLab07|PIPOmem|gen00:7:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:5:aa00~q\) # (!\cmpLab07|PIPOmem|gen00:4:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:4:aa00~q\ & 
-- (!\cmpLab07|PIPOmem|gen00:7:aa00~q\ & \cmpLab07|PIPOmem|gen00:5:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~2_combout\);

-- Location: LCCOMB_X52_Y50_N10
\B1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~3_combout\ = (\cmpLab07|PIPOmem|gen00:5:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (\cmpLab07|PIPOmem|gen00:4:aa00~q\)) # (!\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:4:aa00~q\ & \cmpLab07|PIPOmem|gen00:7:aa00~q\)))) # 
-- (!\cmpLab07|PIPOmem|gen00:5:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:7:aa00~q\ & (\cmpLab07|PIPOmem|gen00:6:aa00~q\ $ (\cmpLab07|PIPOmem|gen00:4:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~3_combout\);

-- Location: LCCOMB_X52_Y50_N20
\B1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~4_combout\ = (\cmpLab07|PIPOmem|gen00:5:aa00~q\ & (((\cmpLab07|PIPOmem|gen00:4:aa00~q\ & !\cmpLab07|PIPOmem|gen00:7:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:5:aa00~q\ & ((\cmpLab07|PIPOmem|gen00:6:aa00~q\ & ((!\cmpLab07|PIPOmem|gen00:7:aa00~q\))) # 
-- (!\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (\cmpLab07|PIPOmem|gen00:4:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~4_combout\);

-- Location: LCCOMB_X52_Y50_N30
\B1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~5_combout\ = (\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (\cmpLab07|PIPOmem|gen00:4:aa00~q\ & (\cmpLab07|PIPOmem|gen00:7:aa00~q\ $ (\cmpLab07|PIPOmem|gen00:5:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:6:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:7:aa00~q\ & 
-- ((\cmpLab07|PIPOmem|gen00:4:aa00~q\) # (\cmpLab07|PIPOmem|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~5_combout\);

-- Location: LCCOMB_X52_Y50_N24
\B1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|D~6_combout\ = (\cmpLab07|PIPOmem|gen00:4:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:7:aa00~q\ & (\cmpLab07|PIPOmem|gen00:6:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:5:aa00~q\)))) # (!\cmpLab07|PIPOmem|gen00:4:aa00~q\ & (!\cmpLab07|PIPOmem|gen00:5:aa00~q\ & 
-- (\cmpLab07|PIPOmem|gen00:6:aa00~q\ $ (!\cmpLab07|PIPOmem|gen00:7:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|PIPOmem|gen00:6:aa00~q\,
	datab => \cmpLab07|PIPOmem|gen00:4:aa00~q\,
	datac => \cmpLab07|PIPOmem|gen00:7:aa00~q\,
	datad => \cmpLab07|PIPOmem|gen00:5:aa00~q\,
	combout => \B1|D~6_combout\);

-- Location: LCCOMB_X55_Y50_N22
\C0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~0_combout\ = (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|seqdet|gen00:2:ffi0~q\ $ (\cmpLab07|seqdet|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	combout => \C0|D~0_combout\);

-- Location: LCCOMB_X55_Y50_N20
\C0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~1_combout\ = (\cmpLab07|seqdet|gen00:2:ffi0~q\ & (\cmpLab07|seqdet|gen00:1:ffi0~q\ $ (\cmpLab07|seqdet|gen00:0:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	combout => \C0|D~1_combout\);

-- Location: LCCOMB_X56_Y50_N18
\C0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~2_combout\ = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & (!\cmpLab07|seqdet|gen00:0:ffi0~q\ & !\cmpLab07|seqdet|gen00:2:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datac => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	combout => \C0|D~2_combout\);

-- Location: LCCOMB_X56_Y50_N28
\C0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~3_combout\ = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|seqdet|gen00:0:ffi0~q\ & \cmpLab07|seqdet|gen00:2:ffi0~q\)) # (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|seqdet|gen00:0:ffi0~q\ $ (\cmpLab07|seqdet|gen00:2:ffi0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datac => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	combout => \C0|D~3_combout\);

-- Location: LCCOMB_X55_Y50_N26
\C0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~4_combout\ = (\cmpLab07|seqdet|gen00:0:ffi0~q\) # ((!\cmpLab07|seqdet|gen00:1:ffi0~q\ & \cmpLab07|seqdet|gen00:2:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	combout => \C0|D~4_combout\);

-- Location: LCCOMB_X56_Y50_N12
\C0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~5_combout\ = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & ((\cmpLab07|seqdet|gen00:0:ffi0~q\) # (!\cmpLab07|seqdet|gen00:2:ffi0~q\))) # (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|seqdet|gen00:0:ffi0~q\ & !\cmpLab07|seqdet|gen00:2:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datac => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	combout => \C0|D~5_combout\);

-- Location: LCCOMB_X55_Y50_N28
\C0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|D~6_combout\ = (\cmpLab07|seqdet|gen00:1:ffi0~q\ & (\cmpLab07|seqdet|gen00:2:ffi0~q\ & \cmpLab07|seqdet|gen00:0:ffi0~q\)) # (!\cmpLab07|seqdet|gen00:1:ffi0~q\ & (!\cmpLab07|seqdet|gen00:2:ffi0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|seqdet|gen00:1:ffi0~q\,
	datab => \cmpLab07|seqdet|gen00:2:ffi0~q\,
	datad => \cmpLab07|seqdet|gen00:0:ffi0~q\,
	combout => \C0|D~6_combout\);

-- Location: LCCOMB_X67_Y46_N30
\cmpLab07|nOfSeqDetec|gen00:0:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:0:a00~0_combout\ = !\cmpLab07|nOfSeqDetec|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	combout => \cmpLab07|nOfSeqDetec|gen00:0:a00~0_combout\);

-- Location: LCCOMB_X67_Y46_N22
\cmpLab07|nOfSeqDetec|gen00:0:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:0:a00~feeder_combout\ = \cmpLab07|nOfSeqDetec|gen00:0:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmpLab07|nOfSeqDetec|gen00:0:a00~0_combout\,
	combout => \cmpLab07|nOfSeqDetec|gen00:0:a00~feeder_combout\);

-- Location: FF_X67_Y46_N23
\cmpLab07|nOfSeqDetec|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|SeqDetected~combout\,
	d => \cmpLab07|nOfSeqDetec|gen00:0:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\);

-- Location: LCCOMB_X67_Y46_N24
\cmpLab07|nOfSeqDetec|gen00:1:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:1:a00~0_combout\ = !\cmpLab07|nOfSeqDetec|gen00:1:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	combout => \cmpLab07|nOfSeqDetec|gen00:1:a00~0_combout\);

-- Location: LCCOMB_X67_Y46_N28
\cmpLab07|nOfSeqDetec|gen00:1:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:1:a00~feeder_combout\ = \cmpLab07|nOfSeqDetec|gen00:1:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:1:a00~0_combout\,
	combout => \cmpLab07|nOfSeqDetec|gen00:1:a00~feeder_combout\);

-- Location: FF_X67_Y46_N29
\cmpLab07|nOfSeqDetec|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|nOfSeqDetec|ALT_INV_gen00:0:a00~q\,
	d => \cmpLab07|nOfSeqDetec|gen00:1:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\);

-- Location: LCCOMB_X71_Y42_N10
\cmpLab07|nOfSeqDetec|gen00:2:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:2:a00~0_combout\ = !\cmpLab07|nOfSeqDetec|gen00:2:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	combout => \cmpLab07|nOfSeqDetec|gen00:2:a00~0_combout\);

-- Location: LCCOMB_X71_Y42_N24
\cmpLab07|nOfSeqDetec|gen00:2:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:2:a00~feeder_combout\ = \cmpLab07|nOfSeqDetec|gen00:2:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~0_combout\,
	combout => \cmpLab07|nOfSeqDetec|gen00:2:a00~feeder_combout\);

-- Location: FF_X71_Y42_N25
\cmpLab07|nOfSeqDetec|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|nOfSeqDetec|ALT_INV_gen00:1:a00~q\,
	d => \cmpLab07|nOfSeqDetec|gen00:2:a00~feeder_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\);

-- Location: LCCOMB_X71_Y42_N18
\cmpLab07|nOfSeqDetec|gen00:3:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmpLab07|nOfSeqDetec|gen00:3:a00~0_combout\ = !\cmpLab07|nOfSeqDetec|gen00:3:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \cmpLab07|nOfSeqDetec|gen00:3:a00~0_combout\);

-- Location: FF_X71_Y42_N19
\cmpLab07|nOfSeqDetec|gen00:3:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmpLab07|nOfSeqDetec|ALT_INV_gen00:2:a00~q\,
	d => \cmpLab07|nOfSeqDetec|gen00:3:a00~0_combout\,
	clrn => \PB1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\);

-- Location: LCCOMB_X71_Y42_N6
\Q0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~0_combout\ = (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & (!\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ $ (!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\)))) # (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & 
-- (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ $ (!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~0_combout\);

-- Location: LCCOMB_X71_Y42_N26
\Q0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~1_combout\ = (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & ((\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & ((\cmpLab07|nOfSeqDetec|gen00:3:a00~q\))) # (!\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\)))) # 
-- (!\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ $ (\cmpLab07|nOfSeqDetec|gen00:3:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~1_combout\);

-- Location: LCCOMB_X71_Y42_N30
\Q0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~2_combout\ = (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:3:a00~q\ & ((\cmpLab07|nOfSeqDetec|gen00:1:a00~q\) # (!\cmpLab07|nOfSeqDetec|gen00:0:a00~q\)))) # (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & 
-- (!\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & !\cmpLab07|nOfSeqDetec|gen00:3:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~2_combout\);

-- Location: LCCOMB_X71_Y42_N14
\Q0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~3_combout\ = (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & ((\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\)) # (!\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & 
-- \cmpLab07|nOfSeqDetec|gen00:3:a00~q\)))) # (!\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & (!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ $ (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~3_combout\);

-- Location: LCCOMB_X71_Y42_N12
\Q0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~4_combout\ = (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & ((!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\)))) # (!\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & ((\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & 
-- ((!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\))) # (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~4_combout\);

-- Location: LCCOMB_X71_Y42_N4
\Q0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~5_combout\ = (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:3:a00~q\ $ (((\cmpLab07|nOfSeqDetec|gen00:1:a00~q\) # (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\))))) # (!\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & 
-- (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ & !\cmpLab07|nOfSeqDetec|gen00:3:a00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~5_combout\);

-- Location: LCCOMB_X71_Y42_N22
\Q0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q0|D~6_combout\ = (\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & (!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ $ (!\cmpLab07|nOfSeqDetec|gen00:2:a00~q\)))) # (!\cmpLab07|nOfSeqDetec|gen00:0:a00~q\ & 
-- (!\cmpLab07|nOfSeqDetec|gen00:1:a00~q\ & (\cmpLab07|nOfSeqDetec|gen00:2:a00~q\ $ (!\cmpLab07|nOfSeqDetec|gen00:3:a00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmpLab07|nOfSeqDetec|gen00:0:a00~q\,
	datab => \cmpLab07|nOfSeqDetec|gen00:1:a00~q\,
	datac => \cmpLab07|nOfSeqDetec|gen00:2:a00~q\,
	datad => \cmpLab07|nOfSeqDetec|gen00:3:a00~q\,
	combout => \Q0|D~6_combout\);

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

ww_LED0 <= \LED0~output_o\;

ww_A0dec(0) <= \A0dec[0]~output_o\;

ww_A0dec(1) <= \A0dec[1]~output_o\;

ww_A0dec(2) <= \A0dec[2]~output_o\;

ww_A0dec(3) <= \A0dec[3]~output_o\;

ww_A0dec(4) <= \A0dec[4]~output_o\;

ww_A0dec(5) <= \A0dec[5]~output_o\;

ww_A0dec(6) <= \A0dec[6]~output_o\;

ww_A0dec(7) <= \A0dec[7]~output_o\;

ww_A1dec(0) <= \A1dec[0]~output_o\;

ww_A1dec(1) <= \A1dec[1]~output_o\;

ww_A1dec(2) <= \A1dec[2]~output_o\;

ww_A1dec(3) <= \A1dec[3]~output_o\;

ww_A1dec(4) <= \A1dec[4]~output_o\;

ww_A1dec(5) <= \A1dec[5]~output_o\;

ww_A1dec(6) <= \A1dec[6]~output_o\;

ww_A1dec(7) <= \A1dec[7]~output_o\;

ww_B0dec(0) <= \B0dec[0]~output_o\;

ww_B0dec(1) <= \B0dec[1]~output_o\;

ww_B0dec(2) <= \B0dec[2]~output_o\;

ww_B0dec(3) <= \B0dec[3]~output_o\;

ww_B0dec(4) <= \B0dec[4]~output_o\;

ww_B0dec(5) <= \B0dec[5]~output_o\;

ww_B0dec(6) <= \B0dec[6]~output_o\;

ww_B0dec(7) <= \B0dec[7]~output_o\;

ww_B1dec(0) <= \B1dec[0]~output_o\;

ww_B1dec(1) <= \B1dec[1]~output_o\;

ww_B1dec(2) <= \B1dec[2]~output_o\;

ww_B1dec(3) <= \B1dec[3]~output_o\;

ww_B1dec(4) <= \B1dec[4]~output_o\;

ww_B1dec(5) <= \B1dec[5]~output_o\;

ww_B1dec(6) <= \B1dec[6]~output_o\;

ww_B1dec(7) <= \B1dec[7]~output_o\;

ww_C0dec(0) <= \C0dec[0]~output_o\;

ww_C0dec(1) <= \C0dec[1]~output_o\;

ww_C0dec(2) <= \C0dec[2]~output_o\;

ww_C0dec(3) <= \C0dec[3]~output_o\;

ww_C0dec(4) <= \C0dec[4]~output_o\;

ww_C0dec(5) <= \C0dec[5]~output_o\;

ww_C0dec(6) <= \C0dec[6]~output_o\;

ww_C0dec(7) <= \C0dec[7]~output_o\;

ww_Q0dec(0) <= \Q0dec[0]~output_o\;

ww_Q0dec(1) <= \Q0dec[1]~output_o\;

ww_Q0dec(2) <= \Q0dec[2]~output_o\;

ww_Q0dec(3) <= \Q0dec[3]~output_o\;

ww_Q0dec(4) <= \Q0dec[4]~output_o\;

ww_Q0dec(5) <= \Q0dec[5]~output_o\;

ww_Q0dec(6) <= \Q0dec[6]~output_o\;

ww_Q0dec(7) <= \Q0dec[7]~output_o\;
END structure;


