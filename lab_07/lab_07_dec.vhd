LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab_07_dec IS
	PORT
	(	
		clk_ref : IN STD_LOGIC  := '0';
		PB0 , PB1 ,SW0 : IN STD_LOGIC  := '1';
		LED0 : OUT std_logic;
		A0dec,A1dec,B0dec,B1dec,C0dec	,Q0dec	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END lab_07_dec;
architecture lab_07_dec_arch of lab_07_dec is

	component lab_07varmod9 IS
	PORT
	(
		clk_ref ,clk_dbg , PB0 , PB1	: IN STD_LOGIC  := '1';
		seqDetout , SSo : out std_logic := '0' ;
		QSIPO : out std_logic_vector (7 downto 0);
		A0,A1,B0,B1,C0	,Q0det ,regDete	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	END component;
	
	component conv_HEX_7SEG_v is
		port	(
		X : in  std_logic_vector (3 downto 0);
		PH, dot_in: in std_logic;
		D : out std_logic_vector (7 downto 0)
		);
	end component;

  
	component Timing_Reference is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_8Hz: out std_logic);-- Can check it using PIN A8 - LEDR0
	end component;
	
	component Timing_Reference80 is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_80Hz: out std_logic);-- Can check it using PIN A8 - LEDR0

	end component;
  
	signal A0s ,A1s ,B0s , B1s , C0s ,Q0s : std_logic_vector (3 downto 0); 
	signal clk_t , clk_8Hz , clk_80Hz : std_logic ;
begin
	clkref8Hz: Timing_Reference 
	port map( clk=> clk_ref,
			clk_8Hz=>clk_8Hz );
			
	clkref80Hz: Timing_Reference80
	port map( clk=> clk_ref,
			clk_80Hz=>clk_80Hz );
	
	clk_t<=(clk_8Hz and not SW0)or(clk_80Hz and SW0);
	
	cmpLab07 : lab_07varmod9
	PORT map
	(
		clk_ref => clk_t ,  PB0 => PB0 , PB1	=> PB1 , 
		-- clk_dbg , --DEBUG
		--seqDetout , SSo : out std_logic := '0' ; -- DEBUG
		--QSIPO : out std_logic_vector (7 downto 0); -- DEBUG
		A0=> A0s,A1=> A1s ,B0=> B0s ,B1=> B1s, C0=> C0s	, Q0det=>  Q0s
		--DEBUG: ,regDete	
	);

	A0: conv_HEX_7SEG_v 
		port	map(
		X =>A0s ,
		PH => '0', dot_in=> '1' ,
		D=>A0dec
		);
	A1: conv_HEX_7SEG_v 
		port	map(
		X =>A1s ,
		PH => '0', dot_in=> '1' ,
		D=>A1dec
		);
	B0: conv_HEX_7SEG_v 
		port	map(
		X =>B0s ,
		PH => '0', dot_in=> '1' ,
		D=>B0dec
		);
	B1: conv_HEX_7SEG_v 
		port	map(
		X => B1s ,
		PH => '0', dot_in=> '1' ,
		D=>B1dec
		);
	C0: conv_HEX_7SEG_v 
		port	map(
		X =>C0s ,
		PH => '0', dot_in=> '1' ,
		D=>C0dec
		);
	Q0: conv_HEX_7SEG_v 
		port	map(
		X =>Q0s ,
		PH => '0', dot_in=> '1' ,
		D=>Q0dec
		);	
	

end lab_07_dec_arch;