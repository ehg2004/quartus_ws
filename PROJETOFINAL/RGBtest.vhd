library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity RGBtest is
	port (
			clk: in std_logic; 
			vPos , hPos : in std_logic_vector (11 downto 0) ;
			clk_20Hz , vSync , hSync , rgbEn: in std_logic ;
			rRGB , gRGB , bRGB : out std_logic_vector (3 downto 0)
			);
			
end RGBtest;

architecture RGBtest_arch of RGBtest is

signal clock_cycle : integer:=0;
signal rstn  : std_logic := '1' ;
signal vPos_s , hPos_s : std_logic_vector (11 downto 0);
signal hEn ,vEn : std_logic :='0' ;
signal vSync_s , hSync_s : std_logic:='0';
signal tmp : std_logic := '0';
type RGB_State_type is (s0, s1 ,s2 ,s3,s4);
signal rgbState : RGB_State_type:= s4 ;
signal hC : integer:= (640/4);
begin

	--vPos_s<= (to_signed(lines-(vA+vB) , vPos'length)) ;
	clock_cycle <= to_integer(unsigned(hPos));
	process(clk,rgbEn)
	begin
		if (rising_edge(rgbEn))then
		rgbState<=s0;
		rRGB <="1111"; gRGB <="0000"; bRGB<="1111";
		end if;
		if (rising_edge(clk) and ( rgbEn = '1') )then
			CASE rgbState IS
           WHEN s0=>
               IF clock_cycle = hC-1 THEN
                  rgbState <= s1;
						rRGB <="1111"; gRGB <="0000"; bRGB<="0000" ;
               ELSE
                  rgbState <= s0;
               END IF;
           WHEN s1=>
               IF clock_cycle = 2*hC-1 THEN
                  rgbState <= s2;
						rRGB <="0000"; gRGB <="1111"; bRGB<="0000" ;
               ELSE
                  rgbState <= s1;
               END IF;
			WHEN s2=>
               IF clock_cycle = 3*hC-1 THEN
                  rgbState <=  s3;
						rRGB <="0000"; gRGB <="0000"; bRGB<="1111";
               ELSE
                  rgbState <= s2 ;
               END IF;
			WHEN s3=>
               IF clock_cycle =4*hC-1  THEN
                  rgbState <=  s4;
						rRGB <="0000"; gRGB <="0000"; bRGB<="0000";
               ELSE
                  rgbState <= s3 ;
               END IF;
         END CASE;
		end if;
	end process;


	
end RGBtest_arch;