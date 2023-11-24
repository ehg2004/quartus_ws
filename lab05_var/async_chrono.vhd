--Library IEEE;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use work.all;
--
--package array_lab05_pkg is
----       	type array_4_bit_7 is array (6 downto 0) of std_logic_vector(3 downto 0);
--			type array_4_bit_6 is array (5 downto 0) of std_logic_vector(3 downto 0);
----			type array_8_bit_6 is array (5 downto 0) of std_logic_vector(7 downto 0);
--		 -- type bus_array is array(natural range <>, natural range <>) of std_logic;
--end package;

Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.all;
--use work.array_lab05_pkg.all;

entity async_chrono is 
    port(
		  clk, pb_rst , pb_pause  :in std_logic;
        S0,S1,S2,S3,S4,S5 : out std_logic_vector (3 downto 0)
     ); 
end async_chrono; 
architecture async_chrono_arch of async_chrono is

component async_9_count is 
    port(
		  clk, pb_rst , pause_ant, pb_pause  :in std_logic;
		  cmp_in : in std_logic_vector (3 downto 0);
        --S, cmp:  in std_logic_vector (11 downto 0); 
		  Co,psed_o: out std_logic;
        outp : out std_logic_vector (3 downto 0)
     ); 
end component;

component async_6_count is 
    port(
		  clk, pb_rst , pause_ant, pb_pause  :in std_logic;
		  cmp_in : in std_logic_vector (3 downto 0);
        --S, cmp:  in std_logic_vector (11 downto 0); 
		  Co,psed_o: out std_logic;
        outp : out std_logic_vector (3 downto 0)
     ); 
end component;

signal psed_m_s ,Co_s: std_logic_vector(5 downto 0);
signal S0s,S1s,S2s,S3s,S4s,S5s:  std_logic_vector (3 downto 0);
signal pb_pause_s,pb_rst_s,clk_s  : std_logic;

begin

co00: async_9_count port map(
		  clk=>not clk_s, pb_rst=>pb_rst_s , pause_ant=>psed_m_s(0), pb_pause=>pb_pause_s,
		  cmp_in=>"0011",
		  Co=>Co_s(0),
        outp =>S0s
     ); 

co01: async_9_count port map(
		  clk=>not Co_s(0), pb_rst=>pb_rst_s , pause_ant=>psed_m_s(1), pb_pause=>pb_pause_s,
		  cmp_in=>"0001",
		  Co=>Co_s(1),
		  psed_o=>psed_m_s(0),
        outp =>S1s
     ); 
co02: async_9_count port map(
		  clk=>not Co_s(1), pb_rst=>pb_rst_s , pause_ant=>psed_m_s(2), pb_pause=>pb_pause_s,
		  cmp_in=>"0000",
		  Co=>Co_s(2),
		  psed_o=>psed_m_s(1),
        outp =>S2s
     ); 
co03: async_9_count port map(
		  clk=>not Co_s(2), pb_rst=>pb_rst_s , pause_ant=>psed_m_s(3), pb_pause=>pb_pause_s,
		  cmp_in=>"1001",
		  Co=>Co_s(3),
		  psed_o=>psed_m_s(2),
        outp =>S3s
     ); 
co04: async_6_count port map(
		  clk=>not Co_s(3), pb_rst=>pb_rst_s , pause_ant=>psed_m_s(4), pb_pause=>pb_pause_s,
		  cmp_in=>"0100",
		  Co=>Co_s(4),
		  psed_o=>psed_m_s(3),
        outp =>S4s
     ); 
co05: async_9_count port map(
		  clk=>not Co_s(4), pb_rst=>pb_rst_s , pause_ant=>'1', pb_pause=>pb_pause_s,
		  cmp_in=>"1001",
		  Co=>Co_s(5),
		  psed_o=>psed_m_s(4),
        outp =>S5s
     ); 
pb_pause_s<=pb_pause;
pb_rst_s<=pb_rst;
clk_s<=clk;
end async_chrono_arch;