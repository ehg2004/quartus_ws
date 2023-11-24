Library IEEE;
use ieee.std_logic_1164.all;

entity sumIncDecMuxVar is
	port (
		Si	:	in std_logic_vector (3 downto 0);
		ctrl: in std_logic;
		PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
		Co	:	out std_logic
		);
end sumIncDecMuxVar;

architecture sumIncDecMuxVar_arch of sumIncDecMuxVar is
--COMPONENTS--
	component switchXY is
	port (
			X , Y  , ctrl: in std_logic ; 
			O0 : out std_logic 
			);
	end component;
	
	component sumIncvar is
	port (
			--en : in std_logic;
			Si	:	in std_logic_vector (3 downto 0);
			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
--			clk: in std_logic;
			Co	:	out std_logic
			);
	end component;
	
	component sumDecvar is
	port (
			--en : in std_logic;
			Si	:	in std_logic_vector (3 downto 0);
			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
--			clk: in std_logic;
			Co	:	out std_logic
			);
	end component;
--END--COMPONENTS--
--SIGNAL
	signal 	d_PRSN_s, d_RSTN_s, i_PRSN_s, i_RSTN_s, o_PRSN_s, o_RSTN_s  :  std_logic_vector (3 downto 0);
	signal	d_Co_s , i_Co_s , o_Co_s : std_logic ;
	signal 	s_clk , s_ctrl : std_logic; 
--END__SIGNAL--
	begin
		--s_clk<=clk;
		s_ctrl<=ctrl;
	gen00: for i in 0 to 3 generate
		a0: switchXY port map (X =>d_PRSN_s(i),Y => i_PRSN_s(i),ctrl => s_ctrl,O0 => o_PRSN_s(i));
		a1: switchXY port map (X=>d_RSTN_s(i),Y=>i_RSTN_s(i),ctrl=>s_ctrl,O0=> o_RSTN_s(i));
	end generate;
		a2: switchXY port map ( X => d_Co_s, Y => i_Co_s, ctrl=> s_ctrl, O0=> o_Co_s);
		a3: sumDecvar port map(Si=> Si, PRSN_o => d_PRSN_s,RSTN_o => d_RSTN_s, Co=>d_Co_s);
		a4: sumIncvar port map (Si=> Si,PRSN_o => i_PRSN_s,RSTN_o => i_RSTN_s,Co=>i_Co_s);
	
		PRSN_o<=o_PRSN_s;
		RSTN_o<=o_RSTN_s;
		Co	<=o_Co_s;
--PORT_MAP--
end sumIncDecMuxVar_arch;