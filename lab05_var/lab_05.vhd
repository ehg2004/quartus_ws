Library IEEE;
use ieee.std_logic_1164.all;

entity lab_05 is
	port	(
	--X : in  std_logic_vector (3 downto 0);
	clk_ref,clkdbg, pb_rst , auto_ps, pb_pause , clk_sw: in std_logic;
	led_clk : out std_logic;
	A , B , C , D , E , F  : out std_logic_vector (7 downto 0);
	An , Bn , Cn , Dn , En , Fn  : out std_logic_vector (3 downto 0)

	);
end lab_05;

architecture lab05_Arch of lab_05 is

component sync_5_count is 
    port(
		  clk, pb_rst   :in std_logic;
		  --cmp_in : in std_logic_vector (3 downto 0);
		  Co : out std_logic;
        outp : out std_logic_vector (2 downto 0)
     ); 
end component; 
component sync_9_count is 
    port(
		  clk, pb_rst   :in std_logic;
		  --cmp_in : in std_logic_vector (3 downto 0);
		  Co :out std_logic;
        outp : out std_logic_vector (3 downto 0)
     ); 
end component; 

component conv_HEX_7SEG_v is
	port	(
	X : in  std_logic_vector (3 downto 0);
	PH, dot_in: in std_logic;
	D : out std_logic_vector (7 downto 0)
	);
end component;

component Timing_Reference20kHz is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_20Hz: out std_logic);-- Can check it using PIN A8 - LEDR0

end component;
  
component Timing_Reference1kHz is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_1Hz: out std_logic);-- Can check it using PIN A8 - LEDR0
end component;

component compare_4bit is 
    port(
--		  clk:in std_logic;
        S, cmp:  in std_logic_vector (3 downto 0); 
        outp : out std_logic
     ); 
end component; 
	
	component jkff is
		port (
		clk , J , K , PRN ,CLRN : in std_logic;
		Q : out std_logic
		);
	end component;

	signal  A_dec , B_dec , C_dec , D_dec , E_dec , F_dec  :  std_logic_vector (7 downto 0);
	signal  As , Bs , Cs , Ds, Es , Fs  :  std_logic_vector (3 downto 0);
	signal clk_r_s , auto_ps_s, clkp ,  clk_1kHz, clk_20kHz , clk_M ,clk_sw_s ,pb_rstNS , pb_psNS ,lock_comp , lock_compT , ps_t : std_logic ;
	signal ps_ant , Co_s : std_logic_vector (5 downto 0);
	signal ad,bd,cd,dd, ed,fd : std_logic ;
	
	begin
	
	clk_r_s<=clk_ref;
	clk_sw_s<=clk_sw; pb_rstNS<=pb_rst ; pb_psNS<=pb_pause ;
	
	 cmp_clk_20KHz: Timing_Reference20kHz 
	port map ( clk=>clk_r_s , -- Pin connected to P11 (N14)
			clk_20Hz=>clk_20kHz);-- Can check it using PIN A8 - LEDR0

	cmp_clk_1KHz: Timing_Reference1kHz 
	port map ( clk=>clk_r_s,-- Pin connected to P11 (N14)
			clk_1Hz=>clk_1kHz);-- Can check it using PIN A8 - LEDR0
	
	clkp<=((clk_1kHz and not clk_sw_s)or (clk_20kHz and clk_sw_s));
	--clkp<=clkdbg;
	led_clk<=clkp;
	
	F_conv: conv_HEX_7SEG_v 
	port	map(
	X => Fs,
	PH=>'0', dot_in=>'1',
	D=>F_dec
	);
	F_count: sync_9_count 
	port map(
		  clk=>not Co_s(4), pb_rst=>pb_rstNS , --auto_ps => auto_ps_s, pb_pause=>pb_psNS,  
		  --cmp_in => "0010",
		  --Co,
		 -- psed_o=>ps_ant(5), 
        outp=> Fs
     ); 
Fcomp: compare_4bit 
    port map(
--		  clk:in std_logic;
        S=> Fs , cmp=> "0100" , 
        outp=> fd --: out std_logic
     ); 

	E_conv: conv_HEX_7SEG_v 
	port	map(
	X => Es,
	PH=>'0', dot_in=>'0',
	D=>E_dec
	);
	E_count: sync_5_count 
	port map(
		  clk=>not Co_s(3), pb_rst=>pb_rstNS ,-- auto_ps => ps_ant(5), pb_pause=>pb_psNS,  
		  --cmp_in => "0100",
		  Co=>Co_s(4),
		 -- psed_o=>ps_ant(4), 
        outp=> Es(2 downto 0)
     ); 
Ecomp: compare_4bit 
    port map (
--		  clk:in std_logic;
        S=> Es , cmp=> "0100" , 
        outp=> ed--: out std_logic
     ); 
	  
	  
	D_conv: conv_HEX_7SEG_v 
	port	map(
	X => Ds,
	PH=>'0', dot_in=>'1',
	D=>D_dec
	);
	D_count: sync_9_count 
	port map(
		  clk=>not Co_s(2), pb_rst=>pb_rstNS , --auto_ps => ps_ant(4), pb_pause=>pb_psNS,  
		  --cmp_in => "1001",
		  Co=>Co_s(3),
		 -- psed_o=>ps_ant(3), 
        outp=> Ds
     ); 
Dcomp: compare_4bit 
    port map (
--		  clk:in std_logic;
        S=> Ds , cmp=> "1001" , 
        outp=>dd --: out std_logic
     ); 

	
	C_conv: conv_HEX_7SEG_v 
	port	map(
	X => Cs,
	PH=>'0', dot_in=>'0',
	D=>C_dec
	);
	C_count: sync_9_count 
	port map(
		  clk=>not Co_s(1), pb_rst=>pb_rstNS , --auto_ps => ps_ant(3), pb_pause=>pb_psNS,  
		 -- cmp_in => "0000",
		  Co=>Co_s(2),
		  --psed_o=>ps_ant(2), 
        outp=> Cs
     ); 
Ccomp: compare_4bit 
    port  map(
--		  clk:in std_logic;
        S=> Cs , cmp=> "0000" , 
        outp=> cd--: out std_logic
     ); 
	
	B_conv: conv_HEX_7SEG_v 
	port	map(
	X => Bs,
	PH=>'0', dot_in=>'0',
	D=>B_dec
	);
	B_count: sync_9_count 
	port map(
		  clk=> not Co_s(0), pb_rst=>pb_rstNS ,-- auto_ps => ps_ant(2), pb_pause=>pb_psNS,  
		  --cmp_in => "0001",
		  Co=>Co_s(1),
		 -- psed_o=>ps_ant(1), 
        outp=> Bs
     ); 
Bcomp: compare_4bit 
    port map (
--		  clk:in std_logic;
        S=> Bs , cmp=> "0001" , 
        outp=>bd --: out std_logic
     ); 

	A_conv: conv_HEX_7SEG_v 
	port	map(
	X => As,
	PH=>'0' ,dot_in=>'0',
	D=>A_dec
	);
	A_count: sync_9_count 
	port map(
		 clk=>clk_M , pb_rst=>pb_rstNS , --auto_ps => ps_ant(1), pb_pause=>pb_psNS,  -- clk=>clk_dbg
		  --cmp_in => "0011",
		  Co=>Co_s(0),
		 -- psed_o=>ps_ant(0), 
        outp=> As
     ); 
	  
Acomp: compare_4bit 
    port map (
--		  clk:in std_logic;
        S=> As , cmp=> "0011" , 
        outp=> ad--: out std_logic
     ); 
	  
	  
	--LOCK--COMPARE--RA--TRIGGER--
		lock_compare_trigger: jkff port map(
			clk=> auto_ps_s and  lock_comp, J=> '1' , K=>'1' , PRN=>  '1' ,CLRN=> (pb_rstNS and pb_psNS)  ,
			Q =>  lock_compT
			);
			
--PAUSE--T
		pause_trigger: jkff port map(
			clk=> (not pb_psNS ), J=> '1' , K=>'1' , PRN=>  '1' ,CLRN=> ( pb_rstNS and not lock_compT)  ,
			Q =>  ps_t
			);
			
	lock_comp<=ad and bd and cd and dd and ed and fd;	
	clk_M<=clkp or ps_t or lock_compT;	
	auto_ps_s<= auto_ps ;		
	A<=A_dec; B <=B_dec; C <=C_dec; D <=D_dec; E <=E_dec; F <=F_dec;
	
	An<=As ; Bn<=Bs ; Cn<=Cs ; Dn<=Ds ; En<=Es ; Fn<=Fs;
	
	
end lab05_Arch;
