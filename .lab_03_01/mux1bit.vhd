Library IEEE;
use ieee.std_logic_1164.all;

entity mux1bit is
	port	(
	A , B , ctrl : in std_logic;
	output : out std_logic
	);
end mux1bit;

architecture mux1bit_arch of mux1bit is
	begin
	output <= ( (ctrl and A ) or (not ctrl and B));
end mux1bit_arch;
