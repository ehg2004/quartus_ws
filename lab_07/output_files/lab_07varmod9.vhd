LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab_07varmod9 IS
	PORT
	(
		clk_ref ,clk_dbg , PB0 , PB1	: IN STD_LOGIC  := '1';
		seqDetout , SSo : out std_logic := '0' ;
		QSIPO : out std_logic_vector (7 downto 0);
		A0,A1,B0,B1,C0	,Q0det ,regDete	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END lab_07varmod9;


ARCHITECTURE SYN OF lab_07varmod9 IS
	  
--	component Timing_Reference is
--	port ( clk: in std_logic; -- Pin connected to P11 (N14)
--			clk_2Hz: out std_logic);-- Can check it using PIN A8 - LEDR0
--	end component;
	
	component seq_detector_3bit is
	port(
	clk , RSTN , SW_i : in std_logic;
	Q : out std_logic_vector (2 downto 0)
	);
	end component;
	
	component PISOreg is
	port	(
	D_in  : in std_logic_vector (7 downto 0);
	clk , L_SN ,clrn  : in std_logic;
	Os : out std_logic
	);
	end component;
	component SIPOreg is
		port	(
		Q_out : out std_logic_vector (7 downto 0);
		clk , OE , S_in: in std_logic
		);
	end component;

	component rom01 IS
		PORT
		(
			aclr		: IN STD_LOGIC  := '0';
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;


	component countMOD2048sync is
		port	(
		clk, clrn : in std_logic;
		mod8 : out std_logic;
		Q : out std_logic_vector ( 10 downto 0)
		);
	end component;
	
	component countMOD16sync is
		port	(
		clk , clrn : in std_logic;
		mod9 : out std_logic;
		Q : out std_logic_vector ( 3 downto 0)
		);
	end component;
	
	component countMOD256sync is
		port	(
		clk , clrn : in std_logic;
		mod8 : out std_logic;
		Q : out std_logic_vector ( 7 downto 0)
		);
	end component;

	
	component PIPO8bit is
		port	(
			D : in std_logic_vector (7 downto 0); 
			PRN , CLRN  , CLK: in std_logic;
			Q : out std_logic_vector (7 downto 0)
		);
	end component;

	component compare_4bit is 
    port(
        S, cmp:  in std_logic_vector (3 downto 0); 
        outp : out std_logic
     ); 
	end component; 
	component countMOD16async is
		port	(
		clk ,clrn : in std_logic;
		Q : out std_logic_vector ( 3 downto 0)
		);
	end component;
	
	component tff is
	port	(
		T, PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic
	);
	end component;
	
	SIGNAL add , mem : STD_LOGIC_VECTOR (7 DOWNTO 0);
	signal cnt00_o , sumZero: std_logic_vector(2 downto 0);
	signal stt_n , regSTT: std_logic_vector(3 downto 0);	
	signal clk_s , clk_p,clk0,clk1 , clk2, clk_m ,pauseT ,rstn , L_S, sum0 , s_o: std_logic := '0';
	signal cmp0, cmp1 , SeqDetected , psed : std_logic := '0';
	signal Qdetected : std_logic_vector (3 downto 0);

BEGIN	
--	A0<=add(3 downto 0);
--	A1<=add(7 downto 4);
--	B0<=mem(3 downto 0);
--	B1<=mem(7 downto 4);

	C0<=stt_n;
	
	--SS_o<=s_o;
	
	rstn<=PB1;
	pauseT<=PB0;
--	clk00: Timing_Reference 
--	port map( clk=>clk_ref, 
--			clk_2Hz=>clk0);

	clk0 <=  clk_ref or psed;
	--clk0 <=  clk_dbg or psed;

	pseSystem: 
	tff
	port	map(
		T=> '1' , PRN=> '1'  , CLRN=>  rstn and pauseT , CLK=> SeqDetected ,
		Q=> psed
	);
		
--	counter11bit0: countMOD2048sync 
--		port map	(
--		clrn=>  rstn,
--		clk =>clk0,
--		mod8 => clk2 , 
--		Q (10 downto 3)=> add 
--		--, Q( 2 downto 0)=> sumZero
--		);
		
-- countAdd: countMOD256sync 
--		port map (
--		clk =>clk0 , clrn =>rstn ,
----		mod8 : out std_logic;
--		Q => add
--		);

	clock9 : countMOD16sync port map	(
	clk => not clk0, clrn => rstn,
	mod9 => clk1 --,
	--Q => ,
	);
	clock9PH : countMOD16sync port map	(
	clk => clk0, clrn => rstn ,
	mod9 => clk2--,
	--Q => ,
	);
		
--	counter11bit1: countMOD2048sync 
--		port map	(
--		clrn=>  rstn,
--		clk =>not clk0,
--		mod8 => clk1 , 
--		--Q (10 downto 3)=> add , 
--		Q( 2 downto 0)=> sumZero
--		);
		
 countAdd0: countMOD256sync 
		port map (
		clk =>clk2 , clrn =>rstn ,
--		mod8 : out std_logic;
		Q => add
		);
		
	romcomp: rom01
	PORT map
	(
		aclr => not rstn ,
		address	=> add ,
		clock	=> clk0,
		q	=> mem 
	);
	
	PISO00: PISOreg
	port map	(
	D_in => mem , clrn => rstn,
	clk=> not clk0 , L_SN => not clk1 , --not ( sumZero(0) and  sumZero(1) and  sumZero(2)),
	Os =>s_o
	);
	
	PIPOAdd: PIPO8bit 
		port map(
			D =>add,
			PRN => '1' , CLRN=>  rstn, CLK=> clk0 ,
			Q (3 downto 0)=>A0 , Q (7 downto 4)=>A1
		);
		
	PIPOmem: PIPO8bit 
		port map(
			D =>mem,
			PRN=>'1' , CLRN=>  rstn , CLK => not clk0 ,
			Q (3 downto 0)=>B0 , Q (7 downto 4)=>B1
		);
		
	PIPOstt0: PIPO8bit 
		port map(
			D (3 downto 0) =>stt_n,
			PRN=> '1' , CLRN=>  rstn , CLK =>   not clk0, -- not clk0, 
			Q (3 downto 0)=> regSTT
		);		
		
	regDete<=regSTT;
	
	seqdet: seq_detector_3bit
	port map(
	clk =>  clk0 , RSTN => rstn and not (clk2 and not clk0 ) --and not (not sumZero(0) and not sumZero(1) and not sumZero(2) )
	, SW_i=>s_o ,
	Q =>stt_n(2 downto 0)
	);
	
	comp00: compare_4bit 
    port map(
        S => stt_n, cmp=>"0111",
        outp=> cmp0
     ); 
	  
	comp01: compare_4bit 
    port map(
        S=>regSTT , cmp=>"0110",
        outp=> cmp1
     );

--	comp00: compare_4bit 
--    port map(
--        S(2 downto 0) => stt_n(2 downto 0) , cmp=>"0111",
--        outp=> cmp1
--     ); 
	  

	SIPO00: SIPOreg
	port map(
	Q_out => QSIPO,
	clk => clk0 , OE =>'1', S_in => s_o
	);

	SeqDetected<= cmp1 and cmp0 ;
	--SeqDetected<=  cmp0 ;

	--seqDetout<= SeqDetected;
	seqDetout<=SeqDetected;
--	nOfSeqDetec: countMOD16sync 
--		port	map (
--		clk =>	SeqDetected,
--		clrn=>  rstn,
--		Q =>Qdetected
--		);

	 nOfSeqDetec: countMOD16async 
		port	map (
		clk =>SeqDetected,
		clrn=> rstn  ,
		Q => Qdetected
		);
	
		
	--Q0det<=regSTT;
	Q0det<=Qdetected;

	SSo<= s_o;
	
END SYN;
