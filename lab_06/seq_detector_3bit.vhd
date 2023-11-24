library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity seq_detector_3bit is
	port(
	clk , RSTN , SW_i : in std_logic;
	Q : out std_logic_vector (2 downto 0)
	);
end seq_detector_3bit;

architecture seq_detector_3bit_arch of seq_detector_3bit is
--COMPONENT--
	component dff is
		port (
		clk , D ,  PRN ,CLRN : in std_logic;
		Q : out std_logic
		);
	end component;
--COMPONENT--END--

--SIGNAL--
	signal Q_s , D_s  , PRN_s , CLRN_s: std_logic_vector (2 downto 0);
	signal clk_s  , rstn_s , i_s : std_logic;
--SIGNAL--END--

--BEGIN--
	begin
	gen00: for i in 0 to 2 generate
	ffi0: dff port map (
		clk=>clk_s , D=>D_s(i) ,  PRN=>PRN_s(i) , CLRN=>CLRN_s(i) ,
		Q=>Q_s(i)
		);
	CLRN_s(i)<=rstn_s;
	PRN_s(i)<='1';
	end generate;
	
	D_s(0)<= ((Q_s(2)and Q_s(1) and not Q_s(0))or(not i_s and not Q_s(0))or(not i_s and Q_s(1)));
	D_s(1)<=((not i_s and not Q_s(1) and Q_s(0))or(not i_s and not Q_s(2) and Q_s(1))or(Q_s(2)and Q_s(1) and not Q_s(0)));
	D_s(2)<=((not i_s and Q_s(2) and not Q_s(1))or(i_s and Q_s(1) and (Q_s(0) xor Q_s(2))));

	clk_s	<= clk;
	rstn_s<=RSTN;
	Q<=Q_s;
	i_s<=SW_i;
end seq_detector_3bit_arch;