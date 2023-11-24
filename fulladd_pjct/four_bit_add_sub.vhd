Library IEEE;
use ieee.std_logic_1164.all;

entity four_bit_add_sub is
	Port ( 
			A : in  std_logic_vector (3 downto 0);
			B : in  std_logic_vector (3 downto 0);
			Ctrl: in  std_logic;
			S : out  std_logic_vector (3 downto 0);
			Cout : out  std_logic
			);
end four_bit_add_sub	;

architecture  four_bit_add_sub_arch of four_bit_add_sub is	

--SUBSTITUIDO--
--	component add_s is 
--		 port(
--			  A, B, Ci:  in std_logic; 
--			  Co, S : out std_logic
--			); 
--	end component;	
--	signal c_path: std_logic_vector (4 downto 0);
--	begin
--		gen: for i in 0 to 3 generate
--			action: add_s port map (A => A(i), B =>  (ctrl xor B(i)) , Ci => c_path(i), S => S(i), Co => c_path(i+1));
--	end generate;
--	c_path(0) <=  ctrl;
--	Cout <= c_path(4);
--SUBSTITUIDO--

--COMPONENTS--
	component four_bit_add is
		Port ( 
				A : in  std_logic_vector (3 downto 0);
				B : in  std_logic_vector (3 downto 0);
				Cin: in  std_logic;
				S : out  std_logic_vector (3 downto 0);
				Cout : out  std_logic
				);
	end component	;

	component four_bit_inv is
		Port ( 
				X_i: in  std_logic_vector (3 downto 0);
				ctrl: in  std_logic;
				X_o : out  std_logic_vector (3 downto 0);
				ctrl_o: buffer  std_logic
				);
	end component	;
--COMPONENTS-- END --

--SIGNAL--
	signal a_path , b_path , b_path_o , output_path: std_logic_vector (3 downto 0);
	signal ctrl_s0 , ctrl_s1 , Cout_path : std_logic;
--SIGNAL--END--

	begin 
	
--PORT_MAP--	
		action_01: four_bit_inv port map (X_i=> b_path, ctrl=> ctrl_s0 , X_o =>b_path_o , ctrl_o => ctrl_s1);
		action_02: four_bit_add port map (A=> a_path , B=> b_path_o , Cin=>ctrl_s1 , S => output_path , Cout=> Cout_path);
--PORT_MAP--END--

	a_path <= A;
	b_path <= B;
	ctrl_s0 <= Ctrl;
	S<= output_path;
	Cout<= Cout_path;

end four_bit_add_sub_arch;