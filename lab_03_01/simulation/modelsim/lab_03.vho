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

-- DATE "09/28/2023 15:07:46"

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

ENTITY 	PISOtoSIPOmod8dec IS
    PORT (
	N_in : IN std_logic_vector(7 DOWNTO 0);
	A0_out : BUFFER std_logic_vector(7 DOWNTO 0);
	A1_out : BUFFER std_logic_vector(7 DOWNTO 0);
	B0_out : BUFFER std_logic_vector(7 DOWNTO 0);
	B1_out : BUFFER std_logic_vector(7 DOWNTO 0);
	LED_out : BUFFER std_logic_vector(7 DOWNTO 0);
	clk_led : BUFFER std_logic;
	clk : IN std_logic;
	PB0 : IN std_logic;
	PB1 : IN std_logic
	);
END PISOtoSIPOmod8dec;

-- Design Ports Information
-- A0_out[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_out[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_out[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0_out[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_out[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_led	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_in[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PISOtoSIPOmod8dec IS
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
SIGNAL ww_A0_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B0_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_led : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \aa0|count00|gen00:2:a00~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tr0|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A0_out[0]~output_o\ : std_logic;
SIGNAL \A0_out[1]~output_o\ : std_logic;
SIGNAL \A0_out[2]~output_o\ : std_logic;
SIGNAL \A0_out[3]~output_o\ : std_logic;
SIGNAL \A0_out[4]~output_o\ : std_logic;
SIGNAL \A0_out[5]~output_o\ : std_logic;
SIGNAL \A0_out[6]~output_o\ : std_logic;
SIGNAL \A0_out[7]~output_o\ : std_logic;
SIGNAL \A1_out[0]~output_o\ : std_logic;
SIGNAL \A1_out[1]~output_o\ : std_logic;
SIGNAL \A1_out[2]~output_o\ : std_logic;
SIGNAL \A1_out[3]~output_o\ : std_logic;
SIGNAL \A1_out[4]~output_o\ : std_logic;
SIGNAL \A1_out[5]~output_o\ : std_logic;
SIGNAL \A1_out[6]~output_o\ : std_logic;
SIGNAL \A1_out[7]~output_o\ : std_logic;
SIGNAL \B0_out[0]~output_o\ : std_logic;
SIGNAL \B0_out[1]~output_o\ : std_logic;
SIGNAL \B0_out[2]~output_o\ : std_logic;
SIGNAL \B0_out[3]~output_o\ : std_logic;
SIGNAL \B0_out[4]~output_o\ : std_logic;
SIGNAL \B0_out[5]~output_o\ : std_logic;
SIGNAL \B0_out[6]~output_o\ : std_logic;
SIGNAL \B0_out[7]~output_o\ : std_logic;
SIGNAL \B1_out[0]~output_o\ : std_logic;
SIGNAL \B1_out[1]~output_o\ : std_logic;
SIGNAL \B1_out[2]~output_o\ : std_logic;
SIGNAL \B1_out[3]~output_o\ : std_logic;
SIGNAL \B1_out[4]~output_o\ : std_logic;
SIGNAL \B1_out[5]~output_o\ : std_logic;
SIGNAL \B1_out[6]~output_o\ : std_logic;
SIGNAL \B1_out[7]~output_o\ : std_logic;
SIGNAL \LED_out[0]~output_o\ : std_logic;
SIGNAL \LED_out[1]~output_o\ : std_logic;
SIGNAL \LED_out[2]~output_o\ : std_logic;
SIGNAL \LED_out[3]~output_o\ : std_logic;
SIGNAL \LED_out[4]~output_o\ : std_logic;
SIGNAL \LED_out[5]~output_o\ : std_logic;
SIGNAL \LED_out[6]~output_o\ : std_logic;
SIGNAL \LED_out[7]~output_o\ : std_logic;
SIGNAL \clk_led~output_o\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \N_in[1]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regin|gen00:1:aa00~q\ : std_logic;
SIGNAL \N_in[3]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:3:aa00~q\ : std_logic;
SIGNAL \N_in[0]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:0:aa00~q\ : std_logic;
SIGNAL \N_in[2]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regin|gen00:2:aa00~q\ : std_logic;
SIGNAL \decA0|D~0_combout\ : std_logic;
SIGNAL \decA0|D~1_combout\ : std_logic;
SIGNAL \decA0|D~2_combout\ : std_logic;
SIGNAL \decA0|D~3_combout\ : std_logic;
SIGNAL \decA0|D~4_combout\ : std_logic;
SIGNAL \decA0|D~5_combout\ : std_logic;
SIGNAL \decA0|D~6_combout\ : std_logic;
SIGNAL \N_in[6]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:6:aa00~q\ : std_logic;
SIGNAL \N_in[4]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:4:aa00~q\ : std_logic;
SIGNAL \N_in[7]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:7:aa00~q\ : std_logic;
SIGNAL \N_in[5]~input_o\ : std_logic;
SIGNAL \aa0|regin|gen00:5:aa00~q\ : std_logic;
SIGNAL \decA1|D~0_combout\ : std_logic;
SIGNAL \decA1|D~1_combout\ : std_logic;
SIGNAL \decA1|D~2_combout\ : std_logic;
SIGNAL \decA1|D~3_combout\ : std_logic;
SIGNAL \decA1|D~4_combout\ : std_logic;
SIGNAL \decA1|D~5_combout\ : std_logic;
SIGNAL \decA1|D~6_combout\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \aa0|dff01~1_combout\ : std_logic;
SIGNAL \aa0|dff01~0_combout\ : std_logic;
SIGNAL \aa0|dff01~_emulated_q\ : std_logic;
SIGNAL \aa0|dff01~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tr0|Add0~0_combout\ : std_logic;
SIGNAL \tr0|count[0]~18_combout\ : std_logic;
SIGNAL \tr0|Add0~1\ : std_logic;
SIGNAL \tr0|Add0~2_combout\ : std_logic;
SIGNAL \tr0|Add0~3\ : std_logic;
SIGNAL \tr0|Add0~4_combout\ : std_logic;
SIGNAL \tr0|Add0~5\ : std_logic;
SIGNAL \tr0|Add0~6_combout\ : std_logic;
SIGNAL \tr0|Add0~7\ : std_logic;
SIGNAL \tr0|Add0~8_combout\ : std_logic;
SIGNAL \tr0|Add0~9\ : std_logic;
SIGNAL \tr0|Add0~10_combout\ : std_logic;
SIGNAL \tr0|count~6_combout\ : std_logic;
SIGNAL \tr0|Add0~11\ : std_logic;
SIGNAL \tr0|Add0~12_combout\ : std_logic;
SIGNAL \tr0|Add0~13\ : std_logic;
SIGNAL \tr0|Add0~14_combout\ : std_logic;
SIGNAL \tr0|Add0~15\ : std_logic;
SIGNAL \tr0|Add0~16_combout\ : std_logic;
SIGNAL \tr0|Add0~17\ : std_logic;
SIGNAL \tr0|Add0~18_combout\ : std_logic;
SIGNAL \tr0|Add0~19\ : std_logic;
SIGNAL \tr0|Add0~20_combout\ : std_logic;
SIGNAL \tr0|count~7_combout\ : std_logic;
SIGNAL \tr0|Add0~21\ : std_logic;
SIGNAL \tr0|Add0~22_combout\ : std_logic;
SIGNAL \tr0|count~8_combout\ : std_logic;
SIGNAL \tr0|Add0~23\ : std_logic;
SIGNAL \tr0|Add0~24_combout\ : std_logic;
SIGNAL \tr0|count~9_combout\ : std_logic;
SIGNAL \tr0|Add0~25\ : std_logic;
SIGNAL \tr0|Add0~26_combout\ : std_logic;
SIGNAL \tr0|count~10_combout\ : std_logic;
SIGNAL \tr0|Add0~27\ : std_logic;
SIGNAL \tr0|Add0~28_combout\ : std_logic;
SIGNAL \tr0|Add0~29\ : std_logic;
SIGNAL \tr0|Add0~30_combout\ : std_logic;
SIGNAL \tr0|count~11_combout\ : std_logic;
SIGNAL \tr0|Equal0~3_combout\ : std_logic;
SIGNAL \tr0|Equal0~1_combout\ : std_logic;
SIGNAL \tr0|Equal0~2_combout\ : std_logic;
SIGNAL \tr0|Equal0~0_combout\ : std_logic;
SIGNAL \tr0|Equal0~4_combout\ : std_logic;
SIGNAL \tr0|Add0~31\ : std_logic;
SIGNAL \tr0|Add0~32_combout\ : std_logic;
SIGNAL \tr0|Add0~33\ : std_logic;
SIGNAL \tr0|Add0~34_combout\ : std_logic;
SIGNAL \tr0|count~12_combout\ : std_logic;
SIGNAL \tr0|Add0~35\ : std_logic;
SIGNAL \tr0|Add0~36_combout\ : std_logic;
SIGNAL \tr0|count~13_combout\ : std_logic;
SIGNAL \tr0|Add0~37\ : std_logic;
SIGNAL \tr0|Add0~38_combout\ : std_logic;
SIGNAL \tr0|count~14_combout\ : std_logic;
SIGNAL \tr0|Equal0~5_combout\ : std_logic;
SIGNAL \tr0|Add0~39\ : std_logic;
SIGNAL \tr0|Add0~40_combout\ : std_logic;
SIGNAL \tr0|count~15_combout\ : std_logic;
SIGNAL \tr0|Add0~41\ : std_logic;
SIGNAL \tr0|Add0~42_combout\ : std_logic;
SIGNAL \tr0|count~16_combout\ : std_logic;
SIGNAL \tr0|Add0~43\ : std_logic;
SIGNAL \tr0|Add0~44_combout\ : std_logic;
SIGNAL \tr0|Add0~45\ : std_logic;
SIGNAL \tr0|Add0~46_combout\ : std_logic;
SIGNAL \tr0|count~17_combout\ : std_logic;
SIGNAL \tr0|Equal0~6_combout\ : std_logic;
SIGNAL \tr0|Add0~47\ : std_logic;
SIGNAL \tr0|Add0~48_combout\ : std_logic;
SIGNAL \tr0|Add0~49\ : std_logic;
SIGNAL \tr0|Add0~50_combout\ : std_logic;
SIGNAL \tr0|Add0~51\ : std_logic;
SIGNAL \tr0|Add0~52_combout\ : std_logic;
SIGNAL \tr0|Add0~53\ : std_logic;
SIGNAL \tr0|Add0~54_combout\ : std_logic;
SIGNAL \tr0|Add0~55\ : std_logic;
SIGNAL \tr0|Add0~56_combout\ : std_logic;
SIGNAL \tr0|Add0~57\ : std_logic;
SIGNAL \tr0|Add0~58_combout\ : std_logic;
SIGNAL \tr0|Add0~59\ : std_logic;
SIGNAL \tr0|Add0~60_combout\ : std_logic;
SIGNAL \tr0|Add0~61\ : std_logic;
SIGNAL \tr0|Add0~62_combout\ : std_logic;
SIGNAL \tr0|Equal0~8_combout\ : std_logic;
SIGNAL \tr0|Equal0~7_combout\ : std_logic;
SIGNAL \tr0|Equal0~9_combout\ : std_logic;
SIGNAL \tr0|tmp~0_combout\ : std_logic;
SIGNAL \tr0|tmp~feeder_combout\ : std_logic;
SIGNAL \tr0|tmp~q\ : std_logic;
SIGNAL \aa0|ct_in~combout\ : std_logic;
SIGNAL \aa0|count00|gen00:0:a00~0_combout\ : std_logic;
SIGNAL \aa0|count00|gen00:0:a00~q\ : std_logic;
SIGNAL \aa0|count00|gen00:1:a00~0_combout\ : std_logic;
SIGNAL \aa0|count00|gen00:1:a00~feeder_combout\ : std_logic;
SIGNAL \aa0|count00|gen00:1:a00~q\ : std_logic;
SIGNAL \aa0|count00|gen00:2:a00~0_combout\ : std_logic;
SIGNAL \aa0|count00|gen00:2:a00~feeder_combout\ : std_logic;
SIGNAL \aa0|count00|gen00:2:a00~q\ : std_logic;
SIGNAL \aa0|count00|gen00:2:a00~clkctrl_outclk\ : std_logic;
SIGNAL \tr0|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \aa0|piso00|DM_s~7_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:0:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[1]~6_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:1:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[2]~5_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:2:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[3]~4_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:3:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[4]~3_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:4:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[5]~2_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:5:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[6]~1_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:6:aa01~q\ : std_logic;
SIGNAL \aa0|piso00|DM_s[7]~0_combout\ : std_logic;
SIGNAL \aa0|piso00|gen00:7:aa01~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:0:aa00~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:1:aa00~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:2:aa00~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:3:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:3:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:3:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:0:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:0:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:1:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:1:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:2:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:2:aa00~q\ : std_logic;
SIGNAL \decB0|D~0_combout\ : std_logic;
SIGNAL \decB0|D~1_combout\ : std_logic;
SIGNAL \decB0|D~2_combout\ : std_logic;
SIGNAL \decB0|D~3_combout\ : std_logic;
SIGNAL \decB0|D~4_combout\ : std_logic;
SIGNAL \decB0|D~5_combout\ : std_logic;
SIGNAL \decB0|D~6_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:4:aa00~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:5:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:5:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:5:aa00~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:6:aa00~q\ : std_logic;
SIGNAL \aa0|sipo00|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|sipo00|gen00:7:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:7:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:7:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:4:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:4:aa00~q\ : std_logic;
SIGNAL \aa0|regout|gen00:6:aa00~feeder_combout\ : std_logic;
SIGNAL \aa0|regout|gen00:6:aa00~q\ : std_logic;
SIGNAL \decB1|D~0_combout\ : std_logic;
SIGNAL \decB1|D~1_combout\ : std_logic;
SIGNAL \decB1|D~2_combout\ : std_logic;
SIGNAL \decB1|D~3_combout\ : std_logic;
SIGNAL \decB1|D~4_combout\ : std_logic;
SIGNAL \decB1|D~5_combout\ : std_logic;
SIGNAL \decB1|D~6_combout\ : std_logic;
SIGNAL \tr0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aa0|ALT_INV_dff01~0_combout\ : std_logic;
SIGNAL \aa0|count00|ALT_INV_gen00:0:a00~q\ : std_logic;
SIGNAL \aa0|count00|ALT_INV_gen00:1:a00~q\ : std_logic;
SIGNAL \aa0|count00|ALT_INV_gen00:2:a00~q\ : std_logic;
SIGNAL \tr0|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_N_in <= N_in;
A0_out <= ww_A0_out;
A1_out <= ww_A1_out;
B0_out <= ww_B0_out;
B1_out <= ww_B1_out;
LED_out <= ww_LED_out;
clk_led <= ww_clk_led;
ww_clk <= clk;
ww_PB0 <= PB0;
ww_PB1 <= PB1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\aa0|count00|gen00:2:a00~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \aa0|count00|gen00:2:a00~q\);

\tr0|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tr0|tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\aa0|ALT_INV_dff01~0_combout\ <= NOT \aa0|dff01~0_combout\;
\aa0|count00|ALT_INV_gen00:0:a00~q\ <= NOT \aa0|count00|gen00:0:a00~q\;
\aa0|count00|ALT_INV_gen00:1:a00~q\ <= NOT \aa0|count00|gen00:1:a00~q\;
\aa0|count00|ALT_INV_gen00:2:a00~q\ <= NOT \aa0|count00|gen00:2:a00~q\;
\tr0|ALT_INV_tmp~clkctrl_outclk\ <= NOT \tr0|tmp~clkctrl_outclk\;
\aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\ <= NOT \aa0|count00|gen00:2:a00~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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
\A0_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~0_combout\,
	devoe => ww_devoe,
	o => \A0_out[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\A0_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~1_combout\,
	devoe => ww_devoe,
	o => \A0_out[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\A0_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~2_combout\,
	devoe => ww_devoe,
	o => \A0_out[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\A0_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~3_combout\,
	devoe => ww_devoe,
	o => \A0_out[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\A0_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~4_combout\,
	devoe => ww_devoe,
	o => \A0_out[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\A0_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~5_combout\,
	devoe => ww_devoe,
	o => \A0_out[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\A0_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA0|D~6_combout\,
	devoe => ww_devoe,
	o => \A0_out[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\A0_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A0_out[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\A1_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~0_combout\,
	devoe => ww_devoe,
	o => \A1_out[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\A1_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~1_combout\,
	devoe => ww_devoe,
	o => \A1_out[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\A1_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~2_combout\,
	devoe => ww_devoe,
	o => \A1_out[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\A1_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~3_combout\,
	devoe => ww_devoe,
	o => \A1_out[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\A1_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~4_combout\,
	devoe => ww_devoe,
	o => \A1_out[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\A1_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~5_combout\,
	devoe => ww_devoe,
	o => \A1_out[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\A1_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decA1|D~6_combout\,
	devoe => ww_devoe,
	o => \A1_out[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\A1_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A1_out[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\B0_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~0_combout\,
	devoe => ww_devoe,
	o => \B0_out[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\B0_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~1_combout\,
	devoe => ww_devoe,
	o => \B0_out[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\B0_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~2_combout\,
	devoe => ww_devoe,
	o => \B0_out[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\B0_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~3_combout\,
	devoe => ww_devoe,
	o => \B0_out[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\B0_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~4_combout\,
	devoe => ww_devoe,
	o => \B0_out[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\B0_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~5_combout\,
	devoe => ww_devoe,
	o => \B0_out[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\B0_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB0|D~6_combout\,
	devoe => ww_devoe,
	o => \B0_out[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\B0_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B0_out[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\B1_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~0_combout\,
	devoe => ww_devoe,
	o => \B1_out[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\B1_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~1_combout\,
	devoe => ww_devoe,
	o => \B1_out[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\B1_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~2_combout\,
	devoe => ww_devoe,
	o => \B1_out[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\B1_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~3_combout\,
	devoe => ww_devoe,
	o => \B1_out[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\B1_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~4_combout\,
	devoe => ww_devoe,
	o => \B1_out[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\B1_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~5_combout\,
	devoe => ww_devoe,
	o => \B1_out[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\B1_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decB1|D~6_combout\,
	devoe => ww_devoe,
	o => \B1_out[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\B1_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B1_out[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LED_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:0:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LED_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:1:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LED_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:2:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LED_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:3:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LED_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:4:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LED_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:5:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LED_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:6:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LED_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aa0|sipo00|gen00:7:aa00~q\,
	devoe => ww_devoe,
	o => \LED_out[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\clk_led~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tr0|tmp~q\,
	devoe => ww_devoe,
	o => \clk_led~output_o\);

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

-- Location: IOIBUF_X51_Y54_N22
\N_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(1),
	o => \N_in[1]~input_o\);

-- Location: LCCOMB_X57_Y52_N6
\aa0|regin|gen00:1:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regin|gen00:1:aa00~feeder_combout\ = \N_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[1]~input_o\,
	combout => \aa0|regin|gen00:1:aa00~feeder_combout\);

-- Location: FF_X57_Y52_N7
\aa0|regin|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	d => \aa0|regin|gen00:1:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:1:aa00~q\);

-- Location: IOIBUF_X54_Y54_N29
\N_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(3),
	o => \N_in[3]~input_o\);

-- Location: FF_X58_Y52_N11
\aa0|regin|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	asdata => \N_in[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:3:aa00~q\);

-- Location: IOIBUF_X51_Y54_N29
\N_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(0),
	o => \N_in[0]~input_o\);

-- Location: FF_X58_Y52_N21
\aa0|regin|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	asdata => \N_in[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:0:aa00~q\);

-- Location: IOIBUF_X51_Y54_N1
\N_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(2),
	o => \N_in[2]~input_o\);

-- Location: LCCOMB_X57_Y52_N28
\aa0|regin|gen00:2:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regin|gen00:2:aa00~feeder_combout\ = \N_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \N_in[2]~input_o\,
	combout => \aa0|regin|gen00:2:aa00~feeder_combout\);

-- Location: FF_X57_Y52_N29
\aa0|regin|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	d => \aa0|regin|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:2:aa00~q\);

-- Location: LCCOMB_X58_Y52_N20
\decA0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~0_combout\ = (\aa0|regin|gen00:3:aa00~q\ & (\aa0|regin|gen00:0:aa00~q\ & (\aa0|regin|gen00:1:aa00~q\ $ (\aa0|regin|gen00:2:aa00~q\)))) # (!\aa0|regin|gen00:3:aa00~q\ & (!\aa0|regin|gen00:1:aa00~q\ & (\aa0|regin|gen00:0:aa00~q\ $ 
-- (\aa0|regin|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:1:aa00~q\,
	datab => \aa0|regin|gen00:3:aa00~q\,
	datac => \aa0|regin|gen00:0:aa00~q\,
	datad => \aa0|regin|gen00:2:aa00~q\,
	combout => \decA0|D~0_combout\);

-- Location: LCCOMB_X57_Y52_N0
\decA0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~1_combout\ = (\aa0|regin|gen00:1:aa00~q\ & ((\aa0|regin|gen00:0:aa00~q\ & ((\aa0|regin|gen00:3:aa00~q\))) # (!\aa0|regin|gen00:0:aa00~q\ & (\aa0|regin|gen00:2:aa00~q\)))) # (!\aa0|regin|gen00:1:aa00~q\ & (\aa0|regin|gen00:2:aa00~q\ & 
-- (\aa0|regin|gen00:0:aa00~q\ $ (\aa0|regin|gen00:3:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:1:aa00~q\,
	datab => \aa0|regin|gen00:2:aa00~q\,
	datac => \aa0|regin|gen00:0:aa00~q\,
	datad => \aa0|regin|gen00:3:aa00~q\,
	combout => \decA0|D~1_combout\);

-- Location: LCCOMB_X57_Y52_N18
\decA0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~2_combout\ = (\aa0|regin|gen00:2:aa00~q\ & (\aa0|regin|gen00:3:aa00~q\ & ((\aa0|regin|gen00:1:aa00~q\) # (!\aa0|regin|gen00:0:aa00~q\)))) # (!\aa0|regin|gen00:2:aa00~q\ & (\aa0|regin|gen00:1:aa00~q\ & (!\aa0|regin|gen00:0:aa00~q\ & 
-- !\aa0|regin|gen00:3:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:1:aa00~q\,
	datab => \aa0|regin|gen00:2:aa00~q\,
	datac => \aa0|regin|gen00:0:aa00~q\,
	datad => \aa0|regin|gen00:3:aa00~q\,
	combout => \decA0|D~2_combout\);

-- Location: LCCOMB_X58_Y52_N4
\decA0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~3_combout\ = (\aa0|regin|gen00:1:aa00~q\ & ((\aa0|regin|gen00:0:aa00~q\ & ((\aa0|regin|gen00:2:aa00~q\))) # (!\aa0|regin|gen00:0:aa00~q\ & (\aa0|regin|gen00:3:aa00~q\ & !\aa0|regin|gen00:2:aa00~q\)))) # (!\aa0|regin|gen00:1:aa00~q\ & 
-- (!\aa0|regin|gen00:3:aa00~q\ & (\aa0|regin|gen00:0:aa00~q\ $ (\aa0|regin|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:0:aa00~q\,
	datab => \aa0|regin|gen00:3:aa00~q\,
	datac => \aa0|regin|gen00:1:aa00~q\,
	datad => \aa0|regin|gen00:2:aa00~q\,
	combout => \decA0|D~3_combout\);

-- Location: LCCOMB_X57_Y52_N24
\decA0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~4_combout\ = (\aa0|regin|gen00:1:aa00~q\ & (((\aa0|regin|gen00:0:aa00~q\ & !\aa0|regin|gen00:3:aa00~q\)))) # (!\aa0|regin|gen00:1:aa00~q\ & ((\aa0|regin|gen00:2:aa00~q\ & ((!\aa0|regin|gen00:3:aa00~q\))) # (!\aa0|regin|gen00:2:aa00~q\ & 
-- (\aa0|regin|gen00:0:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:1:aa00~q\,
	datab => \aa0|regin|gen00:2:aa00~q\,
	datac => \aa0|regin|gen00:0:aa00~q\,
	datad => \aa0|regin|gen00:3:aa00~q\,
	combout => \decA0|D~4_combout\);

-- Location: LCCOMB_X57_Y52_N22
\decA0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~5_combout\ = (\aa0|regin|gen00:1:aa00~q\ & (!\aa0|regin|gen00:3:aa00~q\ & ((\aa0|regin|gen00:0:aa00~q\) # (!\aa0|regin|gen00:2:aa00~q\)))) # (!\aa0|regin|gen00:1:aa00~q\ & (\aa0|regin|gen00:0:aa00~q\ & (\aa0|regin|gen00:2:aa00~q\ $ 
-- (!\aa0|regin|gen00:3:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:1:aa00~q\,
	datab => \aa0|regin|gen00:2:aa00~q\,
	datac => \aa0|regin|gen00:0:aa00~q\,
	datad => \aa0|regin|gen00:3:aa00~q\,
	combout => \decA0|D~5_combout\);

-- Location: LCCOMB_X58_Y52_N10
\decA0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA0|D~6_combout\ = (\aa0|regin|gen00:0:aa00~q\ & (!\aa0|regin|gen00:3:aa00~q\ & (\aa0|regin|gen00:1:aa00~q\ $ (!\aa0|regin|gen00:2:aa00~q\)))) # (!\aa0|regin|gen00:0:aa00~q\ & (!\aa0|regin|gen00:1:aa00~q\ & (\aa0|regin|gen00:3:aa00~q\ $ 
-- (!\aa0|regin|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:0:aa00~q\,
	datab => \aa0|regin|gen00:1:aa00~q\,
	datac => \aa0|regin|gen00:3:aa00~q\,
	datad => \aa0|regin|gen00:2:aa00~q\,
	combout => \decA0|D~6_combout\);

-- Location: IOIBUF_X54_Y54_N15
\N_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(6),
	o => \N_in[6]~input_o\);

-- Location: FF_X58_Y52_N19
\aa0|regin|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	asdata => \N_in[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:6:aa00~q\);

-- Location: IOIBUF_X54_Y54_N22
\N_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(4),
	o => \N_in[4]~input_o\);

-- Location: FF_X58_Y52_N7
\aa0|regin|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	asdata => \N_in[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:4:aa00~q\);

-- Location: IOIBUF_X58_Y54_N29
\N_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(7),
	o => \N_in[7]~input_o\);

-- Location: FF_X58_Y52_N13
\aa0|regin|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	asdata => \N_in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:7:aa00~q\);

-- Location: IOIBUF_X49_Y54_N1
\N_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_in(5),
	o => \N_in[5]~input_o\);

-- Location: FF_X58_Y52_N25
\aa0|regin|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~input_o\,
	asdata => \N_in[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regin|gen00:5:aa00~q\);

-- Location: LCCOMB_X58_Y52_N2
\decA1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~0_combout\ = (\aa0|regin|gen00:6:aa00~q\ & (!\aa0|regin|gen00:5:aa00~q\ & (\aa0|regin|gen00:4:aa00~q\ $ (!\aa0|regin|gen00:7:aa00~q\)))) # (!\aa0|regin|gen00:6:aa00~q\ & (\aa0|regin|gen00:4:aa00~q\ & (\aa0|regin|gen00:7:aa00~q\ $ 
-- (!\aa0|regin|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:6:aa00~q\,
	datab => \aa0|regin|gen00:4:aa00~q\,
	datac => \aa0|regin|gen00:7:aa00~q\,
	datad => \aa0|regin|gen00:5:aa00~q\,
	combout => \decA1|D~0_combout\);

-- Location: LCCOMB_X58_Y52_N16
\decA1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~1_combout\ = (\aa0|regin|gen00:7:aa00~q\ & ((\aa0|regin|gen00:4:aa00~q\ & ((\aa0|regin|gen00:5:aa00~q\))) # (!\aa0|regin|gen00:4:aa00~q\ & (\aa0|regin|gen00:6:aa00~q\)))) # (!\aa0|regin|gen00:7:aa00~q\ & (\aa0|regin|gen00:6:aa00~q\ & 
-- (\aa0|regin|gen00:4:aa00~q\ $ (\aa0|regin|gen00:5:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:6:aa00~q\,
	datab => \aa0|regin|gen00:4:aa00~q\,
	datac => \aa0|regin|gen00:7:aa00~q\,
	datad => \aa0|regin|gen00:5:aa00~q\,
	combout => \decA1|D~1_combout\);

-- Location: LCCOMB_X58_Y52_N22
\decA1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~2_combout\ = (\aa0|regin|gen00:6:aa00~q\ & (\aa0|regin|gen00:7:aa00~q\ & ((\aa0|regin|gen00:5:aa00~q\) # (!\aa0|regin|gen00:4:aa00~q\)))) # (!\aa0|regin|gen00:6:aa00~q\ & (!\aa0|regin|gen00:4:aa00~q\ & (!\aa0|regin|gen00:7:aa00~q\ & 
-- \aa0|regin|gen00:5:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:6:aa00~q\,
	datab => \aa0|regin|gen00:4:aa00~q\,
	datac => \aa0|regin|gen00:7:aa00~q\,
	datad => \aa0|regin|gen00:5:aa00~q\,
	combout => \decA1|D~2_combout\);

-- Location: LCCOMB_X58_Y52_N6
\decA1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~3_combout\ = (\aa0|regin|gen00:5:aa00~q\ & ((\aa0|regin|gen00:4:aa00~q\ & ((\aa0|regin|gen00:6:aa00~q\))) # (!\aa0|regin|gen00:4:aa00~q\ & (\aa0|regin|gen00:7:aa00~q\ & !\aa0|regin|gen00:6:aa00~q\)))) # (!\aa0|regin|gen00:5:aa00~q\ & 
-- (!\aa0|regin|gen00:7:aa00~q\ & (\aa0|regin|gen00:4:aa00~q\ $ (\aa0|regin|gen00:6:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:7:aa00~q\,
	datab => \aa0|regin|gen00:5:aa00~q\,
	datac => \aa0|regin|gen00:4:aa00~q\,
	datad => \aa0|regin|gen00:6:aa00~q\,
	combout => \decA1|D~3_combout\);

-- Location: LCCOMB_X58_Y52_N12
\decA1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~4_combout\ = (\aa0|regin|gen00:5:aa00~q\ & (((\aa0|regin|gen00:4:aa00~q\ & !\aa0|regin|gen00:7:aa00~q\)))) # (!\aa0|regin|gen00:5:aa00~q\ & ((\aa0|regin|gen00:6:aa00~q\ & ((!\aa0|regin|gen00:7:aa00~q\))) # (!\aa0|regin|gen00:6:aa00~q\ & 
-- (\aa0|regin|gen00:4:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:6:aa00~q\,
	datab => \aa0|regin|gen00:4:aa00~q\,
	datac => \aa0|regin|gen00:7:aa00~q\,
	datad => \aa0|regin|gen00:5:aa00~q\,
	combout => \decA1|D~4_combout\);

-- Location: LCCOMB_X58_Y52_N18
\decA1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~5_combout\ = (\aa0|regin|gen00:4:aa00~q\ & (\aa0|regin|gen00:7:aa00~q\ $ (((\aa0|regin|gen00:5:aa00~q\) # (!\aa0|regin|gen00:6:aa00~q\))))) # (!\aa0|regin|gen00:4:aa00~q\ & (!\aa0|regin|gen00:7:aa00~q\ & (!\aa0|regin|gen00:6:aa00~q\ & 
-- \aa0|regin|gen00:5:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:7:aa00~q\,
	datab => \aa0|regin|gen00:4:aa00~q\,
	datac => \aa0|regin|gen00:6:aa00~q\,
	datad => \aa0|regin|gen00:5:aa00~q\,
	combout => \decA1|D~5_combout\);

-- Location: LCCOMB_X58_Y52_N24
\decA1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decA1|D~6_combout\ = (\aa0|regin|gen00:4:aa00~q\ & (!\aa0|regin|gen00:7:aa00~q\ & (\aa0|regin|gen00:5:aa00~q\ $ (!\aa0|regin|gen00:6:aa00~q\)))) # (!\aa0|regin|gen00:4:aa00~q\ & (!\aa0|regin|gen00:5:aa00~q\ & (\aa0|regin|gen00:7:aa00~q\ $ 
-- (!\aa0|regin|gen00:6:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regin|gen00:7:aa00~q\,
	datab => \aa0|regin|gen00:4:aa00~q\,
	datac => \aa0|regin|gen00:5:aa00~q\,
	datad => \aa0|regin|gen00:6:aa00~q\,
	combout => \decA1|D~6_combout\);

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

-- Location: LCCOMB_X47_Y51_N28
\aa0|dff01~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|dff01~1_combout\ = (\PB0~input_o\ & ((\aa0|dff01~1_combout\) # (!\PB1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \PB0~input_o\,
	datad => \aa0|dff01~1_combout\,
	combout => \aa0|dff01~1_combout\);

-- Location: LCCOMB_X47_Y53_N22
\aa0|dff01~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|dff01~0_combout\ = (!\PB0~input_o\) # (!\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datad => \PB0~input_o\,
	combout => \aa0|dff01~0_combout\);

-- Location: FF_X47_Y53_N23
\aa0|dff01~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~q\,
	asdata => \aa0|dff01~1_combout\,
	clrn => \aa0|ALT_INV_dff01~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|dff01~_emulated_q\);

-- Location: LCCOMB_X47_Y53_N30
\aa0|dff01~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|dff01~2_combout\ = (\PB0~input_o\ & ((\aa0|dff01~1_combout\ $ (\aa0|dff01~_emulated_q\)) # (!\PB1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datab => \aa0|dff01~1_combout\,
	datac => \PB0~input_o\,
	datad => \aa0|dff01~_emulated_q\,
	combout => \aa0|dff01~2_combout\);

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

-- Location: LCCOMB_X55_Y52_N0
\tr0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~0_combout\ = \tr0|count\(0) $ (GND)
-- \tr0|Add0~1\ = CARRY(!\tr0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(0),
	datad => VCC,
	combout => \tr0|Add0~0_combout\,
	cout => \tr0|Add0~1\);

-- Location: LCCOMB_X54_Y52_N6
\tr0|count[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count[0]~18_combout\ = !\tr0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tr0|Add0~0_combout\,
	combout => \tr0|count[0]~18_combout\);

-- Location: FF_X55_Y52_N25
\tr0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tr0|count[0]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(0));

-- Location: LCCOMB_X55_Y52_N2
\tr0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~2_combout\ = (\tr0|count\(1) & (!\tr0|Add0~1\)) # (!\tr0|count\(1) & ((\tr0|Add0~1\) # (GND)))
-- \tr0|Add0~3\ = CARRY((!\tr0|Add0~1\) # (!\tr0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(1),
	datad => VCC,
	cin => \tr0|Add0~1\,
	combout => \tr0|Add0~2_combout\,
	cout => \tr0|Add0~3\);

-- Location: FF_X55_Y52_N3
\tr0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(1));

-- Location: LCCOMB_X55_Y52_N4
\tr0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~4_combout\ = (\tr0|count\(2) & (\tr0|Add0~3\ $ (GND))) # (!\tr0|count\(2) & (!\tr0|Add0~3\ & VCC))
-- \tr0|Add0~5\ = CARRY((\tr0|count\(2) & !\tr0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(2),
	datad => VCC,
	cin => \tr0|Add0~3\,
	combout => \tr0|Add0~4_combout\,
	cout => \tr0|Add0~5\);

-- Location: FF_X55_Y52_N5
\tr0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(2));

-- Location: LCCOMB_X55_Y52_N6
\tr0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~6_combout\ = (\tr0|count\(3) & (!\tr0|Add0~5\)) # (!\tr0|count\(3) & ((\tr0|Add0~5\) # (GND)))
-- \tr0|Add0~7\ = CARRY((!\tr0|Add0~5\) # (!\tr0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(3),
	datad => VCC,
	cin => \tr0|Add0~5\,
	combout => \tr0|Add0~6_combout\,
	cout => \tr0|Add0~7\);

-- Location: FF_X55_Y52_N7
\tr0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(3));

-- Location: LCCOMB_X55_Y52_N8
\tr0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~8_combout\ = (\tr0|count\(4) & (\tr0|Add0~7\ $ (GND))) # (!\tr0|count\(4) & (!\tr0|Add0~7\ & VCC))
-- \tr0|Add0~9\ = CARRY((\tr0|count\(4) & !\tr0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(4),
	datad => VCC,
	cin => \tr0|Add0~7\,
	combout => \tr0|Add0~8_combout\,
	cout => \tr0|Add0~9\);

-- Location: FF_X55_Y52_N9
\tr0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(4));

-- Location: LCCOMB_X55_Y52_N10
\tr0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~10_combout\ = (\tr0|count\(5) & (!\tr0|Add0~9\)) # (!\tr0|count\(5) & ((\tr0|Add0~9\) # (GND)))
-- \tr0|Add0~11\ = CARRY((!\tr0|Add0~9\) # (!\tr0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(5),
	datad => VCC,
	cin => \tr0|Add0~9\,
	combout => \tr0|Add0~10_combout\,
	cout => \tr0|Add0~11\);

-- Location: LCCOMB_X54_Y52_N0
\tr0|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~6_combout\ = (\tr0|Add0~10_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datac => \tr0|Add0~10_combout\,
	datad => \tr0|Equal0~9_combout\,
	combout => \tr0|count~6_combout\);

-- Location: FF_X55_Y52_N1
\tr0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tr0|count~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(5));

-- Location: LCCOMB_X55_Y52_N12
\tr0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~12_combout\ = (\tr0|count\(6) & (\tr0|Add0~11\ $ (GND))) # (!\tr0|count\(6) & (!\tr0|Add0~11\ & VCC))
-- \tr0|Add0~13\ = CARRY((\tr0|count\(6) & !\tr0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(6),
	datad => VCC,
	cin => \tr0|Add0~11\,
	combout => \tr0|Add0~12_combout\,
	cout => \tr0|Add0~13\);

-- Location: FF_X55_Y52_N13
\tr0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(6));

-- Location: LCCOMB_X55_Y52_N14
\tr0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~14_combout\ = (\tr0|count\(7) & (!\tr0|Add0~13\)) # (!\tr0|count\(7) & ((\tr0|Add0~13\) # (GND)))
-- \tr0|Add0~15\ = CARRY((!\tr0|Add0~13\) # (!\tr0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(7),
	datad => VCC,
	cin => \tr0|Add0~13\,
	combout => \tr0|Add0~14_combout\,
	cout => \tr0|Add0~15\);

-- Location: FF_X55_Y52_N15
\tr0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(7));

-- Location: LCCOMB_X55_Y52_N16
\tr0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~16_combout\ = (\tr0|count\(8) & (\tr0|Add0~15\ $ (GND))) # (!\tr0|count\(8) & (!\tr0|Add0~15\ & VCC))
-- \tr0|Add0~17\ = CARRY((\tr0|count\(8) & !\tr0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(8),
	datad => VCC,
	cin => \tr0|Add0~15\,
	combout => \tr0|Add0~16_combout\,
	cout => \tr0|Add0~17\);

-- Location: FF_X55_Y52_N17
\tr0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(8));

-- Location: LCCOMB_X55_Y52_N18
\tr0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~18_combout\ = (\tr0|count\(9) & (!\tr0|Add0~17\)) # (!\tr0|count\(9) & ((\tr0|Add0~17\) # (GND)))
-- \tr0|Add0~19\ = CARRY((!\tr0|Add0~17\) # (!\tr0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(9),
	datad => VCC,
	cin => \tr0|Add0~17\,
	combout => \tr0|Add0~18_combout\,
	cout => \tr0|Add0~19\);

-- Location: FF_X55_Y52_N19
\tr0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(9));

-- Location: LCCOMB_X55_Y52_N20
\tr0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~20_combout\ = (\tr0|count\(10) & (\tr0|Add0~19\ $ (GND))) # (!\tr0|count\(10) & (!\tr0|Add0~19\ & VCC))
-- \tr0|Add0~21\ = CARRY((\tr0|count\(10) & !\tr0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(10),
	datad => VCC,
	cin => \tr0|Add0~19\,
	combout => \tr0|Add0~20_combout\,
	cout => \tr0|Add0~21\);

-- Location: LCCOMB_X54_Y52_N8
\tr0|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~7_combout\ = (\tr0|Add0~20_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Add0~20_combout\,
	combout => \tr0|count~7_combout\);

-- Location: FF_X54_Y52_N9
\tr0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(10));

-- Location: LCCOMB_X55_Y52_N22
\tr0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~22_combout\ = (\tr0|count\(11) & (!\tr0|Add0~21\)) # (!\tr0|count\(11) & ((\tr0|Add0~21\) # (GND)))
-- \tr0|Add0~23\ = CARRY((!\tr0|Add0~21\) # (!\tr0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(11),
	datad => VCC,
	cin => \tr0|Add0~21\,
	combout => \tr0|Add0~22_combout\,
	cout => \tr0|Add0~23\);

-- Location: LCCOMB_X54_Y52_N22
\tr0|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~8_combout\ = (\tr0|Add0~22_combout\ & ((!\tr0|Equal0~4_combout\) # (!\tr0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Equal0~4_combout\,
	datad => \tr0|Add0~22_combout\,
	combout => \tr0|count~8_combout\);

-- Location: FF_X54_Y52_N23
\tr0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(11));

-- Location: LCCOMB_X55_Y52_N24
\tr0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~24_combout\ = (\tr0|count\(12) & (\tr0|Add0~23\ $ (GND))) # (!\tr0|count\(12) & (!\tr0|Add0~23\ & VCC))
-- \tr0|Add0~25\ = CARRY((\tr0|count\(12) & !\tr0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(12),
	datad => VCC,
	cin => \tr0|Add0~23\,
	combout => \tr0|Add0~24_combout\,
	cout => \tr0|Add0~25\);

-- Location: LCCOMB_X54_Y52_N26
\tr0|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~9_combout\ = (\tr0|Add0~24_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datac => \tr0|Add0~24_combout\,
	datad => \tr0|Equal0~9_combout\,
	combout => \tr0|count~9_combout\);

-- Location: FF_X54_Y52_N27
\tr0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(12));

-- Location: LCCOMB_X55_Y52_N26
\tr0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~26_combout\ = (\tr0|count\(13) & (!\tr0|Add0~25\)) # (!\tr0|count\(13) & ((\tr0|Add0~25\) # (GND)))
-- \tr0|Add0~27\ = CARRY((!\tr0|Add0~25\) # (!\tr0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(13),
	datad => VCC,
	cin => \tr0|Add0~25\,
	combout => \tr0|Add0~26_combout\,
	cout => \tr0|Add0~27\);

-- Location: LCCOMB_X54_Y52_N16
\tr0|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~10_combout\ = (\tr0|Add0~26_combout\ & ((!\tr0|Equal0~4_combout\) # (!\tr0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Equal0~4_combout\,
	datad => \tr0|Add0~26_combout\,
	combout => \tr0|count~10_combout\);

-- Location: FF_X54_Y52_N17
\tr0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(13));

-- Location: LCCOMB_X55_Y52_N28
\tr0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~28_combout\ = (\tr0|count\(14) & (\tr0|Add0~27\ $ (GND))) # (!\tr0|count\(14) & (!\tr0|Add0~27\ & VCC))
-- \tr0|Add0~29\ = CARRY((\tr0|count\(14) & !\tr0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(14),
	datad => VCC,
	cin => \tr0|Add0~27\,
	combout => \tr0|Add0~28_combout\,
	cout => \tr0|Add0~29\);

-- Location: FF_X55_Y52_N29
\tr0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(14));

-- Location: LCCOMB_X55_Y52_N30
\tr0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~30_combout\ = (\tr0|count\(15) & (!\tr0|Add0~29\)) # (!\tr0|count\(15) & ((\tr0|Add0~29\) # (GND)))
-- \tr0|Add0~31\ = CARRY((!\tr0|Add0~29\) # (!\tr0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(15),
	datad => VCC,
	cin => \tr0|Add0~29\,
	combout => \tr0|Add0~30_combout\,
	cout => \tr0|Add0~31\);

-- Location: LCCOMB_X54_Y52_N14
\tr0|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~11_combout\ = (\tr0|Add0~30_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Add0~30_combout\,
	combout => \tr0|count~11_combout\);

-- Location: FF_X54_Y52_N15
\tr0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(15));

-- Location: LCCOMB_X54_Y52_N12
\tr0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~3_combout\ = (\tr0|count\(12) & (\tr0|count\(13) & (\tr0|count\(15) & !\tr0|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(12),
	datab => \tr0|count\(13),
	datac => \tr0|count\(15),
	datad => \tr0|count\(14),
	combout => \tr0|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y52_N18
\tr0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~1_combout\ = (!\tr0|count\(3) & (!\tr0|count\(4) & (!\tr0|count\(1) & !\tr0|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(3),
	datab => \tr0|count\(4),
	datac => \tr0|count\(1),
	datad => \tr0|count\(2),
	combout => \tr0|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y52_N4
\tr0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~2_combout\ = (\tr0|count\(11) & (!\tr0|count\(9) & (\tr0|count\(10) & \tr0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(11),
	datab => \tr0|count\(9),
	datac => \tr0|count\(10),
	datad => \tr0|count\(0),
	combout => \tr0|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y52_N24
\tr0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~0_combout\ = (!\tr0|count\(6) & (!\tr0|count\(7) & (\tr0|count\(5) & !\tr0|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(6),
	datab => \tr0|count\(7),
	datac => \tr0|count\(5),
	datad => \tr0|count\(8),
	combout => \tr0|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y52_N30
\tr0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~4_combout\ = (\tr0|Equal0~3_combout\ & (\tr0|Equal0~1_combout\ & (\tr0|Equal0~2_combout\ & \tr0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~3_combout\,
	datab => \tr0|Equal0~1_combout\,
	datac => \tr0|Equal0~2_combout\,
	datad => \tr0|Equal0~0_combout\,
	combout => \tr0|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y51_N0
\tr0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~32_combout\ = (\tr0|count\(16) & (\tr0|Add0~31\ $ (GND))) # (!\tr0|count\(16) & (!\tr0|Add0~31\ & VCC))
-- \tr0|Add0~33\ = CARRY((\tr0|count\(16) & !\tr0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(16),
	datad => VCC,
	cin => \tr0|Add0~31\,
	combout => \tr0|Add0~32_combout\,
	cout => \tr0|Add0~33\);

-- Location: FF_X55_Y51_N1
\tr0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(16));

-- Location: LCCOMB_X55_Y51_N2
\tr0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~34_combout\ = (\tr0|count\(17) & (!\tr0|Add0~33\)) # (!\tr0|count\(17) & ((\tr0|Add0~33\) # (GND)))
-- \tr0|Add0~35\ = CARRY((!\tr0|Add0~33\) # (!\tr0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(17),
	datad => VCC,
	cin => \tr0|Add0~33\,
	combout => \tr0|Add0~34_combout\,
	cout => \tr0|Add0~35\);

-- Location: LCCOMB_X54_Y51_N16
\tr0|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~12_combout\ = (\tr0|Add0~34_combout\ & ((!\tr0|Equal0~4_combout\) # (!\tr0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Equal0~4_combout\,
	datad => \tr0|Add0~34_combout\,
	combout => \tr0|count~12_combout\);

-- Location: FF_X54_Y51_N17
\tr0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(17));

-- Location: LCCOMB_X55_Y51_N4
\tr0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~36_combout\ = (\tr0|count\(18) & (\tr0|Add0~35\ $ (GND))) # (!\tr0|count\(18) & (!\tr0|Add0~35\ & VCC))
-- \tr0|Add0~37\ = CARRY((\tr0|count\(18) & !\tr0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(18),
	datad => VCC,
	cin => \tr0|Add0~35\,
	combout => \tr0|Add0~36_combout\,
	cout => \tr0|Add0~37\);

-- Location: LCCOMB_X54_Y51_N6
\tr0|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~13_combout\ = (\tr0|Add0~36_combout\ & ((!\tr0|Equal0~4_combout\) # (!\tr0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Equal0~4_combout\,
	datad => \tr0|Add0~36_combout\,
	combout => \tr0|count~13_combout\);

-- Location: FF_X54_Y51_N7
\tr0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(18));

-- Location: LCCOMB_X55_Y51_N6
\tr0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~38_combout\ = (\tr0|count\(19) & (!\tr0|Add0~37\)) # (!\tr0|count\(19) & ((\tr0|Add0~37\) # (GND)))
-- \tr0|Add0~39\ = CARRY((!\tr0|Add0~37\) # (!\tr0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(19),
	datad => VCC,
	cin => \tr0|Add0~37\,
	combout => \tr0|Add0~38_combout\,
	cout => \tr0|Add0~39\);

-- Location: LCCOMB_X54_Y51_N4
\tr0|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~14_combout\ = (\tr0|Add0~38_combout\ & ((!\tr0|Equal0~4_combout\) # (!\tr0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr0|Equal0~9_combout\,
	datac => \tr0|Equal0~4_combout\,
	datad => \tr0|Add0~38_combout\,
	combout => \tr0|count~14_combout\);

-- Location: FF_X54_Y51_N5
\tr0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(19));

-- Location: LCCOMB_X54_Y51_N22
\tr0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~5_combout\ = (\tr0|count\(18) & (\tr0|count\(19) & (!\tr0|count\(16) & \tr0|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(18),
	datab => \tr0|count\(19),
	datac => \tr0|count\(16),
	datad => \tr0|count\(17),
	combout => \tr0|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y51_N8
\tr0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~40_combout\ = (\tr0|count\(20) & (\tr0|Add0~39\ $ (GND))) # (!\tr0|count\(20) & (!\tr0|Add0~39\ & VCC))
-- \tr0|Add0~41\ = CARRY((\tr0|count\(20) & !\tr0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(20),
	datad => VCC,
	cin => \tr0|Add0~39\,
	combout => \tr0|Add0~40_combout\,
	cout => \tr0|Add0~41\);

-- Location: LCCOMB_X54_Y51_N12
\tr0|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~15_combout\ = (\tr0|Add0~40_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datac => \tr0|Add0~40_combout\,
	datad => \tr0|Equal0~9_combout\,
	combout => \tr0|count~15_combout\);

-- Location: FF_X54_Y51_N13
\tr0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(20));

-- Location: LCCOMB_X55_Y51_N10
\tr0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~42_combout\ = (\tr0|count\(21) & (!\tr0|Add0~41\)) # (!\tr0|count\(21) & ((\tr0|Add0~41\) # (GND)))
-- \tr0|Add0~43\ = CARRY((!\tr0|Add0~41\) # (!\tr0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(21),
	datad => VCC,
	cin => \tr0|Add0~41\,
	combout => \tr0|Add0~42_combout\,
	cout => \tr0|Add0~43\);

-- Location: LCCOMB_X54_Y51_N26
\tr0|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~16_combout\ = (\tr0|Add0~42_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datac => \tr0|Add0~42_combout\,
	datad => \tr0|Equal0~9_combout\,
	combout => \tr0|count~16_combout\);

-- Location: FF_X54_Y51_N27
\tr0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(21));

-- Location: LCCOMB_X55_Y51_N12
\tr0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~44_combout\ = (\tr0|count\(22) & (\tr0|Add0~43\ $ (GND))) # (!\tr0|count\(22) & (!\tr0|Add0~43\ & VCC))
-- \tr0|Add0~45\ = CARRY((\tr0|count\(22) & !\tr0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(22),
	datad => VCC,
	cin => \tr0|Add0~43\,
	combout => \tr0|Add0~44_combout\,
	cout => \tr0|Add0~45\);

-- Location: FF_X55_Y51_N13
\tr0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(22));

-- Location: LCCOMB_X55_Y51_N14
\tr0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~46_combout\ = (\tr0|count\(23) & (!\tr0|Add0~45\)) # (!\tr0|count\(23) & ((\tr0|Add0~45\) # (GND)))
-- \tr0|Add0~47\ = CARRY((!\tr0|Add0~45\) # (!\tr0|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(23),
	datad => VCC,
	cin => \tr0|Add0~45\,
	combout => \tr0|Add0~46_combout\,
	cout => \tr0|Add0~47\);

-- Location: LCCOMB_X54_Y51_N24
\tr0|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|count~17_combout\ = (\tr0|Add0~46_combout\ & ((!\tr0|Equal0~9_combout\) # (!\tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~4_combout\,
	datac => \tr0|Add0~46_combout\,
	datad => \tr0|Equal0~9_combout\,
	combout => \tr0|count~17_combout\);

-- Location: FF_X54_Y51_N25
\tr0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(23));

-- Location: LCCOMB_X54_Y51_N18
\tr0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~6_combout\ = (\tr0|count\(21) & (\tr0|count\(23) & (!\tr0|count\(22) & \tr0|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(21),
	datab => \tr0|count\(23),
	datac => \tr0|count\(22),
	datad => \tr0|count\(20),
	combout => \tr0|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y51_N16
\tr0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~48_combout\ = (\tr0|count\(24) & (\tr0|Add0~47\ $ (GND))) # (!\tr0|count\(24) & (!\tr0|Add0~47\ & VCC))
-- \tr0|Add0~49\ = CARRY((\tr0|count\(24) & !\tr0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(24),
	datad => VCC,
	cin => \tr0|Add0~47\,
	combout => \tr0|Add0~48_combout\,
	cout => \tr0|Add0~49\);

-- Location: FF_X55_Y51_N17
\tr0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(24));

-- Location: LCCOMB_X55_Y51_N18
\tr0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~50_combout\ = (\tr0|count\(25) & (!\tr0|Add0~49\)) # (!\tr0|count\(25) & ((\tr0|Add0~49\) # (GND)))
-- \tr0|Add0~51\ = CARRY((!\tr0|Add0~49\) # (!\tr0|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(25),
	datad => VCC,
	cin => \tr0|Add0~49\,
	combout => \tr0|Add0~50_combout\,
	cout => \tr0|Add0~51\);

-- Location: FF_X55_Y51_N19
\tr0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(25));

-- Location: LCCOMB_X55_Y51_N20
\tr0|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~52_combout\ = (\tr0|count\(26) & (\tr0|Add0~51\ $ (GND))) # (!\tr0|count\(26) & (!\tr0|Add0~51\ & VCC))
-- \tr0|Add0~53\ = CARRY((\tr0|count\(26) & !\tr0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(26),
	datad => VCC,
	cin => \tr0|Add0~51\,
	combout => \tr0|Add0~52_combout\,
	cout => \tr0|Add0~53\);

-- Location: FF_X55_Y51_N21
\tr0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(26));

-- Location: LCCOMB_X55_Y51_N22
\tr0|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~54_combout\ = (\tr0|count\(27) & (!\tr0|Add0~53\)) # (!\tr0|count\(27) & ((\tr0|Add0~53\) # (GND)))
-- \tr0|Add0~55\ = CARRY((!\tr0|Add0~53\) # (!\tr0|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(27),
	datad => VCC,
	cin => \tr0|Add0~53\,
	combout => \tr0|Add0~54_combout\,
	cout => \tr0|Add0~55\);

-- Location: FF_X55_Y51_N23
\tr0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(27));

-- Location: LCCOMB_X55_Y51_N24
\tr0|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~56_combout\ = (\tr0|count\(28) & (\tr0|Add0~55\ $ (GND))) # (!\tr0|count\(28) & (!\tr0|Add0~55\ & VCC))
-- \tr0|Add0~57\ = CARRY((\tr0|count\(28) & !\tr0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(28),
	datad => VCC,
	cin => \tr0|Add0~55\,
	combout => \tr0|Add0~56_combout\,
	cout => \tr0|Add0~57\);

-- Location: FF_X55_Y51_N25
\tr0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(28));

-- Location: LCCOMB_X55_Y51_N26
\tr0|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~58_combout\ = (\tr0|count\(29) & (!\tr0|Add0~57\)) # (!\tr0|count\(29) & ((\tr0|Add0~57\) # (GND)))
-- \tr0|Add0~59\ = CARRY((!\tr0|Add0~57\) # (!\tr0|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(29),
	datad => VCC,
	cin => \tr0|Add0~57\,
	combout => \tr0|Add0~58_combout\,
	cout => \tr0|Add0~59\);

-- Location: FF_X55_Y51_N27
\tr0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(29));

-- Location: LCCOMB_X55_Y51_N28
\tr0|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~60_combout\ = (\tr0|count\(30) & (\tr0|Add0~59\ $ (GND))) # (!\tr0|count\(30) & (!\tr0|Add0~59\ & VCC))
-- \tr0|Add0~61\ = CARRY((\tr0|count\(30) & !\tr0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr0|count\(30),
	datad => VCC,
	cin => \tr0|Add0~59\,
	combout => \tr0|Add0~60_combout\,
	cout => \tr0|Add0~61\);

-- Location: FF_X55_Y51_N29
\tr0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(30));

-- Location: LCCOMB_X55_Y51_N30
\tr0|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Add0~62_combout\ = \tr0|count\(31) $ (\tr0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(31),
	cin => \tr0|Add0~61\,
	combout => \tr0|Add0~62_combout\);

-- Location: FF_X55_Y51_N31
\tr0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|count\(31));

-- Location: LCCOMB_X54_Y51_N14
\tr0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~8_combout\ = (!\tr0|count\(31) & (!\tr0|count\(30) & (!\tr0|count\(29) & !\tr0|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(31),
	datab => \tr0|count\(30),
	datac => \tr0|count\(29),
	datad => \tr0|count\(28),
	combout => \tr0|Equal0~8_combout\);

-- Location: LCCOMB_X54_Y51_N28
\tr0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~7_combout\ = (!\tr0|count\(26) & (!\tr0|count\(24) & (!\tr0|count\(27) & !\tr0|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|count\(26),
	datab => \tr0|count\(24),
	datac => \tr0|count\(27),
	datad => \tr0|count\(25),
	combout => \tr0|Equal0~7_combout\);

-- Location: LCCOMB_X54_Y51_N0
\tr0|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|Equal0~9_combout\ = (\tr0|Equal0~5_combout\ & (\tr0|Equal0~6_combout\ & (\tr0|Equal0~8_combout\ & \tr0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|Equal0~5_combout\,
	datab => \tr0|Equal0~6_combout\,
	datac => \tr0|Equal0~8_combout\,
	datad => \tr0|Equal0~7_combout\,
	combout => \tr0|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y52_N14
\tr0|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|tmp~0_combout\ = \tr0|tmp~q\ $ (((\tr0|Equal0~9_combout\ & \tr0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr0|tmp~q\,
	datac => \tr0|Equal0~9_combout\,
	datad => \tr0|Equal0~4_combout\,
	combout => \tr0|tmp~0_combout\);

-- Location: LCCOMB_X47_Y52_N28
\tr0|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tr0|tmp~feeder_combout\ = \tr0|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tr0|tmp~0_combout\,
	combout => \tr0|tmp~feeder_combout\);

-- Location: FF_X47_Y52_N29
\tr0|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr0|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr0|tmp~q\);

-- Location: LCCOMB_X47_Y52_N10
\aa0|ct_in\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|ct_in~combout\ = LCELL((\aa0|dff01~2_combout\ & (\PB1~input_o\ & !\tr0|tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|dff01~2_combout\,
	datab => \PB1~input_o\,
	datad => \tr0|tmp~q\,
	combout => \aa0|ct_in~combout\);

-- Location: LCCOMB_X47_Y52_N30
\aa0|count00|gen00:0:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|count00|gen00:0:a00~0_combout\ = !\aa0|count00|gen00:0:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|count00|gen00:0:a00~q\,
	combout => \aa0|count00|gen00:0:a00~0_combout\);

-- Location: FF_X47_Y52_N11
\aa0|count00|gen00:0:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|ct_in~combout\,
	asdata => \aa0|count00|gen00:0:a00~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|count00|gen00:0:a00~q\);

-- Location: LCCOMB_X46_Y53_N18
\aa0|count00|gen00:1:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|count00|gen00:1:a00~0_combout\ = !\aa0|count00|gen00:1:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|count00|gen00:1:a00~q\,
	combout => \aa0|count00|gen00:1:a00~0_combout\);

-- Location: LCCOMB_X46_Y53_N6
\aa0|count00|gen00:1:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|count00|gen00:1:a00~feeder_combout\ = \aa0|count00|gen00:1:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|count00|gen00:1:a00~0_combout\,
	combout => \aa0|count00|gen00:1:a00~feeder_combout\);

-- Location: FF_X46_Y53_N7
\aa0|count00|gen00:1:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:0:a00~q\,
	d => \aa0|count00|gen00:1:a00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|count00|gen00:1:a00~q\);

-- Location: LCCOMB_X47_Y53_N24
\aa0|count00|gen00:2:a00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|count00|gen00:2:a00~0_combout\ = !\aa0|count00|gen00:2:a00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|count00|gen00:2:a00~q\,
	combout => \aa0|count00|gen00:2:a00~0_combout\);

-- Location: LCCOMB_X47_Y53_N26
\aa0|count00|gen00:2:a00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|count00|gen00:2:a00~feeder_combout\ = \aa0|count00|gen00:2:a00~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|count00|gen00:2:a00~0_combout\,
	combout => \aa0|count00|gen00:2:a00~feeder_combout\);

-- Location: FF_X47_Y53_N27
\aa0|count00|gen00:2:a00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:1:a00~q\,
	d => \aa0|count00|gen00:2:a00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|count00|gen00:2:a00~q\);

-- Location: CLKCTRL_G13
\aa0|count00|gen00:2:a00~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aa0|count00|gen00:2:a00~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aa0|count00|gen00:2:a00~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\tr0|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tr0|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tr0|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y52_N14
\aa0|piso00|DM_s~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s~7_combout\ = (!\PB1~input_o\ & \aa0|regin|gen00:0:aa00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB1~input_o\,
	datad => \aa0|regin|gen00:0:aa00~q\,
	combout => \aa0|piso00|DM_s~7_combout\);

-- Location: FF_X58_Y52_N15
\aa0|piso00|gen00:0:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:0:aa01~q\);

-- Location: LCCOMB_X57_Y52_N30
\aa0|piso00|DM_s[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[1]~6_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:0:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:1:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \aa0|piso00|gen00:0:aa01~q\,
	datad => \aa0|regin|gen00:1:aa00~q\,
	combout => \aa0|piso00|DM_s[1]~6_combout\);

-- Location: FF_X57_Y52_N31
\aa0|piso00|gen00:1:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:1:aa01~q\);

-- Location: LCCOMB_X57_Y52_N16
\aa0|piso00|DM_s[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[2]~5_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:1:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:2:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|piso00|gen00:1:aa01~q\,
	datac => \PB1~input_o\,
	datad => \aa0|regin|gen00:2:aa00~q\,
	combout => \aa0|piso00|DM_s[2]~5_combout\);

-- Location: FF_X57_Y52_N17
\aa0|piso00|gen00:2:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:2:aa01~q\);

-- Location: LCCOMB_X58_Y52_N28
\aa0|piso00|DM_s[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[3]~4_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:2:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:3:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB1~input_o\,
	datac => \aa0|piso00|gen00:2:aa01~q\,
	datad => \aa0|regin|gen00:3:aa00~q\,
	combout => \aa0|piso00|DM_s[3]~4_combout\);

-- Location: FF_X58_Y52_N29
\aa0|piso00|gen00:3:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:3:aa01~q\);

-- Location: LCCOMB_X58_Y52_N26
\aa0|piso00|DM_s[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[4]~3_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:3:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:4:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|piso00|gen00:3:aa01~q\,
	datac => \PB1~input_o\,
	datad => \aa0|regin|gen00:4:aa00~q\,
	combout => \aa0|piso00|DM_s[4]~3_combout\);

-- Location: FF_X58_Y52_N27
\aa0|piso00|gen00:4:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:4:aa01~q\);

-- Location: LCCOMB_X58_Y52_N0
\aa0|piso00|DM_s[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[5]~2_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:4:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:5:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|piso00|gen00:4:aa01~q\,
	datac => \PB1~input_o\,
	datad => \aa0|regin|gen00:5:aa00~q\,
	combout => \aa0|piso00|DM_s[5]~2_combout\);

-- Location: FF_X58_Y52_N1
\aa0|piso00|gen00:5:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:5:aa01~q\);

-- Location: LCCOMB_X58_Y52_N30
\aa0|piso00|DM_s[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[6]~1_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:5:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:6:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|piso00|gen00:5:aa01~q\,
	datac => \PB1~input_o\,
	datad => \aa0|regin|gen00:6:aa00~q\,
	combout => \aa0|piso00|DM_s[6]~1_combout\);

-- Location: FF_X58_Y52_N31
\aa0|piso00|gen00:6:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:6:aa01~q\);

-- Location: LCCOMB_X58_Y52_N8
\aa0|piso00|DM_s[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|piso00|DM_s[7]~0_combout\ = (\PB1~input_o\ & (\aa0|piso00|gen00:6:aa01~q\)) # (!\PB1~input_o\ & ((\aa0|regin|gen00:7:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|piso00|gen00:6:aa01~q\,
	datac => \PB1~input_o\,
	datad => \aa0|regin|gen00:7:aa00~q\,
	combout => \aa0|piso00|DM_s[7]~0_combout\);

-- Location: FF_X58_Y52_N9
\aa0|piso00|gen00:7:aa01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|tmp~clkctrl_outclk\,
	d => \aa0|piso00|DM_s[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|piso00|gen00:7:aa01~q\);

-- Location: LCCOMB_X59_Y52_N6
\aa0|sipo00|gen00:0:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:0:aa00~feeder_combout\ = \aa0|piso00|gen00:7:aa01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aa0|piso00|gen00:7:aa01~q\,
	combout => \aa0|sipo00|gen00:0:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N7
\aa0|sipo00|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:0:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:0:aa00~q\);

-- Location: LCCOMB_X59_Y52_N24
\aa0|sipo00|gen00:1:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:1:aa00~feeder_combout\ = \aa0|sipo00|gen00:0:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|sipo00|gen00:0:aa00~q\,
	combout => \aa0|sipo00|gen00:1:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N25
\aa0|sipo00|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:1:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:1:aa00~q\);

-- Location: LCCOMB_X59_Y52_N2
\aa0|sipo00|gen00:2:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:2:aa00~feeder_combout\ = \aa0|sipo00|gen00:1:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|sipo00|gen00:1:aa00~q\,
	combout => \aa0|sipo00|gen00:2:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N3
\aa0|sipo00|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:2:aa00~q\);

-- Location: LCCOMB_X59_Y52_N20
\aa0|sipo00|gen00:3:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:3:aa00~feeder_combout\ = \aa0|sipo00|gen00:2:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|sipo00|gen00:2:aa00~q\,
	combout => \aa0|sipo00|gen00:3:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N21
\aa0|sipo00|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:3:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:3:aa00~q\);

-- Location: LCCOMB_X59_Y52_N26
\aa0|regout|gen00:3:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:3:aa00~feeder_combout\ = \aa0|sipo00|gen00:3:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:3:aa00~q\,
	combout => \aa0|regout|gen00:3:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N27
\aa0|regout|gen00:3:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:3:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:3:aa00~q\);

-- Location: LCCOMB_X59_Y52_N16
\aa0|regout|gen00:0:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:0:aa00~feeder_combout\ = \aa0|sipo00|gen00:0:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|sipo00|gen00:0:aa00~q\,
	combout => \aa0|regout|gen00:0:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N17
\aa0|regout|gen00:0:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:0:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:0:aa00~q\);

-- Location: LCCOMB_X59_Y52_N30
\aa0|regout|gen00:1:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:1:aa00~feeder_combout\ = \aa0|sipo00|gen00:1:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:1:aa00~q\,
	combout => \aa0|regout|gen00:1:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N31
\aa0|regout|gen00:1:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:1:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:1:aa00~q\);

-- Location: LCCOMB_X59_Y52_N0
\aa0|regout|gen00:2:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:2:aa00~feeder_combout\ = \aa0|sipo00|gen00:2:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:2:aa00~q\,
	combout => \aa0|regout|gen00:2:aa00~feeder_combout\);

-- Location: FF_X59_Y52_N1
\aa0|regout|gen00:2:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:2:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:2:aa00~q\);

-- Location: LCCOMB_X59_Y52_N4
\decB0|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~0_combout\ = (\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:0:aa00~q\ & (\aa0|regout|gen00:1:aa00~q\ $ (\aa0|regout|gen00:2:aa00~q\)))) # (!\aa0|regout|gen00:3:aa00~q\ & (!\aa0|regout|gen00:1:aa00~q\ & (\aa0|regout|gen00:0:aa00~q\ $ 
-- (\aa0|regout|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~0_combout\);

-- Location: LCCOMB_X59_Y52_N22
\decB0|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~1_combout\ = (\aa0|regout|gen00:3:aa00~q\ & ((\aa0|regout|gen00:0:aa00~q\ & (\aa0|regout|gen00:1:aa00~q\)) # (!\aa0|regout|gen00:0:aa00~q\ & ((\aa0|regout|gen00:2:aa00~q\))))) # (!\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:2:aa00~q\ & 
-- (\aa0|regout|gen00:0:aa00~q\ $ (\aa0|regout|gen00:1:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~1_combout\);

-- Location: LCCOMB_X59_Y52_N8
\decB0|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~2_combout\ = (\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:2:aa00~q\ & ((\aa0|regout|gen00:1:aa00~q\) # (!\aa0|regout|gen00:0:aa00~q\)))) # (!\aa0|regout|gen00:3:aa00~q\ & (!\aa0|regout|gen00:0:aa00~q\ & (\aa0|regout|gen00:1:aa00~q\ & 
-- !\aa0|regout|gen00:2:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~2_combout\);

-- Location: LCCOMB_X59_Y52_N18
\decB0|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~3_combout\ = (\aa0|regout|gen00:1:aa00~q\ & ((\aa0|regout|gen00:0:aa00~q\ & ((\aa0|regout|gen00:2:aa00~q\))) # (!\aa0|regout|gen00:0:aa00~q\ & (\aa0|regout|gen00:3:aa00~q\ & !\aa0|regout|gen00:2:aa00~q\)))) # (!\aa0|regout|gen00:1:aa00~q\ & 
-- (!\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:0:aa00~q\ $ (\aa0|regout|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~3_combout\);

-- Location: LCCOMB_X59_Y52_N28
\decB0|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~4_combout\ = (\aa0|regout|gen00:1:aa00~q\ & (!\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:0:aa00~q\))) # (!\aa0|regout|gen00:1:aa00~q\ & ((\aa0|regout|gen00:2:aa00~q\ & (!\aa0|regout|gen00:3:aa00~q\)) # (!\aa0|regout|gen00:2:aa00~q\ & 
-- ((\aa0|regout|gen00:0:aa00~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~4_combout\);

-- Location: LCCOMB_X59_Y52_N10
\decB0|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~5_combout\ = (\aa0|regout|gen00:0:aa00~q\ & (\aa0|regout|gen00:3:aa00~q\ $ (((\aa0|regout|gen00:1:aa00~q\) # (!\aa0|regout|gen00:2:aa00~q\))))) # (!\aa0|regout|gen00:0:aa00~q\ & (!\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:1:aa00~q\ & 
-- !\aa0|regout|gen00:2:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~5_combout\);

-- Location: LCCOMB_X59_Y52_N12
\decB0|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB0|D~6_combout\ = (\aa0|regout|gen00:0:aa00~q\ & (!\aa0|regout|gen00:3:aa00~q\ & (\aa0|regout|gen00:1:aa00~q\ $ (!\aa0|regout|gen00:2:aa00~q\)))) # (!\aa0|regout|gen00:0:aa00~q\ & (!\aa0|regout|gen00:1:aa00~q\ & (\aa0|regout|gen00:3:aa00~q\ $ 
-- (!\aa0|regout|gen00:2:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:3:aa00~q\,
	datab => \aa0|regout|gen00:0:aa00~q\,
	datac => \aa0|regout|gen00:1:aa00~q\,
	datad => \aa0|regout|gen00:2:aa00~q\,
	combout => \decB0|D~6_combout\);

-- Location: LCCOMB_X63_Y50_N14
\aa0|sipo00|gen00:4:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:4:aa00~feeder_combout\ = \aa0|sipo00|gen00:3:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aa0|sipo00|gen00:3:aa00~q\,
	combout => \aa0|sipo00|gen00:4:aa00~feeder_combout\);

-- Location: FF_X63_Y50_N15
\aa0|sipo00|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:4:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:4:aa00~q\);

-- Location: LCCOMB_X67_Y50_N20
\aa0|sipo00|gen00:5:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:5:aa00~feeder_combout\ = \aa0|sipo00|gen00:4:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aa0|sipo00|gen00:4:aa00~q\,
	combout => \aa0|sipo00|gen00:5:aa00~feeder_combout\);

-- Location: FF_X67_Y50_N21
\aa0|sipo00|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:5:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:5:aa00~q\);

-- Location: LCCOMB_X67_Y50_N12
\aa0|regout|gen00:5:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:5:aa00~feeder_combout\ = \aa0|sipo00|gen00:5:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:5:aa00~q\,
	combout => \aa0|regout|gen00:5:aa00~feeder_combout\);

-- Location: FF_X67_Y50_N13
\aa0|regout|gen00:5:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:5:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:5:aa00~q\);

-- Location: LCCOMB_X67_Y50_N2
\aa0|sipo00|gen00:6:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:6:aa00~feeder_combout\ = \aa0|sipo00|gen00:5:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|sipo00|gen00:5:aa00~q\,
	combout => \aa0|sipo00|gen00:6:aa00~feeder_combout\);

-- Location: FF_X67_Y50_N3
\aa0|sipo00|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:6:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:6:aa00~q\);

-- Location: LCCOMB_X67_Y50_N24
\aa0|sipo00|gen00:7:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|sipo00|gen00:7:aa00~feeder_combout\ = \aa0|sipo00|gen00:6:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aa0|sipo00|gen00:6:aa00~q\,
	combout => \aa0|sipo00|gen00:7:aa00~feeder_combout\);

-- Location: FF_X67_Y50_N25
\aa0|sipo00|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr0|ALT_INV_tmp~clkctrl_outclk\,
	d => \aa0|sipo00|gen00:7:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|sipo00|gen00:7:aa00~q\);

-- Location: LCCOMB_X67_Y50_N16
\aa0|regout|gen00:7:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:7:aa00~feeder_combout\ = \aa0|sipo00|gen00:7:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:7:aa00~q\,
	combout => \aa0|regout|gen00:7:aa00~feeder_combout\);

-- Location: FF_X67_Y50_N17
\aa0|regout|gen00:7:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:7:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:7:aa00~q\);

-- Location: LCCOMB_X63_Y50_N12
\aa0|regout|gen00:4:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:4:aa00~feeder_combout\ = \aa0|sipo00|gen00:4:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:4:aa00~q\,
	combout => \aa0|regout|gen00:4:aa00~feeder_combout\);

-- Location: FF_X63_Y50_N13
\aa0|regout|gen00:4:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:4:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:4:aa00~q\);

-- Location: LCCOMB_X67_Y50_N18
\aa0|regout|gen00:6:aa00~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aa0|regout|gen00:6:aa00~feeder_combout\ = \aa0|sipo00|gen00:6:aa00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aa0|sipo00|gen00:6:aa00~q\,
	combout => \aa0|regout|gen00:6:aa00~feeder_combout\);

-- Location: FF_X67_Y50_N19
\aa0|regout|gen00:6:aa00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \aa0|count00|ALT_INV_gen00:2:a00~clkctrl_outclk\,
	d => \aa0|regout|gen00:6:aa00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aa0|regout|gen00:6:aa00~q\);

-- Location: LCCOMB_X67_Y50_N30
\decB1|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~0_combout\ = (\aa0|regout|gen00:7:aa00~q\ & (\aa0|regout|gen00:4:aa00~q\ & (\aa0|regout|gen00:5:aa00~q\ $ (\aa0|regout|gen00:6:aa00~q\)))) # (!\aa0|regout|gen00:7:aa00~q\ & (!\aa0|regout|gen00:5:aa00~q\ & (\aa0|regout|gen00:4:aa00~q\ $ 
-- (\aa0|regout|gen00:6:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~0_combout\);

-- Location: LCCOMB_X67_Y50_N28
\decB1|D~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~1_combout\ = (\aa0|regout|gen00:5:aa00~q\ & ((\aa0|regout|gen00:4:aa00~q\ & (\aa0|regout|gen00:7:aa00~q\)) # (!\aa0|regout|gen00:4:aa00~q\ & ((\aa0|regout|gen00:6:aa00~q\))))) # (!\aa0|regout|gen00:5:aa00~q\ & (\aa0|regout|gen00:6:aa00~q\ & 
-- (\aa0|regout|gen00:7:aa00~q\ $ (\aa0|regout|gen00:4:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~1_combout\);

-- Location: LCCOMB_X67_Y50_N22
\decB1|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~2_combout\ = (\aa0|regout|gen00:7:aa00~q\ & (\aa0|regout|gen00:6:aa00~q\ & ((\aa0|regout|gen00:5:aa00~q\) # (!\aa0|regout|gen00:4:aa00~q\)))) # (!\aa0|regout|gen00:7:aa00~q\ & (\aa0|regout|gen00:5:aa00~q\ & (!\aa0|regout|gen00:4:aa00~q\ & 
-- !\aa0|regout|gen00:6:aa00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~2_combout\);

-- Location: LCCOMB_X67_Y50_N4
\decB1|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~3_combout\ = (\aa0|regout|gen00:5:aa00~q\ & ((\aa0|regout|gen00:4:aa00~q\ & ((\aa0|regout|gen00:6:aa00~q\))) # (!\aa0|regout|gen00:4:aa00~q\ & (\aa0|regout|gen00:7:aa00~q\ & !\aa0|regout|gen00:6:aa00~q\)))) # (!\aa0|regout|gen00:5:aa00~q\ & 
-- (!\aa0|regout|gen00:7:aa00~q\ & (\aa0|regout|gen00:4:aa00~q\ $ (\aa0|regout|gen00:6:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~3_combout\);

-- Location: LCCOMB_X67_Y50_N26
\decB1|D~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~4_combout\ = (\aa0|regout|gen00:5:aa00~q\ & (!\aa0|regout|gen00:7:aa00~q\ & (\aa0|regout|gen00:4:aa00~q\))) # (!\aa0|regout|gen00:5:aa00~q\ & ((\aa0|regout|gen00:6:aa00~q\ & (!\aa0|regout|gen00:7:aa00~q\)) # (!\aa0|regout|gen00:6:aa00~q\ & 
-- ((\aa0|regout|gen00:4:aa00~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~4_combout\);

-- Location: LCCOMB_X67_Y50_N0
\decB1|D~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~5_combout\ = (\aa0|regout|gen00:5:aa00~q\ & (!\aa0|regout|gen00:7:aa00~q\ & ((\aa0|regout|gen00:4:aa00~q\) # (!\aa0|regout|gen00:6:aa00~q\)))) # (!\aa0|regout|gen00:5:aa00~q\ & (\aa0|regout|gen00:4:aa00~q\ & (\aa0|regout|gen00:7:aa00~q\ $ 
-- (!\aa0|regout|gen00:6:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~5_combout\);

-- Location: LCCOMB_X67_Y50_N14
\decB1|D~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decB1|D~6_combout\ = (\aa0|regout|gen00:4:aa00~q\ & (!\aa0|regout|gen00:7:aa00~q\ & (\aa0|regout|gen00:5:aa00~q\ $ (!\aa0|regout|gen00:6:aa00~q\)))) # (!\aa0|regout|gen00:4:aa00~q\ & (!\aa0|regout|gen00:5:aa00~q\ & (\aa0|regout|gen00:7:aa00~q\ $ 
-- (!\aa0|regout|gen00:6:aa00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aa0|regout|gen00:5:aa00~q\,
	datab => \aa0|regout|gen00:7:aa00~q\,
	datac => \aa0|regout|gen00:4:aa00~q\,
	datad => \aa0|regout|gen00:6:aa00~q\,
	combout => \decB1|D~6_combout\);

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

ww_A0_out(0) <= \A0_out[0]~output_o\;

ww_A0_out(1) <= \A0_out[1]~output_o\;

ww_A0_out(2) <= \A0_out[2]~output_o\;

ww_A0_out(3) <= \A0_out[3]~output_o\;

ww_A0_out(4) <= \A0_out[4]~output_o\;

ww_A0_out(5) <= \A0_out[5]~output_o\;

ww_A0_out(6) <= \A0_out[6]~output_o\;

ww_A0_out(7) <= \A0_out[7]~output_o\;

ww_A1_out(0) <= \A1_out[0]~output_o\;

ww_A1_out(1) <= \A1_out[1]~output_o\;

ww_A1_out(2) <= \A1_out[2]~output_o\;

ww_A1_out(3) <= \A1_out[3]~output_o\;

ww_A1_out(4) <= \A1_out[4]~output_o\;

ww_A1_out(5) <= \A1_out[5]~output_o\;

ww_A1_out(6) <= \A1_out[6]~output_o\;

ww_A1_out(7) <= \A1_out[7]~output_o\;

ww_B0_out(0) <= \B0_out[0]~output_o\;

ww_B0_out(1) <= \B0_out[1]~output_o\;

ww_B0_out(2) <= \B0_out[2]~output_o\;

ww_B0_out(3) <= \B0_out[3]~output_o\;

ww_B0_out(4) <= \B0_out[4]~output_o\;

ww_B0_out(5) <= \B0_out[5]~output_o\;

ww_B0_out(6) <= \B0_out[6]~output_o\;

ww_B0_out(7) <= \B0_out[7]~output_o\;

ww_B1_out(0) <= \B1_out[0]~output_o\;

ww_B1_out(1) <= \B1_out[1]~output_o\;

ww_B1_out(2) <= \B1_out[2]~output_o\;

ww_B1_out(3) <= \B1_out[3]~output_o\;

ww_B1_out(4) <= \B1_out[4]~output_o\;

ww_B1_out(5) <= \B1_out[5]~output_o\;

ww_B1_out(6) <= \B1_out[6]~output_o\;

ww_B1_out(7) <= \B1_out[7]~output_o\;

ww_LED_out(0) <= \LED_out[0]~output_o\;

ww_LED_out(1) <= \LED_out[1]~output_o\;

ww_LED_out(2) <= \LED_out[2]~output_o\;

ww_LED_out(3) <= \LED_out[3]~output_o\;

ww_LED_out(4) <= \LED_out[4]~output_o\;

ww_LED_out(5) <= \LED_out[5]~output_o\;

ww_LED_out(6) <= \LED_out[6]~output_o\;

ww_LED_out(7) <= \LED_out[7]~output_o\;

ww_clk_led <= \clk_led~output_o\;
END structure;


