Library IEEE;
use ieee.std_logic_1164.all;
entity twoDigcountDecComp is
	port (
			D0,D1 : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end twoDigcountDecComp;
architecture twoDigcountDecComp_arch of twoDigcountDecComp is

component twoDigcountInc is
	port (
			D0,D1 : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end component;
component four_bit_add_sub_b is
	Port ( 
			A : in  std_logic_vector (3 downto 0);
			B : in  std_logic_vector (3 downto 0);	
			Ctrl: in  std_logic;
			S : out  std_logic_vector (3 downto 0);
			Cout : out  std_logic ;
			A_b : buffer  std_logic_vector (3 downto 0);
			B_b : buffer  std_logic_vector (3 downto 0)
			);
end component	;


	signal 	Dec_0, Dec_1, Inc_0, Inc_1 , Nine_s:  std_logic_vector (3 downto 0);
	--signal 	T_s :  std_logic_vector (3 downto 0);
	signal	o_Co_s , C_s : std_logic ;
	signal 	s_clk : std_logic; 
	
	begin
	Nine_s<="1001";
	a0: twoDigcountInc port map
	 (
			D0 => Inc_0 , D1 =>Inc_1,
			clk=>s_clk,
			Co=>o_Co_s
			);
	a1: four_bit_add_sub_b 
	Port map ( 
			A =>Nine_s,
			B =>Inc_0,
			Ctrl=>'1',
			S =>Dec_0
			);
	a2: four_bit_add_sub_b 
	Port map ( 
			A =>Nine_s,
			B =>Inc_1,
			Ctrl=>'1',
			S =>Dec_1
			);
	
	
	D0<=Dec_0;D1<=Dec_1;-- : out std_logic_vector (3 downto 0);
	s_clk<=clk;
	Co<=o_Co_s;

end twoDigcountDecComp_arch;