Library IEEE;
use ieee.std_logic_1164.all;

entity countMOD16sync is
	port	(
	clk , clrn : in std_logic;
	mod9 : out std_logic;
	Q : out std_logic_vector ( 3 downto 0)
	);
end countMOD16sync;

architecture countMOD16sync_arch of countMOD16sync is

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
	signal Ds  : std_logic_vector (3 downto 0);
	signal Qs : std_logic_vector (3 downto 0);
	signal clk_s  : std_logic ;
	
begin

	gen00:for i in 0 to 3 generate
	a00: dff
	port map	(
		D=>Ds(i) ,PRN=>'1' , CLRN=> clrn  , CLK=> clk_s ,
		Q=>Qs(i)
	);
	end generate;
	
	clk_prcss: process(clk_s)
	variable v_cmp : std_logic;
	begin
	--if rising_edge(clk_s) then
		v_cmp :='1';
		l_cmp0: for i in 0 to 3 loop
			l_cmp1: for j in 0 to i-1 loop
			v_cmp := v_cmp and Qs(j);
			end loop l_cmp1;
		Ds(i)<= (Qs(i) and not v_cmp ) or (not Qs(i) and v_cmp);
	end loop l_cmp0;
	--end if;
	end process clk_prcss;
	
	mod09dff: dff
	port map	(
		D=>Qs(3)  ,PRN=>'1' , CLRN=>'1'  , CLK=> clk_s ,
		Q=>mod9
	);
	Q<=Qs;
	clk_s<=clk;

end countMOD16sync_arch;
