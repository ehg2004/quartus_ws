Library IEEE;
use ieee.std_logic_1164.all;
use work.all;
use work.array_lab02_pkg.all;
entity lab_02_02 is

	port (
			SW: in std_logic_vector (3 downto 0);
			DEC0,DEC1,DEC2,DEC3,DEC4,DEC5: out  std_logic_vector(7 downto 0);
			plse_PB1 , clk_PB0 , ctrl_SW_4: in std_logic 
			);
end lab_02_02;

architecture lab_02_02_arch of lab_02_02 is
component fourBitRegSixSumTest is
	port (
			D: in std_logic_vector (3 downto 0);
			Q0,Q1,Q2,Q3,Q4,Q5: out  std_logic_vector(3 downto 0);
			Q: out array_4_bit_6 ;
			plse , clk , ctrl: in std_logic 
			);
end component;

component conv_HEX_7SEG_v is
	port	(
	X : in  std_logic_vector (3 downto 0);
	PH, dot_in: in std_logic;
	D : out std_logic_vector (7 downto 0)
	);
end component;

	signal dec_s : array_8_bit_6;
	signal Q_s: array_4_bit_6;
	signal PB0 , PB1 , SW_4s : std_logic ;
	signal SW_s : std_logic_vector (3 downto 0);
	
	begin 
	
	a0: fourBitRegSixSumTest 
	port map (
			D=>SW_s,
			--Q0,Q1,Q2,Q3,Q4,Q5: out  std_logic_vector(3 downto 0);
			Q=> Q_s,
			plse=>PB1 , clk=>PB0 , ctrl=>SW_4s
			);	
	gen00: for i in 0 to 5 generate
	aa1: conv_HEX_7SEG_v 
	port map	(
	X => Q_s (i),
	PH=>'0', dot_in=>'0',
	D=>dec_s(i)
	);
	end generate;
	
	SW_s<=SW;
	PB0<=clk_PB0 ; PB1<=plse_PB1 ; SW_4s<=ctrl_SW_4 ;
	
	DEC0<=dec_s(0);DEC1<=dec_s(1);DEC2<=dec_s(2);DEC3<=dec_s(3);DEC4<=dec_s(4);DEC5<=dec_s(5);

end lab_02_02_arch;