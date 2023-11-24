Library IEEE;
use ieee.std_logic_1164.all;

entity rf_edge_det is
	port	(
	X, inv : in std_logic;
	edge : out std_logic
	);
end	rf_edge_det;

architecture rf_edge_det_arch of rf_edge_det is
begin
	edge <=	((inv xor (X)) and (inv xor (not X)));
end	rf_edge_det_arch;