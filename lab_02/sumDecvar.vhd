Library IEEE;
use ieee.std_logic_1164.all;

entity sumDecvar is
	port (
			--en : in std_logic;
			Si	:	in std_logic_vector (3 downto 0);
			PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
--			clk: in std_logic;
			Co	:	out std_logic
			);
end sumDecvar;

architecture sumDecvar_arch of sumDecvar is 
--COMPONENT--

	component dff is
	port (
	CLK , PRN,CLRN, D: in std_logic;
	Q : out std_logic
	);
	end component;

--END--COMPONENT--
--SIGNAL--
signal sQ , sDec0 , sNew6 , s3 : std_logic ;
signal Si_s : std_logic_vector (3 downto 0);
--END--SIGNAL--
--BEGIN--
	begin
	
	Si_s<=Si;
	sDec0<=(Si_s(0) and  Si_s(1) and Si_s(2) and  Si_s(3));-- detects not 15 = 0
	sNew6<=(not Si_s(0) or Si_s(1) or Si_s(2) or not Si_s(3));--verifies not 9 = 6
	--PRSN_o <= "1111";
	
	a0: dff 	port map (
	CLK=> sDec0 , PRN => '1' ,CLRN => sNew6 , D => '1',
	Q =>  s3
	);
	sQ<=not s3;
	
	PRSN_o(0)<='1';PRSN_o(1)<=sQ;PRSN_o(2)<=sQ;PRSN_o(3)<='1';
	RSTN_o(0)<=sQ;RSTN_o(1)<='1';RSTN_o(2)<='1';RSTN_o(3)<=sQ;
	
	
	
	Co<=sQ;
	
end sumDecvar_arch;
