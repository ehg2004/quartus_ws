Library IEEE;
use ieee.std_logic_1164.all;
entity countDec is
	port (
			--en : in std_logic;
			--clk	:	in std_logic_vector (3 downto 0);
			Si : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end countDec;

architecture countDec_arch of countDec is
	component tff is
	port (
	CLK , PRN,CLRN, T: in std_logic;
	Q : out std_logic
	);
	end component;
	component detVerDec is
	port (
			--en : in std_logic;
			Si	:	in std_logic_vector (3 downto 0);
			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
--			clk: in std_logic;
			Co	:	out std_logic
			);
	end component;
	
	signal 	PRSN_s, RSTN_s , Si_s :  std_logic_vector (3 downto 0);
	signal 	T_s :  std_logic_vector (3 downto 0);
	signal	o_Co_s : std_logic ;
	signal 	s_clk , s_ctrl : std_logic;
	
		begin
		a0: tff port map (CLK=>( (s_clk)), PRN=>PRSN_s(0), CLRN=>RSTN_s(0) , T => '1' , Q => T_s(0) );
	gen00: for i in 1 to 3 generate
		a1: tff port map (CLK => (T_s(i-1)), PRN=>PRSN_s(i), CLRN=>RSTN_s(i), T => '1', Q =>T_s(i));
	end generate;
	a2: detVerDec
	port map(
			Si	=> T_s,
			PRSN_o=>PRSN_s,
			RSTN_o =>RSTN_s,
			Co	=> o_Co_s
			);
	gen01: for i in 0 to 3 generate
	Si_s(i)<=  T_s(i);
	end generate;
	s_clk<=clk;
	Si<=Si_s;
	Co<=o_Co_s;
	
end countDec_arch;
