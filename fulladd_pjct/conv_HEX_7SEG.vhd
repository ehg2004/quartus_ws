Library IEEE;
use ieee.std_logic_1164.all;

entity conv_HEX_7SEG is
	port	(
	X0,X1,X2,X3, PH, dot_in: in std_logic;
	a,b,c,d,e,f,g,dot : out std_logic	
	);
end conv_HEX_7SEG;

architecture conv_HEX_7SEG_arch of conv_HEX_7SEG is
	begin
	a	<= PH xor ((X3 and X0 and (X1 xor X2))or (not X3 and not X1 and (X0 xor X2)));
	b 	<= PH xor ((not X3 and X2 and not X1 and X0) or (X2 and X1 and not X0) or(X3 and X1 and X0) or (X3 and X2 and not X0));
	c	<= PH xor ((not X3 and not X2 and X1 and not X0)or(X3 and X2 and (X1 or not X0)));
	d 	<= PH xor ((not X3 and not X1 and (X2 xor X0)) or (X2 and X1 and X0) or (X3 and not X2 and X1 and not X0));
	e	<= PH xor ((not X3 and X0) or (not X3 and X2 and not X1) or (not X2 and not X1 and X0));
	f 	<= PH xor ((not X3 and not X2 and (X1 or X0)) or (not X3 and X1 and X0) or (X3 and X2 and not X1 and X0));
	g 	<= PH xor ((not X3 and not X2 and not X1)or(not X3 and X2 and X1 and X0)or(X3 and X2 and not X1 and not X0));
	dot<= PH xor (not dot_in) ;
end conv_HEX_7SEG_arch;
