library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab_04 is 
	port(
	clk , PB0 : in std_logic;
	Q : out std_logic_vector (7 downto 0);
	led_o : out std_logic
	);
end lab_04;

architecture lab_04_arch of lab_04 is
--COMPONENT--
component RAmachine_gate is
	port(
	clk , RSTN : in std_logic;
	Q : out std_logic_vector (3 downto 0)
	);
end component;

component conv_HEX_7SEG_v is
	port	(
	X : in  std_logic_vector (3 downto 0);
	PH, dot_in: in std_logic;
	D : out std_logic_vector (7 downto 0)
	);
end component;

component Timing_Reference is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_2Hz: out std_logic);-- Can check it using PIN A8 - LEDR0

	end component;

--END--COMPONENT--
	
--SIGNAL--
	signal D_s:  std_logic_vector (7 downto 0);
	signal X_s: std_logic_vector (3 downto 0);
	signal clk_s, PB0_s , clk_t: std_logic;
--END--SIGNAL--
begin

aa00: RAmachine_gate
	port map(
	clk => clk_t, RSTN=>PB0_s,
	Q => X_s
	);
aa01: conv_HEX_7SEG_v 
	port map(
	X =>X_s,
	PH=>'0', dot_in=>'0',
	D=>D_s
	);
aa02:Timing_Reference
	port map ( clk=>clk_s, -- Pin connected to P11 (N14)
			clk_2Hz=>clk_t);-- Can check it using PIN A8 - LEDR0
clk_s<=clk;
PB0_s<=PB0;
led_o<=clk_t;
Q<=D_s;



end lab_04_arch;