Library IEEE;
use ieee.std_logic_1164.all;
entity compare_4bit is 
    port(
--		  clk:in std_logic;
        S, cmp:  in std_logic_vector (3 downto 0); 
        outp : out std_logic
     ); 
end compare_4bit; 
architecture compare_4bit_arch of compare_4bit  is 
 signal cmp_s, cmpd_s : std_logic_vector(3 downto 0);
  signal rslt_s,clk_s : std_logic;
  
  begin 
  
	rslt_s<=  (not(cmpd_s(0) xor cmp_s(0))and not(cmpd_s(1) xor cmp_s(1))and not(cmpd_s(2) xor cmp_s(2))and not(cmpd_s(3) xor cmp_s(3)));
	cmp_s<=cmp;cmpd_s<=S;
	outp<=rslt_s;
  
  end compare_4bit_arch;