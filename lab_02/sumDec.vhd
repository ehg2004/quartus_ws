Library IEEE;
use ieee.std_logic_1164.all;

entity sumDec is
	port (
			Si	:	in std_logic_vector (3 downto 0);
			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
			clk: in std_logic;
			Co	:	out std_logic
			);
end sumDec;

architecture sumDec_arch of sumDec is 
--COMPONENT--

--END--COMPONENT--
--SIGNAL--
signal s0 , s1 , s2 , s3: std_logic ;
signal ss : std_logic_vector (3 downto 0);
--END--SIGNAL--
	begin
		ss<=Si;
		process (clk)
		begin
			if  falling_edge(clk) then
				if ss = "1111" then --not 0
					RSTN_o <= "0110";
					PRSN_o <= "1001";
					s0 <=	'1';
				else
					PRSN_o <= "1111";
					RSTN_o <= "1111";
					s0 <='0';
				end if;
			end if;

		end process;

		Co<=s0;
--BEGIN--
end sumDec_arch;

--Library IEEE;
--use ieee.std_logic_1164.all;
--
--entity sumDec is
--	port (
--			--en : in std_logic;
--			Si	:	in std_logic_vector (3 downto 0);
--			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
--			
--			Co	:	out std_logic
--			);
--end sumDec;
--
--architecture sumDec_arch of sumDec is 
----COMPONENT--
--
----END--COMPONENT--
----SIGNAL--
--signal s0 , s1 , s2 , s3: std_logic ;
--signal ss : std_logic_vector (3 downto 0);
----END--SIGNAL--
--	begin
--		ss<=Si;
--		process (ss)
--		begin
--			if ss = "1111" then
--				RSTN_o <= "1001";
--				PRSN_o <= "0110";
--				s0 <=	'1';
--			else
--				PRSN_o <= "1111";
--				RSTN_o <= "1111";
--				s0 <='0';
--			end if;
--		end process;
----BEGIN--
--end sumDec_arch;