Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

package array_lab02_pkg is
       	type array_4_bit_7 is array (6 downto 0) of std_logic_vector(3 downto 0);
			type array_4_bit_6 is array (5 downto 0) of std_logic_vector(3 downto 0);
			type array_8_bit_6 is array (5 downto 0) of std_logic_vector(7 downto 0);
		 -- type bus_array is array(natural range <>, natural range <>) of std_logic;
end package;

Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;
use work.array_lab02_pkg.all;

--package array_pkg_lab02 is
--       	type array_4_bit_7 is array (6 downto 0) of std_logic_vector(3 downto 0);
--			type array_4_bit_6 is array (5 downto 0) of std_logic_vector(3 downto 0);
--		 -- type bus_array is array(natural range <>, natural range <>) of std_logic;
--end package;


entity fourBitRegSixSumTest is
	port (
			D: in std_logic_vector (3 downto 0);
			Q0,Q1,Q2,Q3,Q4,Q5: out  std_logic_vector(3 downto 0);
			--Q: out array_4_bit_6 ;
			plse , clk , ctrl: in std_logic 
			);
end fourBitRegSixSumTest;
architecture fourBitRegSixSumTest_arch of fourBitRegSixSumTest is
	component fourBitRegPIPO is
		port (
				D: in std_logic_vector (3 downto 0);
				Q: out std_logic_vector(3 downto 0);
				PRSN,CLRN , clk: in std_logic 
				);
	end component;
	
	component fourBitSwitchXY is
	port (
			X , Y  : in std_logic_vector(3 downto 0);
			ctrl: in std_logic ; 
			O  : out std_logic_vector(3 downto 0) 
			--O0 , O1 : out std_logic 
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
	
	signal switch_s,sum_s_d,sum_s_q , D_s4, D_s5 , Co_s_d, Co_s_q: std_logic_vector (3 downto 0);
	signal PRSN_s,CLRN_s,clk_s, pls_s: std_logic;
	--type t_array is array (6 downto 0) of std_logic_vector(3 downto 0);
	signal D_a : array_4_bit_7;
	begin
	D_a(0)<=D;
--	Q<=Q_s; 
	PRSN_s<='1';
	CLRN_s<='1';
	clk_s<=clk;
	pls_s <=plse;
	
	gen00:for i in 0 to 5 generate
		gen01: if i /= 4 and  i /= 5    generate
		a0:fourBitRegPIPO 
		port map (
				D=>D_a(i),
				Q=>D_a(i+1),
				PRSN=>PRSN_s,CLRN=>CLRN_s , clk=> not clk_s
				);
		end generate;
		gen02: if i = 4 generate
		a1:fourBitRegPIPO 
		port map (
				--D=>D_s,
				D=>D_s4,
				Q=>D_a(i+1),
				PRSN=>PRSN_s,CLRN=>CLRN_s , clk=> not(pls_s and  clk_s) --((clk_s and pls_s )or( not pls_s and clk_s))
				);
		end generate;
		gen03: if i = 5 generate
		a1:fourBitRegPIPO 
		port map (
				--D=>D_s,
				D=>D_s5,
				Q=>D_a(i+1),
				PRSN=>PRSN_s,CLRN=>CLRN_s , clk=> not(pls_s and  clk_s) --clk=> ( clk_s ) --((clk_s and pls_s )or( not pls_s and clk_s))--and pls_s)
				);
		end generate;
	end generate;
	
--	a5:fourBitRegPIPO 
--		port map (
--				--D=>D_s,
--				D=>Co_s_d,
--				Q=>Co_s_q,
--				PRSN=>PRSN_s,CLRN=>CLRN_s , clk=>  clk_s--not pls_s
--				);
--				
--	a6:fourBitRegPIPO 
--		port map (
--				--D=>D_s,
--				D=>sum_s_d,
--				Q=>sum_s_q,
--				PRSN=>PRSN_s,CLRN=>CLRN_s , clk=> clk_s-- not pls_s
--				);
				
	a2:fourBitSwitchXY 
	port map(
			X => sum_s_d , Y=> D_a(4) ,
			--ctrl=> not pls_s ,
			ctrl=> not pls_s,

			O  => D_s4
			--O0 , O1 : out std_logic 
			);
	a7:fourBitSwitchXY 
	port map(
			X => Co_s_d , Y=> D_a(5) ,
			--ctrl=> not pls_s ,
			ctrl=> not pls_s,
			O  => D_s5
			--O0 , O1 : out std_logic 
			);
	a4:four_bit_add_sub_b 
	Port map( 
			A =>D_a(1),
			B=>D_a(2),
			Ctrl=>ctrl,
			S =>sum_s_d,
			Cout=> Co_s_d(0)
			);
		
	Q0<=D_a(1);Q1<=D_a(2);Q2<=D_a(3);Q3<=D_a(4);Q4<=D_a(5);Q5<=D_a(6);
	--Q  <= D_a (6 downto 1);
--	
--	gen04: for i in 0 to 5 generate 
--	aa8: Q(i)  <= D_a(i+1);
--	end generate;
	

end fourBitRegSixSumTest_arch;