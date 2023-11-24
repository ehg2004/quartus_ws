LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY rom00_test IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END rom00_test;


ARCHITECTURE SYN OF rom00_test IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
	q    <= sub_wire0(7 DOWNTO 0);
	
END SYN;
