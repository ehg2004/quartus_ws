Library IEEE;
use ieee.std_logic_1164.all;

entity four_bit_sum_seven_seg is
	port (
			A ,B : in  std_logic_vector (3 downto 0);
			ctrl  : in std_logic ;
			A_dec , B_dec , S_dec : out std_logic_vector (7 downto 0);
			Cout : out  std_logic 
			);
end four_bit_sum_seven_seg;

architecture four_bit_sum_seven_seg_arch of four_bit_sum_seven_seg is
--COMPONENT--

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
	
	component conv_HEX_7SEG_v is
	port	(
			X : in  std_logic_vector (3 downto 0);
			PH, dot_in: in std_logic;
			D : out std_logic_vector (7 downto 0)
			);
	end component;
	
--END--COMPONENT--

--SIGNAL
	signal a_path , a_path_b , b_path , b_path_b , s_path: std_logic_vector (3 downto 0);
	signal a_path_d , b_path_d , s_path_d: std_logic_vector (7 downto 0);
	signal ctrl_s0 , Cout_s0 , PH_s , dot_s: std_logic;
--END SIGNAL--

--BEGIN--
	begin
		action_01: four_bit_add_sub_b port map ( A => a_path , B => b_path , Ctrl => ctrl_s0 , S => s_path , Cout => Cout_s0 , A_b => a_path_b , B_b => b_path_b );
		action_02: conv_HEX_7SEG_v port map ( X => a_path_b , PH => PH_s , dot_in => dot_s , D => a_path_d);
		action_03: conv_HEX_7SEG_v port map ( X => b_path_b , PH => PH_s , dot_in => dot_s , D => b_path_d);
		action_04: conv_HEX_7SEG_v port map ( X => s_path , PH => PH_s , dot_in => dot_s , D => s_path_d);
		
		a_path <= A;
		b_path <= B;
		ctrl_s0 <= ctrl ;
		dot_s <= '0'  ;
		PH_s 	<= '0' ;
		Cout  <= Cout_s0;
		A_dec <= a_path_d;
		B_dec <= b_path_d;
		S_dec <= s_path_d;
		
--END--
end four_bit_sum_seven_seg_arch;

