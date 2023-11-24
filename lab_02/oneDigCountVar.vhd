Library IEEE;
use ieee.std_logic_1164.all;

entity oneDigCountVar is
	port (
			clk, ctrl: in std_logic ; 
			Co : out std_logic;
			S,PRSN, RSTN: out std_logic_vector (3 downto 0)
			--clk_b, ctrl_b: in std_logic 
			);
end oneDigCountVar;

architecture oneDigCountVar_arch of oneDigCountVar is 
--COMPONENTS--
--component oneDigCount is
--	port (
--			clk, ctrl: in std_logic ; 
--			Co : out std_logic;
--			S: out std_logic_vector (3 downto 0)
--			--clk_b, ctrl_b: in std_logic 
--			);
--end component;

	component tff is
	port (
	CLK , PRN,CLRN, T: in std_logic;
	Q : out std_logic
	);
	end component;
	component sumIncDecMuxVar is
	port (
		Si	:	in std_logic_vector (3 downto 0);
		--clk , 
		ctrl: in std_logic;
		PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
		Co	:	out std_logic
		);
	end component;


--END--COMPONENTS--
--SIGNAL--
	signal 	PRSN_s, RSTN_s , Si_s :  std_logic_vector (3 downto 0);
	signal 	T_s :  std_logic_vector (3 downto 0);
	signal	o_Co_s : std_logic ;
	signal 	s_clk , s_ctrl : std_logic;
--END--SIGNAL--
--BEGIN--
	begin
		a0: tff port map (CLK=>(not (s_clk)), PRN=>PRSN_s(0), CLRN=>RSTN_s(0) , T => '1' , Q => T_s(0) );
	gen00: for i in 1 to 3 generate
		a1: tff port map (CLK => not(T_s(i-1)), PRN=>PRSN_s(i), CLRN=>RSTN_s(i), T => '1', Q =>T_s(i));
	end generate;
	gen01 : for i in 0 to 3 generate
--		a2: Si_s (i) <= (not(s_ctrl) xor T_s(i));
		a2: Si_s (i) <= (s_ctrl xor T_s(i));
	end generate;
	a3: sumIncDecMuxVar port map(
		Si	=> T_s,
		ctrl => s_ctrl,
		PRSN_o=> PRSN_s ,
		RSTN_o=>RSTN_s ,
		Co	=> o_Co_s 
		);
	s_clk <= clk;
	s_ctrl<=ctrl; 
	Co <= (o_Co_s);
	S <= Si_s;
	PRSN<=PRSN_s;
	RSTN<=RSTN_s;

end oneDigCountVar_arch;