Library IEEE;
use ieee.std_logic_1164.all;

entity PISOtoSIPOmod8 is
	port	(
	N_in : in std_logic_vector (7 downto 0);
	A_out, B_out : out std_logic_vector (7 downto 0);
	sipo_dbg : out std_logic_vector (7 downto 0);
	piso_dbg ,ctindbg : out std_logic;
	ctoutdbg : out std_logic_vector (2 downto 0);
	dbgdff0 ,dbgff1 : out std_logic;
	clk , PB0 , PB1: in std_logic
	);
end PISOtoSIPOmod8;

architecture PISOtoSIPOmod8_arch of PISOtoSIPOmod8 is

component SIPOreg is
	port	(
	Q_out : out std_logic_vector (7 downto 0);
	clk , OE , S_in: in std_logic
	);
end component;

component PISOreg is
	port	(
	D_in : in std_logic_vector (7 downto 0);
	clk , L_SN : in std_logic;
	Os : out std_logic
	);
end component;

	component dff is
	port	(
		D, PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic
	);	
	end component;
	
	component tff is
	port	(
		T, PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic
	);	
	end component;
	
component reg8bit is
	port	(
		D : in std_logic_vector (7 downto 0); 
		PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic_vector (7 downto 0)
	);
end component;


component countMOD8 is
	port	(
	clk : in std_logic;
	Q : out std_logic_vector ( 2 downto 0)
	);
end component;

	signal s_s  , clk_s , L_s , pb0s : std_logic;
	signal sipo_o,piso_i,in_s ,out_s : std_logic_vector (7 downto 0);
	signal ct_in    : std_logic;
	signal ct_out : std_logic_vector (2 downto 0);
	signal ff_0s  , ff_1s  : std_logic;

begin

	 piso00: PISOreg 
		port map	(
		D_in => piso_i,
		clk =>clk_s, L_SN =>  L_s,
		Os => s_s
		);
	sipo00: SIPOreg 
	port	map (
	Q_out => sipo_o ,
	clk => not clk_s, OE => '1' , S_in => s_s
	);
	
	count00: countMOD8 
	port map	(
	clk =>ct_in,
	Q =>ct_out
	);

	ct_in<= ff_0s and ff_1s and not clk_s;

--	dff00: dff 
--	port map	(
--		D=>'1', PRN=>'1' , CLRN=>L_s  , CLK=>L_s,
--		Q =>ff_0s
--	);	
	dff00: dff 
	port map	(
		D=>'1', PRN=> not L_s , CLRN=>L_s  , CLK=>'1',
		Q =>ff_0s
	);	

--	dff01: dff 
--	port map	(
--		D=>'0', PRN=>L_s , CLRN=>'1'  , CLK=> not ct_out(2),
--		Q =>ff_1s
--	);	
	dff01: dff 
	port map	(
		D=>'0', PRN=>L_s , CLRN=>pb0s  , CLK=> not ct_out(2),
		Q =>ff_1s
	);	


	regin: reg8bit 
	port map	(
		D => in_s,
		PRN =>'1' , CLRN=>'1'   , CLK=>pb0s,
		Q =>piso_i
	);
	regout: reg8bit 
	port map	(
		D => sipo_o,
		PRN =>'1' , CLRN=>'1'   , CLK=> not ct_out(2),
		Q =>out_s
	);
	in_s<=N_in;
	A_out<=piso_i;
	B_out<=out_s;
	clk_s<=clk;
	L_s<=PB1;
	pb0s<=PB0;
	
	sipo_dbg<=sipo_o;
	piso_dbg<=s_s;
	ctindbg <=ct_in;
	ctoutdbg <=ct_out;
	dbgdff0 <=ff_0s;
	dbgff1 <=ff_1s;
	
end PISOtoSIPOmod8_arch;