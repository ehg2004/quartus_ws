Library IEEE;
use ieee.std_logic_1164.all;

entity PISOtoSIPOmod8dec is
	port	(
	N_in : in std_logic_vector (7 downto 0);
	A0_out , A1_out, B0_out , B1_out , LED_out : out std_logic_vector (7 downto 0);
	clk_led : out std_logic;
	clk , PB0 , PB1: in std_logic
	);
end PISOtoSIPOmod8dec;

architecture PISOtoSIPOmod8dec_arch of PISOtoSIPOmod8dec is

	component conv_HEX_7SEG_v is
	port	(
	X : in  std_logic_vector (3 downto 0);
	PH, dot_in: in std_logic;
	D : out std_logic_vector (7 downto 0)
	);
	end component;
	
	component Timing_Reference is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_2Hz: out std_logic);-- Can check it using PIN A8 - LEDR0

	end component;
  
	
	component PISOtoSIPOmod8 is
	port	(
	N_in : in std_logic_vector (7 downto 0);
	A_out, B_out , LED_out: out std_logic_vector (7 downto 0);
	clk , PB0 , PB1: in std_logic
	);
	end component;
	
	signal IN_s , A_s, B_s  , LED_out_s:  std_logic_vector (7 downto 0);
	signal A0_outs , A1_outs, B0_outs , B1_outs :  std_logic_vector (3 downto 0);
	signal A0_outDECs , A1_outDECs, B0_outDECs , B1_outDECs :  std_logic_vector (7 downto 0);
	signal clk_s , clk_t , PB0s, PB1s : std_logic;
	
	begin

	aa0: PISOtoSIPOmod8
	port map	(
	N_in => IN_s,
	A_out =>A_s, B_out =>B_s,LED_out=>LED_out_s,
	clk=>clk_t , PB0=>PB0s , PB1=>PB1s
	);
	
	
	tr0: Timing_Reference 
	port map ( clk=>clk_s, -- Pin connected to P11 (N14)
			clk_2Hz=>clk_t);-- Can check it using PIN A8 - LEDR0

	
	decA0: conv_HEX_7SEG_v
	port	map(
	X =>A0_outs,
	PH => '0' , dot_in => '0',
	D =>A0_outDECs
	);

	
	decA1: conv_HEX_7SEG_v
	port	map(
	X =>A1_outs ,
	PH => '0' , dot_in => '0',
	D =>A1_outDECs
	);

	
	decB0: conv_HEX_7SEG_v
	port	map(
	X  => B0_outs ,
	PH => '0' , dot_in => '0',
	D => B0_outDECs
	);

	
	decB1: conv_HEX_7SEG_v 
	port	map(
	X => B1_outs ,
	PH => '0' , dot_in => '0',
	D => B1_outDECs
	);
	
		
	A0_outs<=A_s(3 downto 0);
	A1_outs<=A_s(7 downto 4);
	B0_outs<=B_s(3 downto 0);
	B1_outs<=B_s(7 downto 4);
	
	IN_s<=N_in;
	
	clk_s<=clk;
	
	PB0s<=PB0;
	PB1s<=PB1;
	clk_led<=clk_t;
	
	LED_out<=LED_out_s;
	
	A0_out<=A0_outDECs; A1_out<=A1_outDECs; B0_out<=B0_outDECs ; B1_out<=B1_outDECs;

end PISOtoSIPOmod8dec_arch;