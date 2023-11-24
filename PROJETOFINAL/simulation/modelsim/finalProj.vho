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

-- DATE "11/17/2023 11:17:51"

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

ENTITY 	VGASyncEnt IS
    PORT (
	clk : IN std_logic;
	vPos : OUT std_logic_vector(11 DOWNTO 0);
	hPos : OUT std_logic_vector(11 DOWNTO 0);
	clk_20Hz : OUT std_logic;
	vSync : OUT std_logic;
	hSync : OUT std_logic;
	rgbEn : OUT std_logic
	);
END VGASyncEnt;

-- Design Ports Information
-- vPos[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[5]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[9]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[10]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vPos[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[8]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[10]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hPos[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_20Hz	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vSync	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hSync	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgbEn	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGASyncEnt IS
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
SIGNAL ww_vPos : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_hPos : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_clk_20Hz : std_logic;
SIGNAL ww_vSync : std_logic;
SIGNAL ww_hSync : std_logic;
SIGNAL ww_rgbEn : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \vPos[0]~output_o\ : std_logic;
SIGNAL \vPos[1]~output_o\ : std_logic;
SIGNAL \vPos[2]~output_o\ : std_logic;
SIGNAL \vPos[3]~output_o\ : std_logic;
SIGNAL \vPos[4]~output_o\ : std_logic;
SIGNAL \vPos[5]~output_o\ : std_logic;
SIGNAL \vPos[6]~output_o\ : std_logic;
SIGNAL \vPos[7]~output_o\ : std_logic;
SIGNAL \vPos[8]~output_o\ : std_logic;
SIGNAL \vPos[9]~output_o\ : std_logic;
SIGNAL \vPos[10]~output_o\ : std_logic;
SIGNAL \vPos[11]~output_o\ : std_logic;
SIGNAL \hPos[0]~output_o\ : std_logic;
SIGNAL \hPos[1]~output_o\ : std_logic;
SIGNAL \hPos[2]~output_o\ : std_logic;
SIGNAL \hPos[3]~output_o\ : std_logic;
SIGNAL \hPos[4]~output_o\ : std_logic;
SIGNAL \hPos[5]~output_o\ : std_logic;
SIGNAL \hPos[6]~output_o\ : std_logic;
SIGNAL \hPos[7]~output_o\ : std_logic;
SIGNAL \hPos[8]~output_o\ : std_logic;
SIGNAL \hPos[9]~output_o\ : std_logic;
SIGNAL \hPos[10]~output_o\ : std_logic;
SIGNAL \hPos[11]~output_o\ : std_logic;
SIGNAL \clk_20Hz~output_o\ : std_logic;
SIGNAL \vSync~output_o\ : std_logic;
SIGNAL \hSync~output_o\ : std_logic;
SIGNAL \rgbEn~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add16~15\ : std_logic;
SIGNAL \Add16~16_combout\ : std_logic;
SIGNAL \clock_cycle~1_combout\ : std_logic;
SIGNAL \Add16~17\ : std_logic;
SIGNAL \Add16~18_combout\ : std_logic;
SIGNAL \clock_cycle~2_combout\ : std_logic;
SIGNAL \Add16~19\ : std_logic;
SIGNAL \Add16~20_combout\ : std_logic;
SIGNAL \Add16~21\ : std_logic;
SIGNAL \Add16~22_combout\ : std_logic;
SIGNAL \Add16~23\ : std_logic;
SIGNAL \Add16~24_combout\ : std_logic;
SIGNAL \Add16~25\ : std_logic;
SIGNAL \Add16~26_combout\ : std_logic;
SIGNAL \Add16~27\ : std_logic;
SIGNAL \Add16~28_combout\ : std_logic;
SIGNAL \Add16~29\ : std_logic;
SIGNAL \Add16~30_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add16~31\ : std_logic;
SIGNAL \Add16~32_combout\ : std_logic;
SIGNAL \Add16~33\ : std_logic;
SIGNAL \Add16~34_combout\ : std_logic;
SIGNAL \Add16~35\ : std_logic;
SIGNAL \Add16~36_combout\ : std_logic;
SIGNAL \Add16~37\ : std_logic;
SIGNAL \Add16~38_combout\ : std_logic;
SIGNAL \Add16~39\ : std_logic;
SIGNAL \Add16~40_combout\ : std_logic;
SIGNAL \Add16~41\ : std_logic;
SIGNAL \Add16~42_combout\ : std_logic;
SIGNAL \Add16~43\ : std_logic;
SIGNAL \Add16~44_combout\ : std_logic;
SIGNAL \Add16~45\ : std_logic;
SIGNAL \Add16~46_combout\ : std_logic;
SIGNAL \Add16~47\ : std_logic;
SIGNAL \Add16~48_combout\ : std_logic;
SIGNAL \Add16~49\ : std_logic;
SIGNAL \Add16~50_combout\ : std_logic;
SIGNAL \Add16~51\ : std_logic;
SIGNAL \Add16~52_combout\ : std_logic;
SIGNAL \Add16~53\ : std_logic;
SIGNAL \Add16~54_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add16~55\ : std_logic;
SIGNAL \Add16~56_combout\ : std_logic;
SIGNAL \Add16~57\ : std_logic;
SIGNAL \Add16~58_combout\ : std_logic;
SIGNAL \Add16~59\ : std_logic;
SIGNAL \Add16~60_combout\ : std_logic;
SIGNAL \Add16~61\ : std_logic;
SIGNAL \Add16~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \clock_cycle~0_combout\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \lines[1]~1_combout\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \lines[2]~2_combout\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \lines[3]~3_combout\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \lines[4]~4_combout\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \lines[5]~5_combout\ : std_logic;
SIGNAL \Add17~11\ : std_logic;
SIGNAL \Add17~12_combout\ : std_logic;
SIGNAL \lines[6]~6_combout\ : std_logic;
SIGNAL \Add17~13\ : std_logic;
SIGNAL \Add17~14_combout\ : std_logic;
SIGNAL \lines[7]~7_combout\ : std_logic;
SIGNAL \Add17~15\ : std_logic;
SIGNAL \Add17~16_combout\ : std_logic;
SIGNAL \lines[8]~8_combout\ : std_logic;
SIGNAL \Add17~17\ : std_logic;
SIGNAL \Add17~18_combout\ : std_logic;
SIGNAL \lines[9]~9_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Add17~19\ : std_logic;
SIGNAL \Add17~20_combout\ : std_logic;
SIGNAL \lines[10]~10_combout\ : std_logic;
SIGNAL \Add17~21\ : std_logic;
SIGNAL \Add17~22_combout\ : std_logic;
SIGNAL \lines[11]~11_combout\ : std_logic;
SIGNAL \Add17~23\ : std_logic;
SIGNAL \Add17~24_combout\ : std_logic;
SIGNAL \lines[12]~31_combout\ : std_logic;
SIGNAL \Add17~25\ : std_logic;
SIGNAL \Add17~26_combout\ : std_logic;
SIGNAL \lines[13]~30_combout\ : std_logic;
SIGNAL \Add17~27\ : std_logic;
SIGNAL \Add17~28_combout\ : std_logic;
SIGNAL \lines[14]~29_combout\ : std_logic;
SIGNAL \Add17~29\ : std_logic;
SIGNAL \Add17~30_combout\ : std_logic;
SIGNAL \lines[15]~28_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Add17~31\ : std_logic;
SIGNAL \Add17~32_combout\ : std_logic;
SIGNAL \lines[16]~27_combout\ : std_logic;
SIGNAL \Add17~33\ : std_logic;
SIGNAL \Add17~34_combout\ : std_logic;
SIGNAL \lines[17]~26_combout\ : std_logic;
SIGNAL \Add17~35\ : std_logic;
SIGNAL \Add17~36_combout\ : std_logic;
SIGNAL \lines[18]~25_combout\ : std_logic;
SIGNAL \Add17~37\ : std_logic;
SIGNAL \Add17~38_combout\ : std_logic;
SIGNAL \lines[19]~24_combout\ : std_logic;
SIGNAL \Add17~39\ : std_logic;
SIGNAL \Add17~40_combout\ : std_logic;
SIGNAL \lines[20]~23_combout\ : std_logic;
SIGNAL \Add17~41\ : std_logic;
SIGNAL \Add17~42_combout\ : std_logic;
SIGNAL \lines[21]~22_combout\ : std_logic;
SIGNAL \Add17~43\ : std_logic;
SIGNAL \Add17~44_combout\ : std_logic;
SIGNAL \lines[22]~21_combout\ : std_logic;
SIGNAL \Add17~45\ : std_logic;
SIGNAL \Add17~46_combout\ : std_logic;
SIGNAL \lines[23]~20_combout\ : std_logic;
SIGNAL \Add17~47\ : std_logic;
SIGNAL \Add17~48_combout\ : std_logic;
SIGNAL \lines[24]~19_combout\ : std_logic;
SIGNAL \Add17~49\ : std_logic;
SIGNAL \Add17~50_combout\ : std_logic;
SIGNAL \lines[25]~18_combout\ : std_logic;
SIGNAL \Add17~51\ : std_logic;
SIGNAL \Add17~52_combout\ : std_logic;
SIGNAL \lines[26]~17_combout\ : std_logic;
SIGNAL \Add17~53\ : std_logic;
SIGNAL \Add17~54_combout\ : std_logic;
SIGNAL \lines[27]~16_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add17~55\ : std_logic;
SIGNAL \Add17~56_combout\ : std_logic;
SIGNAL \lines[28]~15_combout\ : std_logic;
SIGNAL \Add17~57\ : std_logic;
SIGNAL \Add17~58_combout\ : std_logic;
SIGNAL \lines[29]~14_combout\ : std_logic;
SIGNAL \Add17~59\ : std_logic;
SIGNAL \Add17~60_combout\ : std_logic;
SIGNAL \lines[30]~13_combout\ : std_logic;
SIGNAL \Add17~61\ : std_logic;
SIGNAL \Add17~62_combout\ : std_logic;
SIGNAL \lines[31]~12_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \lines[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \vState.vBs~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \vState.vCs~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \vState.vDs~q\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \vState.vAs~q\ : std_logic;
SIGNAL \vSync_s~0_combout\ : std_logic;
SIGNAL \vSync_s~1_combout\ : std_logic;
SIGNAL \vSync_s~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \hState.hAs~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \hState.hBs~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \hState.hCs~q\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \hState.hDs~q\ : std_logic;
SIGNAL \hSync_s~0_combout\ : std_logic;
SIGNAL \hSync_s~1_combout\ : std_logic;
SIGNAL \hSync_s~q\ : std_logic;
SIGNAL \vEn~2_combout\ : std_logic;
SIGNAL \vEn~3_combout\ : std_logic;
SIGNAL \vEn~q\ : std_logic;
SIGNAL \hEn~0_combout\ : std_logic;
SIGNAL \hEn~1_combout\ : std_logic;
SIGNAL \hEn~q\ : std_logic;
SIGNAL \rgbEn~0_combout\ : std_logic;
SIGNAL clock_cycle : std_logic_vector(31 DOWNTO 0);
SIGNAL lines : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_clock_cycle : std_logic_vector(4 DOWNTO 4);
SIGNAL ALT_INV_lines : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
vPos <= ww_vPos;
hPos <= ww_hPos;
clk_20Hz <= ww_clk_20Hz;
vSync <= ww_vSync;
hSync <= ww_hSync;
rgbEn <= ww_rgbEn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_clock_cycle(4) <= NOT clock_cycle(4);
ALT_INV_lines(0) <= NOT lines(0);
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

-- Location: IOOBUF_X0_Y25_N9
\vPos[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_lines(0),
	devoe => ww_devoe,
	o => \vPos[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\vPos[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \vPos[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\vPos[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \vPos[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\vPos[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \vPos[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\vPos[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \vPos[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\vPos[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \vPos[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\vPos[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \vPos[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\vPos[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \vPos[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\vPos[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \vPos[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\vPos[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~16_combout\,
	devoe => ww_devoe,
	o => \vPos[9]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\vPos[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~18_combout\,
	devoe => ww_devoe,
	o => \vPos[10]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\vPos[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~20_combout\,
	devoe => ww_devoe,
	o => \vPos[11]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\hPos[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clock_cycle(0),
	devoe => ww_devoe,
	o => \hPos[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\hPos[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clock_cycle(1),
	devoe => ww_devoe,
	o => \hPos[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\hPos[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clock_cycle(2),
	devoe => ww_devoe,
	o => \hPos[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\hPos[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => clock_cycle(3),
	devoe => ww_devoe,
	o => \hPos[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\hPos[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_clock_cycle(4),
	devoe => ww_devoe,
	o => \hPos[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\hPos[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~2_combout\,
	devoe => ww_devoe,
	o => \hPos[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\hPos[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~4_combout\,
	devoe => ww_devoe,
	o => \hPos[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\hPos[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~6_combout\,
	devoe => ww_devoe,
	o => \hPos[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\hPos[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~8_combout\,
	devoe => ww_devoe,
	o => \hPos[8]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\hPos[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~10_combout\,
	devoe => ww_devoe,
	o => \hPos[9]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\hPos[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~12_combout\,
	devoe => ww_devoe,
	o => \hPos[10]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\hPos[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~14_combout\,
	devoe => ww_devoe,
	o => \hPos[11]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\clk_20Hz~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_20Hz~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\vSync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vSync_s~q\,
	devoe => ww_devoe,
	o => \vSync~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\hSync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hSync_s~q\,
	devoe => ww_devoe,
	o => \hSync~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\rgbEn~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbEn~0_combout\,
	devoe => ww_devoe,
	o => \rgbEn~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X18_Y25_N0
\Add17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = lines(0) $ (VCC)
-- \Add17~1\ = CARRY(lines(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(0),
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X18_Y25_N2
\Add17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (lines(1) & (!\Add17~1\)) # (!lines(1) & ((\Add17~1\) # (GND)))
-- \Add17~3\ = CARRY((!\Add17~1\) # (!lines(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(1),
	datad => VCC,
	cin => \Add17~1\,
	combout => \Add17~2_combout\,
	cout => \Add17~3\);

-- Location: LCCOMB_X19_Y28_N0
\Add16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = clock_cycle(0) $ (VCC)
-- \Add16~1\ = CARRY(clock_cycle(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(0),
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: FF_X19_Y28_N1
\clock_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(0));

-- Location: LCCOMB_X19_Y28_N2
\Add16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (clock_cycle(1) & (!\Add16~1\)) # (!clock_cycle(1) & ((\Add16~1\) # (GND)))
-- \Add16~3\ = CARRY((!\Add16~1\) # (!clock_cycle(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(1),
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: FF_X19_Y28_N3
\clock_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(1));

-- Location: LCCOMB_X19_Y28_N4
\Add16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = (clock_cycle(2) & (\Add16~3\ $ (GND))) # (!clock_cycle(2) & (!\Add16~3\ & VCC))
-- \Add16~5\ = CARRY((clock_cycle(2) & !\Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(2),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: FF_X19_Y28_N5
\clock_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(2));

-- Location: LCCOMB_X19_Y28_N6
\Add16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (clock_cycle(3) & (!\Add16~5\)) # (!clock_cycle(3) & ((\Add16~5\) # (GND)))
-- \Add16~7\ = CARRY((!\Add16~5\) # (!clock_cycle(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(3),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: FF_X19_Y28_N7
\clock_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(3));

-- Location: LCCOMB_X19_Y28_N8
\Add16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = (clock_cycle(4) & (\Add16~7\ $ (GND))) # (!clock_cycle(4) & (!\Add16~7\ & VCC))
-- \Add16~9\ = CARRY((clock_cycle(4) & !\Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(4),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: FF_X19_Y28_N9
\clock_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(4));

-- Location: LCCOMB_X19_Y28_N10
\Add16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (clock_cycle(5) & (!\Add16~9\)) # (!clock_cycle(5) & ((\Add16~9\) # (GND)))
-- \Add16~11\ = CARRY((!\Add16~9\) # (!clock_cycle(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(5),
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X19_Y28_N14
\Add16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = (clock_cycle(7) & (!\Add16~13\)) # (!clock_cycle(7) & ((\Add16~13\) # (GND)))
-- \Add16~15\ = CARRY((!\Add16~13\) # (!clock_cycle(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(7),
	datad => VCC,
	cin => \Add16~13\,
	combout => \Add16~14_combout\,
	cout => \Add16~15\);

-- Location: LCCOMB_X19_Y28_N16
\Add16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~16_combout\ = (clock_cycle(8) & (\Add16~15\ $ (GND))) # (!clock_cycle(8) & (!\Add16~15\ & VCC))
-- \Add16~17\ = CARRY((clock_cycle(8) & !\Add16~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(8),
	datad => VCC,
	cin => \Add16~15\,
	combout => \Add16~16_combout\,
	cout => \Add16~17\);

-- Location: LCCOMB_X20_Y27_N20
\clock_cycle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_cycle~1_combout\ = (\Add16~16_combout\ & (((!\Equal0~8_combout\) # (!clock_cycle(4))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => clock_cycle(4),
	datac => \Add16~16_combout\,
	datad => \Equal0~8_combout\,
	combout => \clock_cycle~1_combout\);

-- Location: FF_X20_Y27_N21
\clock_cycle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_cycle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(8));

-- Location: LCCOMB_X19_Y28_N18
\Add16~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~18_combout\ = (clock_cycle(9) & (!\Add16~17\)) # (!clock_cycle(9) & ((\Add16~17\) # (GND)))
-- \Add16~19\ = CARRY((!\Add16~17\) # (!clock_cycle(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(9),
	datad => VCC,
	cin => \Add16~17\,
	combout => \Add16~18_combout\,
	cout => \Add16~19\);

-- Location: LCCOMB_X20_Y27_N26
\clock_cycle~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_cycle~2_combout\ = (\Add16~18_combout\ & (((!\Equal0~8_combout\) # (!clock_cycle(4))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => clock_cycle(4),
	datac => \Equal0~8_combout\,
	datad => \Add16~18_combout\,
	combout => \clock_cycle~2_combout\);

-- Location: FF_X20_Y27_N27
\clock_cycle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_cycle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(9));

-- Location: LCCOMB_X19_Y28_N20
\Add16~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~20_combout\ = (clock_cycle(10) & (\Add16~19\ $ (GND))) # (!clock_cycle(10) & (!\Add16~19\ & VCC))
-- \Add16~21\ = CARRY((clock_cycle(10) & !\Add16~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(10),
	datad => VCC,
	cin => \Add16~19\,
	combout => \Add16~20_combout\,
	cout => \Add16~21\);

-- Location: FF_X19_Y28_N21
\clock_cycle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(10));

-- Location: LCCOMB_X19_Y28_N22
\Add16~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~22_combout\ = (clock_cycle(11) & (!\Add16~21\)) # (!clock_cycle(11) & ((\Add16~21\) # (GND)))
-- \Add16~23\ = CARRY((!\Add16~21\) # (!clock_cycle(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(11),
	datad => VCC,
	cin => \Add16~21\,
	combout => \Add16~22_combout\,
	cout => \Add16~23\);

-- Location: FF_X19_Y28_N23
\clock_cycle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(11));

-- Location: LCCOMB_X19_Y28_N24
\Add16~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~24_combout\ = (clock_cycle(12) & (\Add16~23\ $ (GND))) # (!clock_cycle(12) & (!\Add16~23\ & VCC))
-- \Add16~25\ = CARRY((clock_cycle(12) & !\Add16~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(12),
	datad => VCC,
	cin => \Add16~23\,
	combout => \Add16~24_combout\,
	cout => \Add16~25\);

-- Location: FF_X19_Y28_N25
\clock_cycle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(12));

-- Location: LCCOMB_X19_Y28_N26
\Add16~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~26_combout\ = (clock_cycle(13) & (!\Add16~25\)) # (!clock_cycle(13) & ((\Add16~25\) # (GND)))
-- \Add16~27\ = CARRY((!\Add16~25\) # (!clock_cycle(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(13),
	datad => VCC,
	cin => \Add16~25\,
	combout => \Add16~26_combout\,
	cout => \Add16~27\);

-- Location: FF_X19_Y28_N27
\clock_cycle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(13));

-- Location: LCCOMB_X19_Y28_N28
\Add16~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~28_combout\ = (clock_cycle(14) & (\Add16~27\ $ (GND))) # (!clock_cycle(14) & (!\Add16~27\ & VCC))
-- \Add16~29\ = CARRY((clock_cycle(14) & !\Add16~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(14),
	datad => VCC,
	cin => \Add16~27\,
	combout => \Add16~28_combout\,
	cout => \Add16~29\);

-- Location: FF_X19_Y28_N29
\clock_cycle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(14));

-- Location: LCCOMB_X19_Y28_N30
\Add16~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~30_combout\ = (clock_cycle(15) & (!\Add16~29\)) # (!clock_cycle(15) & ((\Add16~29\) # (GND)))
-- \Add16~31\ = CARRY((!\Add16~29\) # (!clock_cycle(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(15),
	datad => VCC,
	cin => \Add16~29\,
	combout => \Add16~30_combout\,
	cout => \Add16~31\);

-- Location: FF_X19_Y28_N31
\clock_cycle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(15));

-- Location: LCCOMB_X18_Y28_N24
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clock_cycle(15) & (!clock_cycle(12) & (!clock_cycle(13) & !clock_cycle(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(15),
	datab => clock_cycle(12),
	datac => clock_cycle(13),
	datad => clock_cycle(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y27_N6
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clock_cycle(5) & (clock_cycle(3) & (!clock_cycle(10) & !clock_cycle(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(5),
	datab => clock_cycle(3),
	datac => clock_cycle(10),
	datad => clock_cycle(11),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X18_Y27_N4
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clock_cycle(0) & (clock_cycle(2) & (clock_cycle(1) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(0),
	datab => clock_cycle(2),
	datac => clock_cycle(1),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X19_Y27_N0
\Add16~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~32_combout\ = (clock_cycle(16) & (\Add16~31\ $ (GND))) # (!clock_cycle(16) & (!\Add16~31\ & VCC))
-- \Add16~33\ = CARRY((clock_cycle(16) & !\Add16~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(16),
	datad => VCC,
	cin => \Add16~31\,
	combout => \Add16~32_combout\,
	cout => \Add16~33\);

-- Location: FF_X19_Y27_N1
\clock_cycle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(16));

-- Location: LCCOMB_X19_Y27_N2
\Add16~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~34_combout\ = (clock_cycle(17) & (!\Add16~33\)) # (!clock_cycle(17) & ((\Add16~33\) # (GND)))
-- \Add16~35\ = CARRY((!\Add16~33\) # (!clock_cycle(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(17),
	datad => VCC,
	cin => \Add16~33\,
	combout => \Add16~34_combout\,
	cout => \Add16~35\);

-- Location: FF_X19_Y27_N3
\clock_cycle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(17));

-- Location: LCCOMB_X19_Y27_N4
\Add16~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~36_combout\ = (clock_cycle(18) & (\Add16~35\ $ (GND))) # (!clock_cycle(18) & (!\Add16~35\ & VCC))
-- \Add16~37\ = CARRY((clock_cycle(18) & !\Add16~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(18),
	datad => VCC,
	cin => \Add16~35\,
	combout => \Add16~36_combout\,
	cout => \Add16~37\);

-- Location: FF_X19_Y27_N5
\clock_cycle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(18));

-- Location: LCCOMB_X19_Y27_N6
\Add16~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~38_combout\ = (clock_cycle(19) & (!\Add16~37\)) # (!clock_cycle(19) & ((\Add16~37\) # (GND)))
-- \Add16~39\ = CARRY((!\Add16~37\) # (!clock_cycle(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(19),
	datad => VCC,
	cin => \Add16~37\,
	combout => \Add16~38_combout\,
	cout => \Add16~39\);

-- Location: FF_X19_Y27_N7
\clock_cycle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(19));

-- Location: LCCOMB_X19_Y27_N8
\Add16~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~40_combout\ = (clock_cycle(20) & (\Add16~39\ $ (GND))) # (!clock_cycle(20) & (!\Add16~39\ & VCC))
-- \Add16~41\ = CARRY((clock_cycle(20) & !\Add16~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(20),
	datad => VCC,
	cin => \Add16~39\,
	combout => \Add16~40_combout\,
	cout => \Add16~41\);

-- Location: FF_X19_Y27_N9
\clock_cycle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(20));

-- Location: LCCOMB_X19_Y27_N10
\Add16~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~42_combout\ = (clock_cycle(21) & (!\Add16~41\)) # (!clock_cycle(21) & ((\Add16~41\) # (GND)))
-- \Add16~43\ = CARRY((!\Add16~41\) # (!clock_cycle(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(21),
	datad => VCC,
	cin => \Add16~41\,
	combout => \Add16~42_combout\,
	cout => \Add16~43\);

-- Location: FF_X19_Y27_N11
\clock_cycle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(21));

-- Location: LCCOMB_X19_Y27_N12
\Add16~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~44_combout\ = (clock_cycle(22) & (\Add16~43\ $ (GND))) # (!clock_cycle(22) & (!\Add16~43\ & VCC))
-- \Add16~45\ = CARRY((clock_cycle(22) & !\Add16~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(22),
	datad => VCC,
	cin => \Add16~43\,
	combout => \Add16~44_combout\,
	cout => \Add16~45\);

-- Location: FF_X19_Y27_N13
\clock_cycle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(22));

-- Location: LCCOMB_X19_Y27_N14
\Add16~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~46_combout\ = (clock_cycle(23) & (!\Add16~45\)) # (!clock_cycle(23) & ((\Add16~45\) # (GND)))
-- \Add16~47\ = CARRY((!\Add16~45\) # (!clock_cycle(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(23),
	datad => VCC,
	cin => \Add16~45\,
	combout => \Add16~46_combout\,
	cout => \Add16~47\);

-- Location: FF_X19_Y27_N15
\clock_cycle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(23));

-- Location: LCCOMB_X19_Y27_N16
\Add16~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~48_combout\ = (clock_cycle(24) & (\Add16~47\ $ (GND))) # (!clock_cycle(24) & (!\Add16~47\ & VCC))
-- \Add16~49\ = CARRY((clock_cycle(24) & !\Add16~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(24),
	datad => VCC,
	cin => \Add16~47\,
	combout => \Add16~48_combout\,
	cout => \Add16~49\);

-- Location: FF_X19_Y27_N17
\clock_cycle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(24));

-- Location: LCCOMB_X19_Y27_N18
\Add16~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~50_combout\ = (clock_cycle(25) & (!\Add16~49\)) # (!clock_cycle(25) & ((\Add16~49\) # (GND)))
-- \Add16~51\ = CARRY((!\Add16~49\) # (!clock_cycle(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(25),
	datad => VCC,
	cin => \Add16~49\,
	combout => \Add16~50_combout\,
	cout => \Add16~51\);

-- Location: FF_X19_Y27_N19
\clock_cycle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(25));

-- Location: LCCOMB_X19_Y27_N20
\Add16~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~52_combout\ = (clock_cycle(26) & (\Add16~51\ $ (GND))) # (!clock_cycle(26) & (!\Add16~51\ & VCC))
-- \Add16~53\ = CARRY((clock_cycle(26) & !\Add16~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(26),
	datad => VCC,
	cin => \Add16~51\,
	combout => \Add16~52_combout\,
	cout => \Add16~53\);

-- Location: FF_X19_Y27_N21
\clock_cycle[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(26));

-- Location: LCCOMB_X19_Y27_N22
\Add16~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~54_combout\ = (clock_cycle(27) & (!\Add16~53\)) # (!clock_cycle(27) & ((\Add16~53\) # (GND)))
-- \Add16~55\ = CARRY((!\Add16~53\) # (!clock_cycle(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(27),
	datad => VCC,
	cin => \Add16~53\,
	combout => \Add16~54_combout\,
	cout => \Add16~55\);

-- Location: FF_X19_Y27_N23
\clock_cycle[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(27));

-- Location: LCCOMB_X18_Y27_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clock_cycle(26) & (!clock_cycle(24) & (!clock_cycle(27) & !clock_cycle(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(26),
	datab => clock_cycle(24),
	datac => clock_cycle(27),
	datad => clock_cycle(25),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y27_N24
\Add16~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~56_combout\ = (clock_cycle(28) & (\Add16~55\ $ (GND))) # (!clock_cycle(28) & (!\Add16~55\ & VCC))
-- \Add16~57\ = CARRY((clock_cycle(28) & !\Add16~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(28),
	datad => VCC,
	cin => \Add16~55\,
	combout => \Add16~56_combout\,
	cout => \Add16~57\);

-- Location: FF_X19_Y27_N25
\clock_cycle[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(28));

-- Location: LCCOMB_X19_Y27_N26
\Add16~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~58_combout\ = (clock_cycle(29) & (!\Add16~57\)) # (!clock_cycle(29) & ((\Add16~57\) # (GND)))
-- \Add16~59\ = CARRY((!\Add16~57\) # (!clock_cycle(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(29),
	datad => VCC,
	cin => \Add16~57\,
	combout => \Add16~58_combout\,
	cout => \Add16~59\);

-- Location: FF_X19_Y27_N27
\clock_cycle[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(29));

-- Location: LCCOMB_X19_Y27_N28
\Add16~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~60_combout\ = (clock_cycle(30) & (\Add16~59\ $ (GND))) # (!clock_cycle(30) & (!\Add16~59\ & VCC))
-- \Add16~61\ = CARRY((clock_cycle(30) & !\Add16~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(30),
	datad => VCC,
	cin => \Add16~59\,
	combout => \Add16~60_combout\,
	cout => \Add16~61\);

-- Location: FF_X19_Y27_N29
\clock_cycle[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(30));

-- Location: LCCOMB_X19_Y27_N30
\Add16~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~62_combout\ = clock_cycle(31) $ (\Add16~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(31),
	cin => \Add16~61\,
	combout => \Add16~62_combout\);

-- Location: FF_X19_Y27_N31
\clock_cycle[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(31));

-- Location: LCCOMB_X18_Y27_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clock_cycle(31) & (!clock_cycle(30) & (!clock_cycle(28) & !clock_cycle(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(31),
	datab => clock_cycle(30),
	datac => clock_cycle(28),
	datad => clock_cycle(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y27_N8
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clock_cycle(20) & (!clock_cycle(21) & (!clock_cycle(22) & !clock_cycle(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(20),
	datab => clock_cycle(21),
	datac => clock_cycle(22),
	datad => clock_cycle(23),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X18_Y27_N2
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clock_cycle(18) & (!clock_cycle(16) & (!clock_cycle(17) & !clock_cycle(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(18),
	datab => clock_cycle(16),
	datac => clock_cycle(17),
	datad => clock_cycle(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X18_Y27_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X18_Y27_N18
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X18_Y27_N22
\clock_cycle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_cycle~0_combout\ = (\Add16~10_combout\ & (((!\Equal0~8_combout\) # (!\Equal2~0_combout\)) # (!clock_cycle(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~10_combout\,
	datab => clock_cycle(4),
	datac => \Equal2~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \clock_cycle~0_combout\);

-- Location: FF_X18_Y27_N23
\clock_cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(5));

-- Location: LCCOMB_X19_Y28_N12
\Add16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = (clock_cycle(6) & (\Add16~11\ $ (GND))) # (!clock_cycle(6) & (!\Add16~11\ & VCC))
-- \Add16~13\ = CARRY((clock_cycle(6) & !\Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(6),
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: FF_X19_Y28_N13
\clock_cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(6));

-- Location: FF_X19_Y28_N15
\clock_cycle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_cycle(7));

-- Location: LCCOMB_X20_Y27_N10
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!clock_cycle(7) & (clock_cycle(8) & (clock_cycle(9) & !clock_cycle(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(7),
	datab => clock_cycle(8),
	datac => clock_cycle(9),
	datad => clock_cycle(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X18_Y27_N16
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ((!\Equal0~8_combout\) # (!\Equal2~0_combout\)) # (!clock_cycle(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(4),
	datac => \Equal2~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X19_Y25_N6
\lines[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[1]~1_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(1)))) # (!\Equal3~0_combout\ & (\Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~2_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(1),
	datad => \Equal3~0_combout\,
	combout => \lines[1]~1_combout\);

-- Location: FF_X19_Y25_N7
\lines[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(1));

-- Location: LCCOMB_X18_Y25_N4
\Add17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = (lines(2) & (\Add17~3\ $ (GND))) # (!lines(2) & (!\Add17~3\ & VCC))
-- \Add17~5\ = CARRY((lines(2) & !\Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(2),
	datad => VCC,
	cin => \Add17~3\,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X19_Y25_N0
\lines[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[2]~2_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(2)))) # (!\Equal3~0_combout\ & (\Add17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~4_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(2),
	datad => \Equal3~0_combout\,
	combout => \lines[2]~2_combout\);

-- Location: FF_X19_Y25_N1
\lines[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(2));

-- Location: LCCOMB_X18_Y25_N6
\Add17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (lines(3) & (!\Add17~5\)) # (!lines(3) & ((\Add17~5\) # (GND)))
-- \Add17~7\ = CARRY((!\Add17~5\) # (!lines(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(3),
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X17_Y25_N8
\lines[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[3]~3_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(3)))) # (!\Equal3~0_combout\ & (\Add17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~6_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(3),
	datad => \Equal3~0_combout\,
	combout => \lines[3]~3_combout\);

-- Location: FF_X17_Y25_N9
\lines[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(3));

-- Location: LCCOMB_X18_Y25_N8
\Add17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~8_combout\ = (lines(4) & (\Add17~7\ $ (GND))) # (!lines(4) & (!\Add17~7\ & VCC))
-- \Add17~9\ = CARRY((lines(4) & !\Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(4),
	datad => VCC,
	cin => \Add17~7\,
	combout => \Add17~8_combout\,
	cout => \Add17~9\);

-- Location: LCCOMB_X17_Y25_N14
\lines[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[4]~4_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(4)))) # (!\Equal3~0_combout\ & (\Add17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~8_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(4),
	datad => \Equal3~0_combout\,
	combout => \lines[4]~4_combout\);

-- Location: FF_X17_Y25_N15
\lines[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(4));

-- Location: LCCOMB_X18_Y25_N10
\Add17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = (lines(5) & (!\Add17~9\)) # (!lines(5) & ((\Add17~9\) # (GND)))
-- \Add17~11\ = CARRY((!\Add17~9\) # (!lines(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(5),
	datad => VCC,
	cin => \Add17~9\,
	combout => \Add17~10_combout\,
	cout => \Add17~11\);

-- Location: LCCOMB_X17_Y25_N12
\lines[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[5]~5_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(5)))) # (!\Equal3~0_combout\ & (\Add17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~10_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(5),
	datad => \Equal3~0_combout\,
	combout => \lines[5]~5_combout\);

-- Location: FF_X17_Y25_N13
\lines[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(5));

-- Location: LCCOMB_X18_Y25_N12
\Add17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~12_combout\ = (lines(6) & (\Add17~11\ $ (GND))) # (!lines(6) & (!\Add17~11\ & VCC))
-- \Add17~13\ = CARRY((lines(6) & !\Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(6),
	datad => VCC,
	cin => \Add17~11\,
	combout => \Add17~12_combout\,
	cout => \Add17~13\);

-- Location: LCCOMB_X17_Y25_N22
\lines[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[6]~6_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(6)))) # (!\Equal3~0_combout\ & (\Add17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~12_combout\,
	datac => lines(6),
	datad => \Equal3~0_combout\,
	combout => \lines[6]~6_combout\);

-- Location: FF_X17_Y25_N23
\lines[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(6));

-- Location: LCCOMB_X18_Y25_N14
\Add17~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~14_combout\ = (lines(7) & (!\Add17~13\)) # (!lines(7) & ((\Add17~13\) # (GND)))
-- \Add17~15\ = CARRY((!\Add17~13\) # (!lines(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(7),
	datad => VCC,
	cin => \Add17~13\,
	combout => \Add17~14_combout\,
	cout => \Add17~15\);

-- Location: LCCOMB_X17_Y25_N16
\lines[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[7]~7_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(7)))) # (!\Equal3~0_combout\ & (\Add17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~14_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(7),
	datad => \Equal3~0_combout\,
	combout => \lines[7]~7_combout\);

-- Location: FF_X17_Y25_N17
\lines[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(7));

-- Location: LCCOMB_X18_Y25_N16
\Add17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~16_combout\ = (lines(8) & (\Add17~15\ $ (GND))) # (!lines(8) & (!\Add17~15\ & VCC))
-- \Add17~17\ = CARRY((lines(8) & !\Add17~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(8),
	datad => VCC,
	cin => \Add17~15\,
	combout => \Add17~16_combout\,
	cout => \Add17~17\);

-- Location: LCCOMB_X17_Y25_N6
\lines[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[8]~8_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(8)))) # (!\Equal3~0_combout\ & (\Add17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~16_combout\,
	datac => lines(8),
	datad => \Equal3~0_combout\,
	combout => \lines[8]~8_combout\);

-- Location: FF_X17_Y25_N7
\lines[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(8));

-- Location: LCCOMB_X18_Y25_N18
\Add17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~18_combout\ = (lines(9) & (!\Add17~17\)) # (!lines(9) & ((\Add17~17\) # (GND)))
-- \Add17~19\ = CARRY((!\Add17~17\) # (!lines(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(9),
	datad => VCC,
	cin => \Add17~17\,
	combout => \Add17~18_combout\,
	cout => \Add17~19\);

-- Location: LCCOMB_X18_Y27_N20
\lines[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[9]~9_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(9)))) # (!\Equal3~0_combout\ & (\Add17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~18_combout\,
	datab => \Equal3~0_combout\,
	datac => lines(9),
	datad => \Equal7~0_combout\,
	combout => \lines[9]~9_combout\);

-- Location: FF_X18_Y27_N21
\lines[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(9));

-- Location: LCCOMB_X19_Y25_N2
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!lines(0) & lines(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lines(0),
	datad => lines(1),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X18_Y25_N20
\Add17~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~20_combout\ = (lines(10) & (\Add17~19\ $ (GND))) # (!lines(10) & (!\Add17~19\ & VCC))
-- \Add17~21\ = CARRY((lines(10) & !\Add17~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(10),
	datad => VCC,
	cin => \Add17~19\,
	combout => \Add17~20_combout\,
	cout => \Add17~21\);

-- Location: LCCOMB_X17_Y25_N0
\lines[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[10]~10_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(10)))) # (!\Equal3~0_combout\ & (\Add17~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~20_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(10),
	datad => \Equal3~0_combout\,
	combout => \lines[10]~10_combout\);

-- Location: FF_X17_Y25_N1
\lines[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(10));

-- Location: LCCOMB_X18_Y25_N22
\Add17~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~22_combout\ = (lines(11) & (!\Add17~21\)) # (!lines(11) & ((\Add17~21\) # (GND)))
-- \Add17~23\ = CARRY((!\Add17~21\) # (!lines(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(11),
	datad => VCC,
	cin => \Add17~21\,
	combout => \Add17~22_combout\,
	cout => \Add17~23\);

-- Location: LCCOMB_X17_Y25_N26
\lines[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[11]~11_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(11)))) # (!\Equal3~0_combout\ & (\Add17~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~22_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(11),
	datad => \Equal3~0_combout\,
	combout => \lines[11]~11_combout\);

-- Location: FF_X17_Y25_N27
\lines[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(11));

-- Location: LCCOMB_X18_Y25_N24
\Add17~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~24_combout\ = (lines(12) & (\Add17~23\ $ (GND))) # (!lines(12) & (!\Add17~23\ & VCC))
-- \Add17~25\ = CARRY((lines(12) & !\Add17~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(12),
	datad => VCC,
	cin => \Add17~23\,
	combout => \Add17~24_combout\,
	cout => \Add17~25\);

-- Location: LCCOMB_X17_Y24_N10
\lines[12]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[12]~31_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(12)))) # (!\Equal3~0_combout\ & (\Add17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~24_combout\,
	datac => lines(12),
	datad => \Equal3~0_combout\,
	combout => \lines[12]~31_combout\);

-- Location: FF_X17_Y24_N11
\lines[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[12]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(12));

-- Location: LCCOMB_X18_Y25_N26
\Add17~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~26_combout\ = (lines(13) & (!\Add17~25\)) # (!lines(13) & ((\Add17~25\) # (GND)))
-- \Add17~27\ = CARRY((!\Add17~25\) # (!lines(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(13),
	datad => VCC,
	cin => \Add17~25\,
	combout => \Add17~26_combout\,
	cout => \Add17~27\);

-- Location: LCCOMB_X17_Y24_N20
\lines[13]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[13]~30_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(13)))) # (!\Equal3~0_combout\ & (\Add17~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~26_combout\,
	datab => \Equal3~0_combout\,
	datac => lines(13),
	datad => \Equal7~0_combout\,
	combout => \lines[13]~30_combout\);

-- Location: FF_X17_Y24_N21
\lines[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[13]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(13));

-- Location: LCCOMB_X18_Y25_N28
\Add17~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~28_combout\ = (lines(14) & (\Add17~27\ $ (GND))) # (!lines(14) & (!\Add17~27\ & VCC))
-- \Add17~29\ = CARRY((lines(14) & !\Add17~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(14),
	datad => VCC,
	cin => \Add17~27\,
	combout => \Add17~28_combout\,
	cout => \Add17~29\);

-- Location: LCCOMB_X17_Y24_N6
\lines[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[14]~29_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(14)))) # (!\Equal3~0_combout\ & (\Add17~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~28_combout\,
	datab => \Equal3~0_combout\,
	datac => lines(14),
	datad => \Equal7~0_combout\,
	combout => \lines[14]~29_combout\);

-- Location: FF_X17_Y24_N7
\lines[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(14));

-- Location: LCCOMB_X18_Y25_N30
\Add17~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~30_combout\ = (lines(15) & (!\Add17~29\)) # (!lines(15) & ((\Add17~29\) # (GND)))
-- \Add17~31\ = CARRY((!\Add17~29\) # (!lines(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(15),
	datad => VCC,
	cin => \Add17~29\,
	combout => \Add17~30_combout\,
	cout => \Add17~31\);

-- Location: LCCOMB_X17_Y24_N24
\lines[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[15]~28_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(15)))) # (!\Equal3~0_combout\ & (\Add17~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~30_combout\,
	datac => lines(15),
	datad => \Equal3~0_combout\,
	combout => \lines[15]~28_combout\);

-- Location: FF_X17_Y24_N25
\lines[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(15));

-- Location: LCCOMB_X17_Y24_N28
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!lines(12) & (!lines(14) & (!lines(13) & !lines(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(12),
	datab => lines(14),
	datac => lines(13),
	datad => lines(15),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X18_Y24_N0
\Add17~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~32_combout\ = (lines(16) & (\Add17~31\ $ (GND))) # (!lines(16) & (!\Add17~31\ & VCC))
-- \Add17~33\ = CARRY((lines(16) & !\Add17~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(16),
	datad => VCC,
	cin => \Add17~31\,
	combout => \Add17~32_combout\,
	cout => \Add17~33\);

-- Location: LCCOMB_X19_Y24_N24
\lines[16]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[16]~27_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(16)))) # (!\Equal3~0_combout\ & (\Add17~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add17~32_combout\,
	datac => lines(16),
	datad => \Equal7~0_combout\,
	combout => \lines[16]~27_combout\);

-- Location: FF_X19_Y24_N25
\lines[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[16]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(16));

-- Location: LCCOMB_X18_Y24_N2
\Add17~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~34_combout\ = (lines(17) & (!\Add17~33\)) # (!lines(17) & ((\Add17~33\) # (GND)))
-- \Add17~35\ = CARRY((!\Add17~33\) # (!lines(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(17),
	datad => VCC,
	cin => \Add17~33\,
	combout => \Add17~34_combout\,
	cout => \Add17~35\);

-- Location: LCCOMB_X19_Y24_N14
\lines[17]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[17]~26_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & (lines(17))) # (!\Equal3~0_combout\ & ((\Add17~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(17),
	datad => \Add17~34_combout\,
	combout => \lines[17]~26_combout\);

-- Location: FF_X19_Y24_N15
\lines[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[17]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(17));

-- Location: LCCOMB_X18_Y24_N4
\Add17~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~36_combout\ = (lines(18) & (\Add17~35\ $ (GND))) # (!lines(18) & (!\Add17~35\ & VCC))
-- \Add17~37\ = CARRY((lines(18) & !\Add17~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(18),
	datad => VCC,
	cin => \Add17~35\,
	combout => \Add17~36_combout\,
	cout => \Add17~37\);

-- Location: LCCOMB_X19_Y24_N12
\lines[18]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[18]~25_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(18)))) # (!\Equal3~0_combout\ & (\Add17~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add17~36_combout\,
	datac => lines(18),
	datad => \Equal7~0_combout\,
	combout => \lines[18]~25_combout\);

-- Location: FF_X19_Y24_N13
\lines[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[18]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(18));

-- Location: LCCOMB_X18_Y24_N6
\Add17~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~38_combout\ = (lines(19) & (!\Add17~37\)) # (!lines(19) & ((\Add17~37\) # (GND)))
-- \Add17~39\ = CARRY((!\Add17~37\) # (!lines(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(19),
	datad => VCC,
	cin => \Add17~37\,
	combout => \Add17~38_combout\,
	cout => \Add17~39\);

-- Location: LCCOMB_X19_Y24_N10
\lines[19]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[19]~24_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(19)))) # (!\Equal3~0_combout\ & (\Add17~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add17~38_combout\,
	datac => lines(19),
	datad => \Equal7~0_combout\,
	combout => \lines[19]~24_combout\);

-- Location: FF_X19_Y24_N11
\lines[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(19));

-- Location: LCCOMB_X18_Y24_N8
\Add17~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~40_combout\ = (lines(20) & (\Add17~39\ $ (GND))) # (!lines(20) & (!\Add17~39\ & VCC))
-- \Add17~41\ = CARRY((lines(20) & !\Add17~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(20),
	datad => VCC,
	cin => \Add17~39\,
	combout => \Add17~40_combout\,
	cout => \Add17~41\);

-- Location: LCCOMB_X17_Y24_N16
\lines[20]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[20]~23_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(20)))) # (!\Equal3~0_combout\ & (\Add17~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~40_combout\,
	datac => lines(20),
	datad => \Equal3~0_combout\,
	combout => \lines[20]~23_combout\);

-- Location: FF_X17_Y24_N17
\lines[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[20]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(20));

-- Location: LCCOMB_X18_Y24_N10
\Add17~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~42_combout\ = (lines(21) & (!\Add17~41\)) # (!lines(21) & ((\Add17~41\) # (GND)))
-- \Add17~43\ = CARRY((!\Add17~41\) # (!lines(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(21),
	datad => VCC,
	cin => \Add17~41\,
	combout => \Add17~42_combout\,
	cout => \Add17~43\);

-- Location: LCCOMB_X17_Y24_N14
\lines[21]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[21]~22_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(21)))) # (!\Equal3~0_combout\ & (\Add17~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~42_combout\,
	datac => lines(21),
	datad => \Equal3~0_combout\,
	combout => \lines[21]~22_combout\);

-- Location: FF_X17_Y24_N15
\lines[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[21]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(21));

-- Location: LCCOMB_X18_Y24_N12
\Add17~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~44_combout\ = (lines(22) & (\Add17~43\ $ (GND))) # (!lines(22) & (!\Add17~43\ & VCC))
-- \Add17~45\ = CARRY((lines(22) & !\Add17~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(22),
	datad => VCC,
	cin => \Add17~43\,
	combout => \Add17~44_combout\,
	cout => \Add17~45\);

-- Location: LCCOMB_X17_Y24_N8
\lines[22]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[22]~21_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(22)))) # (!\Equal3~0_combout\ & (\Add17~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~44_combout\,
	datac => lines(22),
	datad => \Equal3~0_combout\,
	combout => \lines[22]~21_combout\);

-- Location: FF_X17_Y24_N9
\lines[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(22));

-- Location: LCCOMB_X18_Y24_N14
\Add17~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~46_combout\ = (lines(23) & (!\Add17~45\)) # (!lines(23) & ((\Add17~45\) # (GND)))
-- \Add17~47\ = CARRY((!\Add17~45\) # (!lines(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(23),
	datad => VCC,
	cin => \Add17~45\,
	combout => \Add17~46_combout\,
	cout => \Add17~47\);

-- Location: LCCOMB_X17_Y24_N30
\lines[23]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[23]~20_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(23)))) # (!\Equal3~0_combout\ & (\Add17~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~46_combout\,
	datac => lines(23),
	datad => \Equal3~0_combout\,
	combout => \lines[23]~20_combout\);

-- Location: FF_X17_Y24_N31
\lines[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[23]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(23));

-- Location: LCCOMB_X18_Y24_N16
\Add17~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~48_combout\ = (lines(24) & (\Add17~47\ $ (GND))) # (!lines(24) & (!\Add17~47\ & VCC))
-- \Add17~49\ = CARRY((lines(24) & !\Add17~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(24),
	datad => VCC,
	cin => \Add17~47\,
	combout => \Add17~48_combout\,
	cout => \Add17~49\);

-- Location: LCCOMB_X19_Y24_N18
\lines[24]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[24]~19_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & (lines(24))) # (!\Equal3~0_combout\ & ((\Add17~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(24),
	datad => \Add17~48_combout\,
	combout => \lines[24]~19_combout\);

-- Location: FF_X19_Y24_N19
\lines[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(24));

-- Location: LCCOMB_X18_Y24_N18
\Add17~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~50_combout\ = (lines(25) & (!\Add17~49\)) # (!lines(25) & ((\Add17~49\) # (GND)))
-- \Add17~51\ = CARRY((!\Add17~49\) # (!lines(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(25),
	datad => VCC,
	cin => \Add17~49\,
	combout => \Add17~50_combout\,
	cout => \Add17~51\);

-- Location: LCCOMB_X19_Y24_N28
\lines[25]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[25]~18_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(25)))) # (!\Equal3~0_combout\ & (\Add17~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add17~50_combout\,
	datac => lines(25),
	datad => \Equal7~0_combout\,
	combout => \lines[25]~18_combout\);

-- Location: FF_X19_Y24_N29
\lines[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[25]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(25));

-- Location: LCCOMB_X18_Y24_N20
\Add17~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~52_combout\ = (lines(26) & (\Add17~51\ $ (GND))) # (!lines(26) & (!\Add17~51\ & VCC))
-- \Add17~53\ = CARRY((lines(26) & !\Add17~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(26),
	datad => VCC,
	cin => \Add17~51\,
	combout => \Add17~52_combout\,
	cout => \Add17~53\);

-- Location: LCCOMB_X19_Y24_N6
\lines[26]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[26]~17_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & (lines(26))) # (!\Equal3~0_combout\ & ((\Add17~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(26),
	datad => \Add17~52_combout\,
	combout => \lines[26]~17_combout\);

-- Location: FF_X19_Y24_N7
\lines[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[26]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(26));

-- Location: LCCOMB_X18_Y24_N22
\Add17~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~54_combout\ = (lines(27) & (!\Add17~53\)) # (!lines(27) & ((\Add17~53\) # (GND)))
-- \Add17~55\ = CARRY((!\Add17~53\) # (!lines(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(27),
	datad => VCC,
	cin => \Add17~53\,
	combout => \Add17~54_combout\,
	cout => \Add17~55\);

-- Location: LCCOMB_X19_Y24_N8
\lines[27]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[27]~16_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & (lines(27))) # (!\Equal3~0_combout\ & ((\Add17~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(27),
	datad => \Add17~54_combout\,
	combout => \lines[27]~16_combout\);

-- Location: FF_X19_Y24_N9
\lines[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(27));

-- Location: LCCOMB_X19_Y24_N0
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!lines(26) & (!lines(24) & (!lines(27) & !lines(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(26),
	datab => lines(24),
	datac => lines(27),
	datad => lines(25),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X18_Y24_N24
\Add17~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~56_combout\ = (lines(28) & (\Add17~55\ $ (GND))) # (!lines(28) & (!\Add17~55\ & VCC))
-- \Add17~57\ = CARRY((lines(28) & !\Add17~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(28),
	datad => VCC,
	cin => \Add17~55\,
	combout => \Add17~56_combout\,
	cout => \Add17~57\);

-- Location: LCCOMB_X17_Y24_N18
\lines[28]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[28]~15_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(28)))) # (!\Equal3~0_combout\ & (\Add17~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add17~56_combout\,
	datac => lines(28),
	datad => \Equal3~0_combout\,
	combout => \lines[28]~15_combout\);

-- Location: FF_X17_Y24_N19
\lines[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(28));

-- Location: LCCOMB_X18_Y24_N26
\Add17~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~58_combout\ = (lines(29) & (!\Add17~57\)) # (!lines(29) & ((\Add17~57\) # (GND)))
-- \Add17~59\ = CARRY((!\Add17~57\) # (!lines(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(29),
	datad => VCC,
	cin => \Add17~57\,
	combout => \Add17~58_combout\,
	cout => \Add17~59\);

-- Location: LCCOMB_X17_Y24_N12
\lines[29]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[29]~14_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & (lines(29))) # (!\Equal3~0_combout\ & ((\Add17~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal3~0_combout\,
	datac => lines(29),
	datad => \Add17~58_combout\,
	combout => \lines[29]~14_combout\);

-- Location: FF_X17_Y24_N13
\lines[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[29]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(29));

-- Location: LCCOMB_X18_Y24_N28
\Add17~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~60_combout\ = (lines(30) & (\Add17~59\ $ (GND))) # (!lines(30) & (!\Add17~59\ & VCC))
-- \Add17~61\ = CARRY((lines(30) & !\Add17~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(30),
	datad => VCC,
	cin => \Add17~59\,
	combout => \Add17~60_combout\,
	cout => \Add17~61\);

-- Location: LCCOMB_X17_Y24_N26
\lines[30]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[30]~13_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & (lines(30))) # (!\Equal3~0_combout\ & ((\Add17~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal3~0_combout\,
	datac => lines(30),
	datad => \Add17~60_combout\,
	combout => \lines[30]~13_combout\);

-- Location: FF_X17_Y24_N27
\lines[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(30));

-- Location: LCCOMB_X18_Y24_N30
\Add17~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~62_combout\ = \Add17~61\ $ (lines(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => lines(31),
	cin => \Add17~61\,
	combout => \Add17~62_combout\);

-- Location: LCCOMB_X17_Y24_N4
\lines[31]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[31]~12_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(31)))) # (!\Equal3~0_combout\ & (\Add17~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~62_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(31),
	datad => \Equal3~0_combout\,
	combout => \lines[31]~12_combout\);

-- Location: FF_X17_Y24_N5
\lines[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[31]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(31));

-- Location: LCCOMB_X17_Y24_N0
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!lines(29) & (!lines(31) & (!lines(30) & !lines(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(29),
	datab => lines(31),
	datac => lines(30),
	datad => lines(28),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X17_Y24_N22
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!lines(23) & (!lines(20) & (!lines(22) & !lines(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(23),
	datab => lines(20),
	datac => lines(22),
	datad => lines(21),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X19_Y24_N22
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!lines(19) & (!lines(16) & (!lines(17) & !lines(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(19),
	datab => lines(16),
	datac => lines(17),
	datad => lines(18),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X17_Y25_N4
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~1_combout\ & (\Equal4~0_combout\ & (\Equal4~2_combout\ & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X17_Y25_N10
\Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!lines(8) & (!lines(7) & (!lines(11) & !lines(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(8),
	datab => lines(7),
	datac => lines(11),
	datad => lines(10),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X17_Y25_N24
\Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!lines(2) & (!lines(3) & (!lines(6) & \Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(2),
	datab => lines(3),
	datac => lines(6),
	datad => \Equal4~6_combout\,
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X17_Y25_N18
\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal6~0_combout\ & (\Equal4~5_combout\ & (\Equal4~4_combout\ & \Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal4~5_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X17_Y25_N28
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (lines(9) & (!lines(5) & (lines(4) & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(9),
	datab => lines(5),
	datac => lines(4),
	datad => \Equal6~1_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X19_Y25_N4
\lines[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lines[0]~0_combout\ = (!\Equal7~0_combout\ & ((\Equal3~0_combout\ & ((lines(0)))) # (!\Equal3~0_combout\ & (\Add17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~0_combout\,
	datab => \Equal7~0_combout\,
	datac => lines(0),
	datad => \Equal3~0_combout\,
	combout => \lines[0]~0_combout\);

-- Location: FF_X19_Y25_N5
\lines[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lines[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lines(0));

-- Location: LCCOMB_X19_Y25_N8
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (lines(1) & (lines(0) $ (VCC))) # (!lines(1) & (lines(0) & VCC))
-- \Add1~1\ = CARRY((lines(1) & lines(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(1),
	datab => lines(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y25_N10
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (lines(2) & (\Add1~1\ & VCC)) # (!lines(2) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!lines(2) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y25_N12
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (lines(3) & ((GND) # (!\Add1~3\))) # (!lines(3) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((lines(3)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y25_N14
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (lines(4) & (\Add1~5\ & VCC)) # (!lines(4) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!lines(4) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y25_N16
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (lines(5) & (\Add1~7\ $ (GND))) # (!lines(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((lines(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y25_N18
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (lines(6) & (\Add1~9\ & VCC)) # (!lines(6) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!lines(6) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X19_Y25_N20
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (lines(7) & ((GND) # (!\Add1~11\))) # (!lines(7) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((lines(7)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y25_N22
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (lines(8) & (\Add1~13\ & VCC)) # (!lines(8) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!lines(8) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X19_Y25_N24
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (lines(9) & ((GND) # (!\Add1~15\))) # (!lines(9) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((lines(9)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lines(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X19_Y25_N26
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (lines(10) & (\Add1~17\ & VCC)) # (!lines(10) & (!\Add1~17\))
-- \Add1~19\ = CARRY((!lines(10) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(10),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X19_Y25_N28
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = lines(11) $ (\Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lines(11),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X26_Y31_N8
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY(clock_cycle(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(4),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X26_Y31_N10
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (clock_cycle(5) & (\Add3~1_cout\ & VCC)) # (!clock_cycle(5) & (!\Add3~1_cout\))
-- \Add3~3\ = CARRY((!clock_cycle(5) & !\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(5),
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X26_Y31_N12
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (clock_cycle(6) & ((GND) # (!\Add3~3\))) # (!clock_cycle(6) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((clock_cycle(6)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(6),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X26_Y31_N14
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (clock_cycle(7) & (!\Add3~5\)) # (!clock_cycle(7) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!clock_cycle(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(7),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X26_Y31_N16
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (clock_cycle(8) & ((GND) # (!\Add3~7\))) # (!clock_cycle(8) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((clock_cycle(8)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(8),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X26_Y31_N18
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (clock_cycle(9) & (\Add3~9\ & VCC)) # (!clock_cycle(9) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!clock_cycle(9) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(9),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X26_Y31_N20
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (clock_cycle(10) & ((GND) # (!\Add3~11\))) # (!clock_cycle(10) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((clock_cycle(10)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(10),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X26_Y31_N22
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = clock_cycle(11) $ (!\Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(11),
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X17_Y25_N30
\Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (\Equal4~5_combout\ & (\Equal4~4_combout\ & \Equal4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~5_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X17_Y25_N20
\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (lines(9) & (!lines(5) & (\Equal4~8_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(9),
	datab => lines(5),
	datac => \Equal4~8_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X17_Y25_N2
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!lines(9) & (lines(5) & (!lines(4) & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(9),
	datab => lines(5),
	datac => lines(4),
	datad => \Equal6~1_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X19_Y25_N30
\Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (!lines(1) & (!lines(9) & (!lines(5) & !lines(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(1),
	datab => lines(9),
	datac => lines(5),
	datad => lines(4),
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X20_Y25_N24
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\vState.vAs~q\ & (lines(0) & (\Equal4~9_combout\ & \Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vState.vAs~q\,
	datab => lines(0),
	datac => \Equal4~9_combout\,
	datad => \Equal4~8_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X20_Y25_N18
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((!\Equal5~0_combout\ & \vState.vBs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \vState.vBs~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X20_Y25_N19
\vState.vBs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vState.vBs~q\);

-- Location: LCCOMB_X16_Y25_N18
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\vState.vBs~q\ & \Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vState.vBs~q\,
	datad => \Equal5~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X16_Y25_N4
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector11~0_combout\) # ((\vState.vCs~q\ & ((lines(4)) # (!\Equal6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => lines(4),
	datac => \vState.vCs~q\,
	datad => \Selector11~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X16_Y25_N5
\vState.vCs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vState.vCs~q\);

-- Location: LCCOMB_X20_Y25_N28
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Equal6~2_combout\ & (!lines(4) & ((\vState.vCs~q\) # (\vState.vDs~q\)))) # (!\Equal6~2_combout\ & (((\vState.vDs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lines(4),
	datab => \vState.vCs~q\,
	datac => \vState.vDs~q\,
	datad => \Equal6~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X20_Y25_N29
\vState.vDs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vState.vDs~q\);

-- Location: LCCOMB_X20_Y25_N20
\Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (lines(0) & (\Equal4~9_combout\ & \Equal4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lines(0),
	datac => \Equal4~9_combout\,
	datad => \Equal4~8_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X20_Y25_N22
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Equal7~0_combout\ & (!\vState.vDs~q\ & ((\vState.vAs~q\) # (\Equal4~10_combout\)))) # (!\Equal7~0_combout\ & (((\vState.vAs~q\) # (\Equal4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \vState.vDs~q\,
	datac => \vState.vAs~q\,
	datad => \Equal4~10_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X20_Y25_N23
\vState.vAs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vState.vAs~q\);

-- Location: LCCOMB_X20_Y25_N10
\vSync_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vSync_s~0_combout\ = (\vSync_s~q\ & (!\Selector7~0_combout\ & ((!\Equal7~0_combout\) # (!\vState.vDs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vSync_s~q\,
	datab => \vState.vDs~q\,
	datac => \Equal7~0_combout\,
	datad => \Selector7~0_combout\,
	combout => \vSync_s~0_combout\);

-- Location: LCCOMB_X20_Y25_N12
\vSync_s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vSync_s~1_combout\ = (\vSync_s~0_combout\) # ((!\vState.vAs~q\ & ((\Selector7~0_combout\) # (\vSync_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vState.vAs~q\,
	datab => \Selector7~0_combout\,
	datac => \vSync_s~q\,
	datad => \vSync_s~0_combout\,
	combout => \vSync_s~1_combout\);

-- Location: FF_X20_Y25_N13
vSync_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vSync_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vSync_s~q\);

-- Location: LCCOMB_X20_Y27_N2
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\hState.hCs~q\ & (((clock_cycle(4)) # (!\Equal0~8_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => clock_cycle(4),
	datac => \hState.hCs~q\,
	datad => \Equal0~8_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X20_Y27_N6
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!clock_cycle(8) & (!clock_cycle(9) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_cycle(8),
	datac => clock_cycle(9),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X20_Y27_N24
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (clock_cycle(6) & (clock_cycle(4) & (!clock_cycle(7) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(6),
	datab => clock_cycle(4),
	datac => clock_cycle(7),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X20_Y27_N0
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\hState.hDs~q\ & (\Equal3~0_combout\ & ((\hState.hAs~q\) # (\Equal0~10_combout\)))) # (!\hState.hDs~q\ & (((\hState.hAs~q\) # (\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hState.hDs~q\,
	datab => \Equal3~0_combout\,
	datac => \hState.hAs~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X20_Y27_N1
\hState.hAs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hState.hAs~q\);

-- Location: LCCOMB_X20_Y27_N12
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!clock_cycle(6) & (!clock_cycle(4) & (clock_cycle(7) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_cycle(6),
	datab => clock_cycle(4),
	datac => clock_cycle(7),
	datad => \Equal0~9_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y27_N14
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\hState.hAs~q\ & (((\hState.hBs~q\ & !\Equal1~0_combout\)))) # (!\hState.hAs~q\ & ((\Equal0~10_combout\) # ((\hState.hBs~q\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hState.hAs~q\,
	datab => \Equal0~10_combout\,
	datac => \hState.hBs~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X20_Y27_N15
\hState.hBs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hState.hBs~q\);

-- Location: LCCOMB_X20_Y27_N22
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\hState.hBs~q\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \hState.hBs~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X20_Y27_N23
\hState.hCs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hState.hCs~q\);

-- Location: LCCOMB_X18_Y27_N14
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal2~0_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X20_Y27_N30
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Equal2~1_combout\ & (!clock_cycle(4) & ((\hState.hCs~q\) # (\hState.hDs~q\)))) # (!\Equal2~1_combout\ & (((\hState.hDs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hState.hCs~q\,
	datab => clock_cycle(4),
	datac => \hState.hDs~q\,
	datad => \Equal2~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X20_Y27_N31
\hState.hDs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hState.hDs~q\);

-- Location: LCCOMB_X20_Y27_N16
\hSync_s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hSync_s~0_combout\ = (\hSync_s~q\ & (((\Equal3~0_combout\) # (!\hState.hAs~q\)) # (!\hState.hDs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hState.hDs~q\,
	datab => \hSync_s~q\,
	datac => \hState.hAs~q\,
	datad => \Equal3~0_combout\,
	combout => \hSync_s~0_combout\);

-- Location: LCCOMB_X20_Y27_N4
\hSync_s~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hSync_s~1_combout\ = (\hSync_s~0_combout\) # ((!\hState.hAs~q\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hSync_s~0_combout\,
	datac => \hState.hAs~q\,
	datad => \Equal0~10_combout\,
	combout => \hSync_s~1_combout\);

-- Location: FF_X20_Y27_N5
hSync_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hSync_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hSync_s~q\);

-- Location: LCCOMB_X20_Y25_N16
\vEn~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vEn~2_combout\ = (\vEn~q\ & (((lines(4)) # (!\Equal6~2_combout\)) # (!\vState.vCs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vEn~q\,
	datab => \vState.vCs~q\,
	datac => lines(4),
	datad => \Equal6~2_combout\,
	combout => \vEn~2_combout\);

-- Location: LCCOMB_X20_Y25_N26
\vEn~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vEn~3_combout\ = (\vEn~2_combout\) # ((\vState.vBs~q\ & (!\vState.vCs~q\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vState.vBs~q\,
	datab => \vState.vCs~q\,
	datac => \Equal5~0_combout\,
	datad => \vEn~2_combout\,
	combout => \vEn~3_combout\);

-- Location: FF_X20_Y25_N27
vEn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vEn~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vEn~q\);

-- Location: LCCOMB_X20_Y27_N8
\hEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hEn~0_combout\ = (\hEn~q\ & (((clock_cycle(4)) # (!\Equal2~1_combout\)) # (!\hState.hCs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hState.hCs~q\,
	datab => \hEn~q\,
	datac => clock_cycle(4),
	datad => \Equal2~1_combout\,
	combout => \hEn~0_combout\);

-- Location: LCCOMB_X20_Y27_N18
\hEn~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hEn~1_combout\ = (\hEn~0_combout\) # ((!\hState.hCs~q\ & (\hState.hBs~q\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hState.hCs~q\,
	datab => \hState.hBs~q\,
	datac => \hEn~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \hEn~1_combout\);

-- Location: FF_X20_Y27_N19
hEn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hEn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hEn~q\);

-- Location: LCCOMB_X20_Y27_N28
\rgbEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgbEn~0_combout\ = (\vEn~q\ & \hEn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vEn~q\,
	datad => \hEn~q\,
	combout => \rgbEn~0_combout\);

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

ww_vPos(0) <= \vPos[0]~output_o\;

ww_vPos(1) <= \vPos[1]~output_o\;

ww_vPos(2) <= \vPos[2]~output_o\;

ww_vPos(3) <= \vPos[3]~output_o\;

ww_vPos(4) <= \vPos[4]~output_o\;

ww_vPos(5) <= \vPos[5]~output_o\;

ww_vPos(6) <= \vPos[6]~output_o\;

ww_vPos(7) <= \vPos[7]~output_o\;

ww_vPos(8) <= \vPos[8]~output_o\;

ww_vPos(9) <= \vPos[9]~output_o\;

ww_vPos(10) <= \vPos[10]~output_o\;

ww_vPos(11) <= \vPos[11]~output_o\;

ww_hPos(0) <= \hPos[0]~output_o\;

ww_hPos(1) <= \hPos[1]~output_o\;

ww_hPos(2) <= \hPos[2]~output_o\;

ww_hPos(3) <= \hPos[3]~output_o\;

ww_hPos(4) <= \hPos[4]~output_o\;

ww_hPos(5) <= \hPos[5]~output_o\;

ww_hPos(6) <= \hPos[6]~output_o\;

ww_hPos(7) <= \hPos[7]~output_o\;

ww_hPos(8) <= \hPos[8]~output_o\;

ww_hPos(9) <= \hPos[9]~output_o\;

ww_hPos(10) <= \hPos[10]~output_o\;

ww_hPos(11) <= \hPos[11]~output_o\;

ww_clk_20Hz <= \clk_20Hz~output_o\;

ww_vSync <= \vSync~output_o\;

ww_hSync <= \hSync~output_o\;

ww_rgbEn <= \rgbEn~output_o\;
END structure;


