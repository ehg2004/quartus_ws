Library IEEE;
use ieee.std_logic_1164.all;
entity compare_12bit is 
    port(
		  clk:in std_logic;
        S, cmp:  in std_logic_vector (11 downto 0); 
        outp : out std_logic
     ); 
end compare_12bit; 
architecture compare_12bit_arch of compare_12bit  is 
  signal cmp_s, cmpd_s : std_logic_vector(11 downto 0);
  signal rslt_s,clk_s : std_logic;
  
  begin 
  
	clk_prcss: process(clk_s)
	variable v_cmp : std_logic;
	begin
--	if rising_edge(clk_s) then
		v_cmp :='1';
		l_cmp: for i in 0 to 11 loop
		v_cmp := v_cmp and not ((cmpd_s(i)) xor (cmp_s(i)));
		end loop l_cmp;
--	end if;
	rslt_s<=v_cmp;
	end process clk_prcss;
	cmp_s<=cmp;cmpd_s<=S;clk_s<=clk;
	outp<=rslt_s;
  
  end compare_12bit_arch;