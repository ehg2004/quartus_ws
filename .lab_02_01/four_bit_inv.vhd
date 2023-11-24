Library IEEE;
use ieee.std_logic_1164.all;

entity four_bit_inv is
	Port ( 
			X_i: in  std_logic_vector (3 downto 0);
			ctrl: in  std_logic;
			X_o : out  std_logic_vector (3 downto 0);
			ctrl_o: buffer  std_logic
			);
end four_bit_inv	;
architecture four_bit_inv_arch of four_bit_inv is
	begin
		-- X_o(0)  <= ctrl xor X_i(0) ;
		-- X_o(1) <= ctrl xor X_i(1);
		--X_o(2) <= ctrl xor X_i(2) ;
		--X_o(3) <= ctrl xor X_i(3) ;
		gen: for i in 0 to 3 generate
			action: X_o(i)  <= ctrl xor X_i(i) ;
	end generate;
	ctrl_o <= ctrl ;
	
end four_bit_inv_arch;