Library IEEE;
use ieee.std_logic_1164.all;

entity countMOD16async is
	port	(
	clk , clrn : in std_logic;
	Q : out std_logic_vector ( 3 downto 0)
	);
end countMOD16async;

architecture countMOD16async_arch of countMOD16async is

	component tff is
	port	(
		T, PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic
	);
	end component;
--	component dff is
--	port	(
--		D, PRN , CLRN  , CLK: in std_logic;
--		Q : out std_logic
--	);
	
--	end component;
	signal Ti_Qiis  : std_logic_vector (4 downto 0);
	signal Q_s : std_logic_vector (3 downto 0);
	signal clk_s  : std_logic ;
	
begin

	gen00:for i in 0 to 3 generate
	a00: tff
	port map	(
		T=>'1' ,PRN=>'1' , CLRN=> clrn  , CLK=> not Ti_Qiis(i) ,
		Q=>Ti_Qiis(i+1)
	);
	aa01: 
		Q_s(i)<=Ti_Qiis(i+1);
		end generate;

	Ti_Qiis(0)<= not clk_s;
	Q<=Q_s;
	clk_s<=clk;

end countMOD16async_arch;
