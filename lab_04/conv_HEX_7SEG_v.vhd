Library IEEE;
use ieee.std_logic_1164.all;

entity conv_HEX_7SEG_v is
	port	(
	X : in  std_logic_vector (3 downto 0);
	PH, dot_in: in std_logic;
	D : out std_logic_vector (7 downto 0)
	);
end conv_HEX_7SEG_v;

architecture conv_HEX_7SEG_v_arch of conv_HEX_7SEG_v is
	begin
	D(0)	<= PH xor ((X(3) and X(0) and (X(1) xor X(2)))or (not X(3) and not X(1) and (X(0) xor X(2))));
	D(1) 	<= PH xor ((not X(3) and X(2) and not X(1) and X(0)) or (X(2) and X(1) and not X(0)) or(X(3) and X(1) and X(0)) or (X(3) and X(2) and not X(0)));
	D(2)	<= PH xor ((not X(3) and not X(2) and X(1) and not X(0))or(X(3) and X(2) and (X(1) or not X(0))));
	D(3) 	<= PH xor ((not X(3) and not X(1) and (X(2) xor X(0))) or (X(2) and X(1) and X(0)) or (X(3) and not X(2) and X(1) and not X(0)));
	D(4)	<= PH xor ((not X(3) and X(0)) or (not X(3) and X(2) and not X(1)) or (not X(2) and not X(1) and X(0)));
	D(5) 	<= PH xor ((not X(3) and not X(2) and (X(1) or X(0))) or (not X(3) and X(1) and X(0)) or (X(3) and X(2) and not X(1) and X(0)));
	D(6) 	<= PH xor ((not X(3) and not X(2) and not X(1))or(not X(3) and X(2) and X(1) and X(0))or(X(3) and X(2) and not X(1) and not X(0)));
	D(7)	<= PH xor (not dot_in) ;
end conv_HEX_7SEG_v_arch;
