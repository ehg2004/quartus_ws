Library IEEE;
use ieee.std_logic_1164.all;

entity count_dec is
	port (
			clk, ctrl: in std_logic ; 
			Co : out std_logic;
			S: out std_logic_vector (3 downto 0);
			clk_b, ctrl_b: in std_logic 
			);
end count_dec;

architecture count_dec_arch of count_dec is 
--COMPONENT--
	component tff
		port (
		CLK, PRN, CLRN , T : in std_logic;
		Q : out std_logic
		);
	end component;
	component switchXY
		port (
		X , Y , ctrl : in std_logic;
		O0, O1 : out std_logic
		);
	end component;
	component sumIncDecMux is
	port (
		Si	:	in std_logic_vector (3 downto 0);
		clk , ctrl: in std_logic;
		PRSN_o,RSTN_o : out std_logic_vector (3 downto 0);
		Co	:	out std_logic;
		clk_b , ctrl_b: out std_logic
		);
	end component;
	
--END--COMPONENT--

--SIGNAL--
	signal NJ_path , NK_path , Q0_path , Q1_path , S0_path , R0_path , N0_path , N1_path: std_logic ;
--END--SIGNAL--
	begin
		NJ_path<=Q1_path;
		NK_path<=Q0_path;
		S0_path<= not (NJ_path  and J and ctrl);
		R0_path<= not (NK_path and K and ctrl );
		Q1_path<= not  (R0_path and Q0_path);
		Q0_path<= not (S0_path and Q1_path);
		Q1<=Q1_path;
		Q0<=Q0_path;
	
--BEGIN--
end count_dec_arch;