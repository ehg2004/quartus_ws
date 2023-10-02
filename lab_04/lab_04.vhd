library ieee;
use iee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab_04 is 
	port(
	clk , PB0 : in std_logic;
	Q : out std_logic_vector (7 downto 0);
	led_o : out std_logic
	);
end lab_04;

architecture lab_04_arch of lab_04 is

component RAmachine_gate is
	port(
	clk , RSTN : in std_logic;
	Q : out std_logic_vector (3 downto 0)
	);
end component;



end lab_04_arch;