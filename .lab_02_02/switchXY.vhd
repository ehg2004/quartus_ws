Library IEEE;
use ieee.std_logic_1164.all;

entity switchXY is
	port (
			X , Y  , ctrl: in std_logic ; 
			O0  : out std_logic 
			);
end switchXY;

architecture switchXY_arch of switchXY is 
--SIGNAL--
--signal s0 , s1 , s2 , s3: std_logic ;
--END--SIGNAL--
	begin
	O0 <= ( (X and ctrl ) or (Y and not ctrl) );
	--O1 <= ( (X and not ctrl ) or (Y and ctrl) );
--BEGIN--
end switchXY_arch;