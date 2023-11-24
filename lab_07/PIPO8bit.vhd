Library IEEE;
use ieee.std_logic_1164.all;

entity PIPO8bit is
	port	(
		D : in std_logic_vector (7 downto 0); 
		PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic_vector (7 downto 0)
	);
end PIPO8bit;

architecture reg8bit_arch of PIPO8bit is

	component dff is
	port	(
		D, PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic
	);	
	end component;

	signal D_s , Q_s : std_logic_vector (7 downto 0);
	signal clk_s , PRN_s , CLRN_s : std_logic;
	
	begin
	
	gen00: for i in 0 to 7 generate
	aa00:dff 
	port map (
		D=>D_s(i), PRN=>PRN_s,  CLRN=>CLRN_s  , CLK => clk_s,
		Q=>Q_s(i)
	);	
	end generate;
	
	D_s<=D;
	Q<=Q_s;
	clk_s<=clk;
	PRN_s<=PRN;
	CLRN_s<=CLRN;	

end reg8bit_arch;