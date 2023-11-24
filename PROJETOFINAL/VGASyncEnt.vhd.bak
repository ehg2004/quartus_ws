library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity VGASyncEnt is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			vPos , hPos : out std_logic_vector (11 downto 0) ;
			clk_20Hz , Vsync , Hsync: out std_logic);-- Can check it using PIN A8 - LEDR0

	end VGASyncEnt;
  
architecture freq_div of Timing_Reference20kHz is
  
signal clock_cycle , lines : integer:=0;
signal vA, vB , vC ,vD , hA, hB ,hC ,hD : integer:=0;
type vState_type is (vAs, vBs , vCs ,vDs);

type hState_type is (hAs, hBs ,hCs ,hDs);
signal vState : vState_type:= vAs ;
signal hState : hState_type:= hAs;
signal rstn , vSync , hSync : std_logic : = 1;
signal vPos_s , hPos_s : std_logic_vector (11 downto 0);
signal hEn ,vEn : std_logic : = 0 ;

signal tmp : std_logic := '0';
  
beginrstn , vSync , hSync

vA<=2 ; vB<=33 ; vC<=480 ; vD<=16 ;hA<= 96 ; hB<= 48 ; hC<= 640 ; hD<=16 ;
 --RES 640x480 , 60 Hz
process(clk,rstn)
	begin
	vPos_s<= to_signed(lines-(vA+vB) , vPos_s'length) ;
	hPos_s<= to_signed(clock_cycle-(hA+hB) , hPos_s'length)  ;
	vPos<= vPos_s; hPos<= hPos_s ;
	
	if(clk'event and clk='1') then
	
         CASE hState IS
           WHEN hAs=>
               IF clock_cycle = (hA-1) THEN
                  hState <= hBs;
						hSync <= '1';
               ELSE
                  hState <= hAs;
               END IF;
           WHEN hBs=>
               IF clock_cycle = (hA+hB-1) THEN
                  hState <= hCs;
               ELSE
                  hState <= hBs;
               END IF;
			WHEN hCs=>
               IF clock_cycle = (hA +  hB + hC -1) THEN
                  hState <=  hDs;
               ELSE
                  hState <= hCs ;
               END IF;
			WHEN hDs=>
               IF clock_cycle = (hA +  hB + hC + hD -1) THEN
                  hState <=  hAs;
						hSync <= '0';
               ELSE
                  hState <= hDs ;
               END IF;
         END CASE;
			
         CASE vState IS
           WHEN vAs=>
               IF lines = (vA-1) THEN
                  vState <= vBs;
						vSync<='1';
               ELSE
                  vState <= vAs;
               END IF;
           WHEN vBs=>
               IF lines = (vA+vB-1) THEN
                  vState <= vCs;
               ELSE
                  vState <= vBs;
               END IF;
			WHEN vCs=>
               IF lines = (vA +  vB + vC -1) THEN
                  vState <=  vDs;
               ELSE
                  vState <= vCs ;
               END IF;
			WHEN vDs=>
               IF lines = (vA +  vB + vC + vD -1) THEN
                  vState <=  vAs;
						vSync<='0';
               ELSE
                  vState <= vDs ;
               END IF;
         END CASE;
		clock_cycle <= clock_cycle+1; --Horizontal increment 
		if (clock_cycle = hA +  hB + hC + hD -1) then
			clock_cycle <= 0;
			lines<=lines+1; -- Vertical increment
		end if;
		if (lines = vA +  vB + vC + vD -1)
			lines<=0;
		end if;
	end if;
end process
	
 
end freq_div;