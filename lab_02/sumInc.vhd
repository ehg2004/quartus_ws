Library IEEE;
use ieee.std_logic_1164.all;

entity sumInc is
	port (
			--en : in std_logic;
			Si	:	in std_logic_vector (3 downto 0);
			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end sumInc;

architecture sumInc_arch of sumInc is 
--COMPONENT--

--END--COMPONENT--
--SIGNAL--
signal s0 , s1 , s2 , s3 : std_logic ;
signal ss : std_logic_vector (3 downto 0);
--END--SIGNAL--
	begin
		ss<=Si;
--		s0<='1';
		process (clk)
		begin
			if  (falling_edge(clk))then
				if ss = "1001" then --9
--					if s0 = '0' then
						RSTN_o <= "0000";
						PRSN_o <= "1111";
						s0 <=	'1';
--					end if;
				else
					PRSN_o <= "1111";
					RSTN_o <= "1111";
					s0 <='0';
				end if;
			end if;

		end process;
		Co<=s0;
--BEGIN--
end sumInc_arch;
