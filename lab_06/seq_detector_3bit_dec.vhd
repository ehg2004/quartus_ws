library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity seq_detector_3bit_dec is
	port(
	PB0,PB1   , SW_i : in std_logic;
	Q_dec : out std_logic_vector (7 downto 0)
	);
end seq_detector_3bit_dec;

architecture seq_detector_3bit_dec_arch of seq_detector_3bit_dec is
--COMPONENT--
component seq_detector_3bit is
	port(
	clk , RSTN , SW_i : in std_logic;
	Q : out std_logic_vector (2 downto 0)
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

--COMPONENT--END--

--SIGNAL--
	signal Q_s : std_logic_vector (2 downto 0);
	signal Q_ss : std_logic_vector (3 downto 0);
	signal Q_dec_s : std_logic_vector (7 downto 0);

	signal clk_s  , rstn_s , i_s : std_logic;
--SIGNAL--END--

--BEGIN--
	begin
	seq_detec: 
	 seq_detector_3bit 
	port map(
	clk=>clk_s , RSTN =>rstn_s, SW_i =>i_s,
	Q =>Q_s
	);
	dec_seq: conv_HEX_7SEG_v port map
	(
	X =>Q_ss,
	PH=>'0', dot_in=>'0',
	D => Q_dec_s
	);
	clk_s	<= PB0;
	rstn_s<=PB1;
	Q_ss(2 downto 0)<=Q_s;
	Q_ss(3)<='0';
	i_s<=SW_i;
	Q_dec<=Q_dec_s;
end seq_detector_3bit_dec_arch;