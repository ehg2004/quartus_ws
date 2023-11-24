Library IEEE;
use ieee.std_logic_1164.all;

entity count_inc_dec is
	port(
		clk , Ci, Co , ctrl : in std_logic;
		X : out std_logic_vector (0 down to 3);
		ctrl_b,clk_b : buffer std_logic
	);
end count_inc_dec ;

architecture count_inc_dec_d_arch of count_inc_dec is
--COMPONENT--
component tff is
	port(
		T,CLK,RSTN,CLRN : in std_logic;
		Q : out std_logic;
		);
end component;

component switchXY is
	port (
			X , Y  , ctrl: in std_logic ; 
			O0 , O1 : out std_logic 
			);
end component;

--END--COMPONENT--

end count_inc_dec_d_arch;