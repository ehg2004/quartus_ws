Library IEEE;
use ieee.std_logic_1164.all;
entity fourBitRegPIPO is
	port (
			D: in std_logic_vector (3 downto 0);
			Q: out std_logic_vector(3 downto 0);
			PRSN,CLRN , clk: in std_logic 
			);
end fourBitRegPIPO;
architecture fourBitRegPIPO_arch of fourBitRegPIPO is
	component dff is
	port (
	CLK , PRN,CLRN, D: in std_logic;
	Q : out std_logic
	);
	end component;
	
	signal D_s , Q_s: std_logic_vector (3 downto 0);
	signal PRSN_s,CLRN_s,clk_s: std_logic;
	
	begin
	D_s<=D;
	Q<=Q_s;
	PRSN_s<=PRSN;
	CLRN_s<=CLRN;
	clk_s<=clk;
	
	gen00:for i in 0 to 3 generate
		a0:dff port map (
	CLK=>clk_s , PRN=>PRSN_s,CLRN=>CLRN_s, D=>D_s(i),
	Q=>Q_s(i)
	);
	end generate;

end fourBitRegPIPO_arch;