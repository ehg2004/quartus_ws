Library IEEE;
use ieee.std_logic_1164.all;

entity fourBitSwitchXY is
	port (
			X , Y  : in std_logic_vector(3 downto 0);
			ctrl: in std_logic ; 
			O  : out std_logic_vector(3 downto 0) 
			--O0 , O1 : out std_logic 
			);
end fourBitSwitchXY;


architecture fourBitSwitchXY_arch of fourBitSwitchXY is 
--component switchXY is
--	port (
--			X , Y  , ctrl: in std_logic ; 
--			O0  : out std_logic 
--			);
--end component;
--SIGNAL--
	signal X_s , Y_s , O_s : std_logic_vector(3 downto 0);
	signal s_ctrl: std_logic ;
--END--SIGNAL--
--BEGIN--

	begin
	gen00: for i in 0 to 3 generate
	aa:O(i) <= ( (X(i) and ctrl ) or ( Y(i) and not ctrl) );
--	aa: switchXY port map(
--			X =>X_s(i) , Y=>Y_s(i)  , ctrl =>s_ctrl,
--			O0=>O_s(i)
--			);
--	ab:O(i)<=O_s(i);
	end generate;
	--O<=O_s;
	s_ctrl<=ctrl;
end fourBitSwitchXY_arch;