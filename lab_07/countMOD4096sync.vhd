Library IEEE;
use ieee.std_logic_1164.all;

entity countMOD4096sync is
	port	(
	clk : in std_logic;
	mod8 , clk_0 : out std_logic;
	Q : out std_logic_vector ( 11 downto 0)
	);
end countMOD4096sync;

architecture countMOD4096sync_Arch of countMOD4096sync is

	component dff is
		port (
		clk , D , PRN ,CLRN : in std_logic;
		Q : out std_logic
		);
	end component;
--	component dff is
--	port	(
--		D, PRN , CLRN  , CLK: in std_logic;
--		Q : out std_logic
--	);
	
--	end component;
	signal Ds  : std_logic_vector (11 downto 0);
	signal Qs : std_logic_vector (11 downto 0);
	signal clk_s  : std_logic ;
	
begin

	gen00:for i in 0 to 11 generate
	a00: dff
	port map	(
		D=>Ds(i) ,PRN=>'1' , CLRN=>'1'  , CLK=> clk_s ,
		Q=>Qs(i)
	);
	end generate;
	
	clk_prcss: process(clk_s)
	variable v_cmp : std_logic;
	begin
	if rising_edge(clk_s) then
		v_cmp :='1';
		l_cmp0: for i in 0 to 11 loop
			l_cmp1: for j in 0 to i-1 loop
			v_cmp := v_cmp and Qs(j);
			end loop l_cmp1;
		Ds(i)<= (Qs(i) and not v_cmp ) or (not Qs(i) and v_cmp);
	end loop l_cmp0;
	end if;
	end process clk_prcss;
	
	mod8<= not(  Qs(1) and Qs(2) and Qs(3) );
	clk_0<= Qs(0);
	Q<=Qs;
	clk_s<=clk;

end countMOD4096sync_Arch;
