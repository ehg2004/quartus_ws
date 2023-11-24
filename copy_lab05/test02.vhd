Library IEEE;
use ieee.std_logic_1164.all;

entity test02 is
	port	(
	X : in  std_logic_vector (3 downto 0);
	clk_ref, pb_rst , auto_ps, pb_pause , clk_sw: in std_logic;
	led_clk : out std_logic;
	A , B   : out std_logic_vector (3 downto 0)
	);
end test02;

architecture test02_arch of test02 is

component sync_5_count is 
    port(
		  clk, pb_rst , auto_ps, pb_pause  :in std_logic;
		  cmp_in : in std_logic_vector (3 downto 0);
		  Co,psed_o : out std_logic;
        outp : out std_logic_vector (2 downto 0)
     ); 
end component; 
component sync_9_count is 
    port(
		  clk, pb_rst , auto_ps, pb_pause  :in std_logic;
		  cmp_in : in std_logic_vector (3 downto 0);
		  Co,psed_o :out std_logic;
        outp : out std_logic_vector (3 downto 0)
     ); 
end component; 

--component conv_HEX_7SEG_v is
--	port	(
--	X : in  std_logic_vector (3 downto 0);
--	PH, dot_in: in std_logic;
--	D : out std_logic_vector (7 downto 0)
--	);
--end component;
--
--component Timing_Reference20kHz is
--	port ( clk: in std_logic; -- Pin connected to P11 (N14)
--			clk_20Hz: out std_logic);-- Can check it using PIN A8 - LEDR0
--
--end component;
--  
--component Timing_Reference1kHz is
--	port ( clk: in std_logic; -- Pin connected to P11 (N14)
--			clk_1Hz: out std_logic);-- Can check it using PIN A8 - LEDR0

--end component;
	
	--signal  A_dec , B_dec , C_dec , D_dec , E_dec , F_dec  :  std_logic_vector (7 downto 0);
	signal  As , Bs , Cs , Ds, Es , Fs  :  std_logic_vector (3 downto 0);
	signal clk_r_s , clk_1kHz, clk_20kHz , clk_M ,clk_sw_s ,pb_rstNS , pb_psNS : std_logic ;
	signal ps_ant , Co_s : std_logic_vector (1 downto 0);
	
	begin
	
	clk_r_s<=clk_ref;
	clk_sw_s<=clk_sw; pb_rstNS<=pb_rst ; pb_psNS<=pb_pause ;
--	
--	 cmp_clk_20KHz: Timing_Reference20kHz 
--	port map ( clk=>clk_r_s , -- Pin connected to P11 (N14)
--			clk_20Hz=>clk_20kHz);-- Can check it using PIN A8 - LEDR0
--
--	cmp_clk_1KHz: Timing_Reference1kHz 
--	port map ( clk=>clk_r_s,-- Pin connected to P11 (N14)
--			clk_1Hz=>clk_1kHz);-- Can check it using PIN A8 - LEDR0
--	
	clk_M<=((clk_1kHz and not clk_sw_s)or(clk_20kHz and clk_sw_s));
	led_clk<=clk_M;
	
	

	B_count: sync_9_count 
	port map(
		  clk=>not Co_s(0), pb_rst=>pb_rstNS , auto_ps => auto_ps,  pb_pause=>pb_psNS,  
		  cmp_in => "0010",
		  Co=>Co_s(1),
		  psed_o=>ps_ant(1), 
        outp=> Bs
     ); 
	B<=Bs;
	A_count: sync_9_count 
	port map(
		  clk=>clk_ref, pb_rst=>pb_rstNS , auto_ps => ps_ant(1), pb_pause=>pb_psNS,  
		  cmp_in => "1000",
		  Co=>Co_s(0),
		  psed_o=>ps_ant(0), 
        outp=> As
     ); 
	A<=As;
	
	
	
	
	
end test02_arch;
