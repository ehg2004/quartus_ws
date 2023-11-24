Library IEEE;
use ieee.std_logic_1164.all;
entity sync_9_count is 
    port(
		  clk, pb_rst , auto_ps, pb_pause  :in std_logic;
		  cmp_in : in std_logic_vector (3 downto 0);
        --S, cmp:  in std_logic_vector (11 downto 0); 
		  Co,psed_o : out std_logic;
        outp : out std_logic_vector (3 downto 0)
     ); 
end sync_9_count; 
architecture sync_9_count_arch of sync_9_count  is 
--COMPONENT--
	component jkff is
		port (
		clk , J , K , PRN ,CLRN : in std_logic;
		Q : out std_logic
		);
	end component;

	component dff is
		port (
		clk , D , PRN ,CLRN : in std_logic;
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
	signal Q_s , D_s, D_sM , PRN_s , CLRN_s: std_logic_vector (3 downto 0);
--	signal SS,  cmp_in_s : std_logic_vector (11 downto 0);
	signal SS,  cmp_in_s : std_logic_vector (3 downto 0);

	signal clk_s, clk_p  , rstn_s  ,clk_ps_s , ps_s, auto_ps_s , comp_o_s, lock_comp, rst_s ,pb_p_sn ,pb_r_sn ,lock_compT,lock_compTant , ps_t : std_logic :='0';
	
--SIGNAL--END--

  begin 
  
	gen00: for i in 3 downto 0 generate
		 ff0i: dff	port map(
		clk=> (clk and not ps_t ) , D=>D_sM(i) , PRN=>'1' ,CLRN=> pb_r_sn ,
		Q => Q_s(i)
		);
		
		D_sM(i)<=(((cmp_in_s(i))and(lock_compTant))or((D_s(i))and(not lock_compTant)));
		
	end generate;
	
	lock_compTant<=(auto_ps_s and lock_compT);
	
	D_s(0)<= not Q_s(0);
	D_s(1)<= ((Q_s(1) and not Q_s(0))or(not Q_s(3) and not Q_s(1) and Q_s(0)));
	D_s(2)<= ((Q_s(2) and not Q_s(0))or(Q_s(2) and not Q_s(1))or(not Q_s(2) and Q_s(1) and Q_s(0)));
	D_s(3)<= ((Q_s(3) and not Q_s(0))or(Q_s(2) and Q_s(1) and Q_s(0)));
	
--LOCK--COMPARE--RA--
	pse_cmp:	 compare_4bit port map
		 (
			  --clk=>clk,
			  S=>Q_s, cmp=>cmp_in_s,
			  outp=> lock_comp
		  );
		  
  cmp_in_s<=cmp_in;
  
--LOCK--COMPARE--RA--TRIGGER--
		lock_compare_trigger: jkff port map(
			clk=> auto_ps_s and  lock_comp, J=> '1' , K=>'1' , PRN=>  '1' ,CLRN=> (pb_r_sn and pb_p_sn)  ,
			Q =>  lock_compT
			);
			
--PAUSE--T
		pause_trigger: jkff port map(
			clk=> (not pb_p_sn ), J=> '1' , K=>'1' , PRN=>  '1' ,CLRN=> ( pb_r_sn and not lock_compTant)  ,
			Q =>  ps_t
			);
--Co--
	rst_cmp:	 compare_4bit port map
		 (
			 -- clk=>clk,
			  S=> Q_s , cmp=>"1001", 
			  outp=> comp_o_s
		  );
--
  pb_r_sn<=pb_rst ; auto_ps_s<=auto_ps; pb_p_sn<=pb_pause;
  Co<=comp_o_s;
  outp<=Q_s;
  psed_o<=lock_compTant ;
  

  end sync_9_count_arch;
  