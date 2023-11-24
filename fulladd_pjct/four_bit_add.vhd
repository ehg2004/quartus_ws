Library IEEE;
use ieee.std_logic_1164.all;

entity four_bit_add is
	Port ( 
			A : in  std_logic_vector (3 downto 0);
			B : in  std_logic_vector (3 downto 0);
			Cin: in  std_logic;
			S : out  std_logic_vector (3 downto 0);
			Cout : out  std_logic
			);
end four_bit_add	;

architecture  four_bit_add_arch of four_bit_add is	
	component add_s is 
		 port(
			  A, B, Ci:  in std_logic; 
			  Co, S : out std_logic
			); 
	end component;	
	signal c_path: std_logic_vector (4 downto 0);
	begin
		gen: for i in 0 to 3 generate
			action: add_s port map (A => A(i), B =>  B(i) , Ci => c_path(i), S => S(i), Co => c_path(i+1));
	end generate;
	c_path(0) <=  Cin;
	Cout <= c_path(4);
end four_bit_add_arch;