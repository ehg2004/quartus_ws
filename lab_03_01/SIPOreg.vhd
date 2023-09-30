Library IEEE;
use ieee.std_logic_1164.all;

entity SIPOreg is
	port	(
	Q_out : out std_logic_vector (7 downto 0);
	clk , OE , S_in: in std_logic
	);
end SIPOreg;

architecture SIPOreg_arch of SIPOreg is
	
	component dff is
	port	(
		D, PRN , CLRN  , CLK: in std_logic;
		Q : out std_logic
	);
	end component;
	
	signal DM_s : std_logic_vector (7 downto 0);
	signal Q_s : std_logic_vector (8 downto 0);
	signal clk_s  : std_logic ;
	begin 
	
	gen00: for i in 0 to 7 generate
	aa00:
	dff
	port	map (
		D =>Q_s(i) , PRN=>'1' , CLRN => '1'  , CLK => clk_s,
		Q => Q_s(i+1)
	);
	
	DM_s(i)<=(OE and Q_s(i+1));
	
	end generate;
	
	Q_out<=DM_s;
	Q_s(0)<=S_in;
	clk_s<= clk;	
	
end SIPOreg_arch;
