Library IEEE;
use ieee.std_logic_1164.all;
entity async_59s_count is 
    port(
		  clk, pb_rst , pause_ant, pb_pause :in std_logic;
        --S, cmp:  in std_logic_vector (11 downto 0); 
		  Co: out std_logic;
        outp : out std_logic_vector (5 downto 0)
     ); 
end async_59s_count; 
architecture async_59s_count_arch of async_59s_count  is 
--COMPONENT--
	component jkff is
		port (
		clk , J , K , PRN ,CLRN : in std_logic;
		Q : out std_logic
		);
	end component;
	
	component compare_12bit is 
		 port(
			  clk: in std_logic;
			  S, cmp:  in std_logic_vector (11 downto 0); 
			  outp : out std_logic
		  ); 
	end component; 
		
--COMPONENT--END--
--SIGNAL--
	signal Q_s , J_s , K_s , PRN_s , CLRN_s: std_logic_vector (5 downto 0);
	signal SS : std_logic_vector (11 downto 0);
	signal clk_s  , rstn_s  ,clk_ps_s , ps_s, ps_ant_s , comp_o_s, test_comp_o_s, rst_s ,pb_p_s ,pb_r_s: std_logic;
--SIGNAL--END--

  begin 
--CLK-PAUSE--
	clk_ps: jkff port map(
		clk=> ( (not pb_p_s) xor (ps_ant_s and test_comp_o_s)), J=> '1', K=>'1' , PRN=>'1' ,CLRN=> pb_r_s ,
		Q => ps_s
		);
--
		
--RST--
	rst_cmp:	 compare_12bit port map
		 (
			  clk=>clk,
			  S=> SS , cmp=>"000000111011",
			  outp=> comp_o_s
		  );
	rst_s<=not comp_o_s;
--PAUSE--COMPARE--
	pse_cmp:	 compare_12bit port map
		 (
			  clk=>clk,
			  S=>SS, cmp=>"000000110001",
			  outp=> test_comp_o_s
		  );
--
	 ff00: jkff	port map(
		clk=> (clk and not ps_s), J=> '1', K=>'1' , PRN=>'1' ,CLRN=> rstn_s ,
		Q => Q_s(0)
		);
		
	gen00: for i in 9 downto 1 generate
		 ff0i: jkff	port map(
		clk=> not Q_s(i-1) , J=> '1' , K=>'1' , PRN=>'1' ,CLRN=> rstn_s ,
		Q => Q_s(i)
		);
	end generate;
	
	ff10: jkff	port map(
	clk=> (clk ), J=> not(comp_o_s xor not pb_r_s), K=> (comp_o_s xor not pb_r_s), PRN=>'1' ,CLRN=> '1' ,
	Q => rstn_s
	);
	
	
  SS(11 downto 6)<="000000";
  SS(5 downto 0)<=Q_s;
  
  pb_r_s<=pb_rst ; ps_ant_s<=pause_ant; pb_p_s<=pb_pause;
  Co<=comp_o_s;
  outp<=Q_s;
  end async_59s_count_arch;