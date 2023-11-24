LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab_07 IS
	PORT
	(
--		clk_t		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clk_ref , PB0 , PB1	: IN STD_LOGIC  := '1';
		A0,A1,B0,B1,C0		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END lab_07;


ARCHITECTURE SYN OF lab_07 IS
	  
	component Timing_Reference is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_2Hz: out std_logic);-- Can check it using PIN A8 - LEDR0
	end component;
	
	component seq_detector_3bit is
	port(
	clk , RSTN , SW_i : in std_logic;
	Q : out std_logic_vector (2 downto 0)
	);
	end component;
	
	component PISOreg is
	port	(
	D_in : in std_logic_vector (7 downto 0);
	clk , L_SN : in std_logic;
	Os : out std_logic
	);
	end component;
	
	component rom00 IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END component;
	
	component countMOD8 is
	port	(
	clk : in std_logic;
	Q : out std_logic_vector ( 2 downto 0)
	);
	end component;
	
	component countMOD256 is
	port	(
	clk : in std_logic;
	Q : out std_logic_vector ( 7 downto 0)
	);
	end component;

	
	SIGNAL add , mem: STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal cnt00_o : std_logic_vector(2 downto 0);
	signal stt_n : std_logic_vector(3 downto 0);	
	signal clk_s , clk_p , clk_m ,pause ,rst , L_S, sum0 , s_o: std_logic ;

BEGIN	
	A0<=add(3 downto 0);
	A1<=add(7 downto 4);
	B0<=mem(3 downto 0);
	B1<=mem(7 downto 0);
	C0(2 downto 0)<=stt_n;
	 clk00: Timing_Reference 
	port map( clk=>clk_ref, 
			clk_2Hz=>clk_s);

	counter00: countMOD8 
	port map	(
	clk=>clk_s,
	Q =>cnt00_o
	);
	counter01: countMOD256 
	port	map(
	clk => not(cnt00_o(0) and cnt00_o(1) and cnt00_o(2)) ,
	Q => add
	);
	
	romcomp: rom00 
	PORT map
	(
		address	=> add ,
		clock	=> ( not cnt00_o(0)) ,
		q	=> mem
	);
	
	PISO00: PISOreg
	port map	(
	D_in => mem,
	clk=> cnt00_o(0), L_SN => (not cnt00_o(0) and not cnt00_o(1) and not cnt00_o(2)) ,
	Os =>s_o
	);
	seqdet: seq_detector_3bit
	port map(
	clk => not cnt00_o(0), RSTN =>not rst, SW_i=>s_o ,
	Q =>stt_n(2 downto 0)
	);
	
END SYN;
