Library IEEE;
use ieee.std_logic_1164.all;
entity lab_02_01 is
	port (
			Dec0,Dec1,Inc0,Inc1 : out std_logic_vector (7 downto 0);
			clk : in std_logic;
			clock_2hz : out std_logic
			);
end lab_02_01;
architecture lab_02_01_arch of lab_02_01 is

component twoDigcountInc is
	port (
			D0,D1 : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end component;
component twoDigcountDecComp is
	port (
			D0,D1 : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end component;
component Timing_Reference is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_2Hz: out std_logic);-- Can check it using PIN A8 - LEDR0

end component;

component conv_HEX_7SEG_v is
	port	(
	X : in  std_logic_vector (3 downto 0);
	PH, dot_in: in std_logic;
	D : out std_logic_vector (7 downto 0)
	);
end component;


	signal 	Dec_0, Dec_1, Inc_0, Inc_1 :  std_logic_vector (3 downto 0);
	--signal 	T_s :  std_logic_vector (3 downto 0);
	signal	o_Co_s , C_s : std_logic ;
	signal 	s_clk : std_logic; 
	
	begin
	
	aa:Timing_Reference 
	port map ( clk => clk,
			clk_2Hz=>s_clk
			);


	a0: twoDigcountInc port map
	 (
			D0 => Inc_0 , D1 =>Inc_1,
			clk=>s_clk,
			Co=>o_Co_s
			);
	a1: twoDigcountDecComp 
	port map (
			D0=>Dec_0,D1 =>Dec_1,
			clk=>s_clk
			);
	d0:conv_HEX_7SEG_v 
	port	map (
	X => Inc_0,
	PH=>'0', dot_in=>'0',
	D=>Inc0
	);
	d1:conv_HEX_7SEG_v 
	port	map (
	X => Inc_1,
	PH=>'0', dot_in=>'0',
	D=>Inc1
	);
	d2:conv_HEX_7SEG_v 
	port	map (
	X => Dec_0,
	PH=>'0', dot_in=>'0',
	D=>Dec0
	);
	d3:conv_HEX_7SEG_v 
	port	map (
	X => Dec_1,
	PH=>'0', dot_in=>'0',
	D=>Dec1
	);
	clock_2hz<=s_clk;

end lab_02_01_arch;