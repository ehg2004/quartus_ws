Library IEEE;
use ieee.std_logic_1164.all;

entity twoDigCount is
	port (
			clk,clk2, ctrl: in std_logic ; 
			Co : out std_logic;
			D0 , D1 : out std_logic_vector (3 downto 0)
			--clk_b, ctrl_b: in std_logic 
			);
end twoDigCount;

architecture twoDigCount_arch of twoDigCount is 
--COMPONENTS--
component oneDigCount is
	port (
			clk, ctrl: in std_logic ; 
			Co : out std_logic;
			S: out std_logic_vector (3 downto 0)
			--clk_b, ctrl_b: in std_logic 
			);
end component;

--END--COMPONENTS--
--SIGNAL--
--END--COMPONENTS--
--SIGNAL--
	signal 	S0_s, S1_s :  std_logic_vector (3 downto 0);
	--signal 	T_s :  std_logic_vector (3 downto 0);
	signal	o_Co_s , C_s : std_logic ;
	signal 	s_clk , s_ctrl : std_logic; 
--END--SIGNAL--
--BEGIN--
	begin
	a0: oneDigCount		port map (
				clk => clk,
				ctrl => s_ctrl,
				Co => C_s,
				S=>S0_s
				);
				
				
	a1: oneDigCount port map (
				clk=> (clk2) , 
				ctrl=> s_ctrl, 
				Co=>o_Co_s,
				S=>S1_s
				);
	s_clk<=clk;
	s_ctrl<=ctrl; 
	Co<= not o_Co_s;
	D0<=S0_s; D1<=S1_s ;

end twoDigCount_arch;
	
--COMPONENTS--