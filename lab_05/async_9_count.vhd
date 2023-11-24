Library IEEE;
use ieee.std_logic_1164.all;
entity async_9_count is 
    port(
		  clk,clk_a, pb_rst , pause_ant, pb_pause  :in std_logic;
		  cmp_in : in std_logic_vector (3 downto 0);
        --S, cmp:  in std_logic_vector (11 downto 0); 
		  Co,psed_o, cmp_oo , bool_test: out std_logic;
        outp : out std_logic_vector (3 downto 0)
     ); 
end async_9_count; 
architecture async_9_count_arch of async_9_count  is 
--COMPONENT--
	component jkff is
		port (
		clk , J , K , PRN ,CLRN : in std_logic;
		Q : out std_logic
		);
	end component;
	
--	component compare_12bit is 
--		 port(
--			  clk: in std_logic;
--			  S, cmp:  in std_logic_vector (11 downto 0); 
--			  outp : out std_logic
--		  ); 
--	end component; 
	component compare_4bit is 
		 port(
	--		  clk:in std_logic;
			  S, cmp:  in std_logic_vector (3 downto 0); 
			  outp : out std_logic
		  ); 
	end component; 
			
--COMPONENT--END--
--SIGNAL--
	signal Q_s , J_s , K_s , PRN_s , CLRN_s: std_logic_vector (3 downto 0);
--	signal SS,  cmp_in_s : std_logic_vector (11 downto 0);
	signal SS,  cmp_in_s : std_logic_vector (3 downto 0);

	signal clk_s  , rstn_s  ,clk_ps_s , ps_s, ps_ant_s , comp_o_s, test_comp_o_s, rst_s ,pb_p_s ,pb_r_s ,test_comp_o_sff ,pb_p_sff: std_logic :='0';
	
--SIGNAL--END--

  begin 
----CLK-PAUSE--
--		clk_ps: jkff port map(
--		clk=> ( (not pb_p_sff) xor (ps_ant_s and test_comp_o_sff)), J=> '1', K=>'1' , PRN=>'1' ,CLRN=> pb_r_s ,
--		Q => ps_s
--			);

		clk_ps: jkff port map(
		clk=> ( (  pb_p_s) xor (test_comp_o_s )), J=> '1', K=>'1' , PRN=>'1' ,CLRN=> pb_r_s ,
		Q => ps_s
			);
--
--	clk_ps: jkff port map(
--		clk=> (  not pb_p_s ), J=> '1', K=>'1' , PRN=> not (test_comp_o_s ) , CLRN=> pb_r_s , -- not (test_comp_o_s and ps_ant_s )
--		Q => ps_s
--		);
--		
--		clk_ps: jkff port map(
--			clk=> clk, J=> ( (not pb_p_s) xor (ps_ant_s and test_comp_o_s)) , K=>'1' , PRN=>'1' ,CLRN=> pb_r_s ,
--			Q => ps_s
--			);
--		
--		clk_ps: jkff port map(
--			clk=> not clk_a, J=> (ps_ant_s and test_comp_o_sff) or  (not pb_p_s) , K=>(not pb_p_s) , PRN=>'1' ,CLRN=> pb_r_s ,
--			Q => ps_s
--			);
--		
--		clk_ps: jkff port map(
--			clk=> (test_comp_o_sff and pb_p_s ) or not pb_p_s, J=> '1' , K=>'1', PRN=>'1' ,CLRN=> pb_r_s ,
--			Q => ps_s
--			);
			
		cmp_ff: jkff port map(
			clk=> test_comp_o_s, J=> '1' , K=>'1' , PRN=>'1' ,CLRN=> pb_r_s and pb_p_s ,
			Q => test_comp_o_sff
			);
		pb_pff: jkff port map(
			clk=> pb_p_s, J=> '1' , K=>'1' , PRN=>  clk_a ,CLRN=>'1'  ,
			Q =>  pb_p_sff
			);
--RST--
	rst_cmp:	 compare_4bit port map
		 (
			 -- clk=>clk,
			  S=> SS , cmp=>"1001", --cmp=>"000000001001",
			  outp=> comp_o_s
		  );
	rst_s<=not comp_o_s;
--PAUSE--COMPARE--
	pse_cmp:	 compare_4bit port map
		 (
			  --clk=>clk,
			  S=>SS, cmp=>cmp_in_s,
			  outp=> test_comp_o_s
		  );
--
	 ff00: jkff	port map(
		clk=>  (clk and not ps_s), J=> '1', K=>'1' , PRN=>'1' ,CLRN=> rstn_s ,
		Q => Q_s(0)
		);
		
	gen00: for i in 3 downto 1 generate
		 ff0i: jkff	port map(
		clk=> not Q_s(i-1) , J=> '1' , K=>'1' , PRN=>'1' ,CLRN=> rstn_s ,
		Q => Q_s(i)
		);
	end generate;
	
	ff10: jkff	port map(
	clk=> (clk ), J=> not(comp_o_s xor not pb_r_s), K=> (comp_o_s xor not pb_r_s), PRN=>'1' ,CLRN=> '1' ,--J=> not(comp_o_s xor not pb_r_s), --pb_r_s
	Q => rstn_s
	);
	
	
  --SS(11 downto 4)<="00000000";
  SS(3 downto 0)<=Q_s;
  --cmp_in_s(11 downto 4)<="00000000";
  cmp_in_s(3 downto 0)<=cmp_in;
  
  pb_r_s<=pb_rst ; ps_ant_s<=pause_ant; pb_p_s<=pb_pause;
  Co<=comp_o_s;
  outp<=Q_s;
  psed_o<=ps_s;
  cmp_oo<=test_comp_o_s;
  bool_test<=(  pb_p_s xor (test_comp_o_s and ps_ant_s ));

  end async_9_count_arch;
  