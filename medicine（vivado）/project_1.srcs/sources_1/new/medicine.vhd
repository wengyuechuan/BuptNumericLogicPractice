library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity medicine is
port(
		clk_m:in std_logic;
		enable_m:in std_logic;
		reset_m:in std_logic;
		
		pnpb_m:in std_logic_vector(7 downto 0); --pill number per bottle
		max_bottle_m:in std_logic_vector(7 downto 0);
		cur_bot_m:out std_logic_vector(7 downto 0); -- current bottles
		cur_pill_m:out std_logic_vector(11 downto 0); -- current pills
		work_light_m:out std_logic;-- green
		stop_light_m:out std_logic;-- red
		warn_light_m:out std_logic-- yellow
	);
end medicine;

architecture do of medicine is

signal count:std_logic_vector(7 downto 0);
signal cb:std_logic_vector(7 downto 0);--count bottle
signal cp:std_logic_vector(11 downto 0);--count pill
signal stop:std_logic;
begin
	process(clk_m,enable_m,reset_m)
	begin
		if(reset_m = '1')then
			count<="00000000";
			cb<="00000000";
			cp<="000000000000";
			stop<='0';
			warn_light_m<='0';
			work_light_m<=enable_m;
			stop_light_m<='0';
			
		else
			if(enable_m='1')then
				if( (pnpb_m>"01010000") or (pnpb_m="00000000") or (max_bottle_m="00000000") or (max_bottle_m>"00011000") ) then -- out of range case
					warn_light_m<='1';
					stop<='1';
				elsif(cb=max_bottle_m)then-- bottles number reach the max
					stop<='1';
					warn_light_m<='0';
				end if;-- end not allowed case analyse
				
				if(  (stop='0') and (pnpb_m<="01010000") and (pnpb_m>"00000000") and (max_bottle_m<="00011000") and (max_bottle_m>"00000000") )then
					work_light_m<='1';
					stop_light_m<='0';
					
					if( clk_m'event and clk_m='1')then
						if(count=pnpb_m)then
							count<="00000000";
							if(cb(3 downto 0)="1001")then
								cb<=cb+"0111";
							else
								cb<=cb+1;
							end if;-- end cb push analyse
						else
							if(count(3 downto 0)="1001")then
								count<=count+"0111";
							else
								count<=count+1;
							end if;-- increase count
						
							if(cp(7 downto 0)="10011001")then
								cp<=cp+"01100111";
							elsif(cp(3 downto 0)="1001")then
								cp<=cp+"0111";
							else
								cp<=cp+1;
						end if;-- end cp push analyse
					end if;-- end count restart analyse
					end if;--end QD analyse
				end if;-- end range analyse
			else -- not enabled case
				work_light_m<='0';
				stop_light_m<='1';
			end if;-- end enable analyse
		end if;--end reset analayse


		if(enable_m='1')then
			cur_bot_m<=count;
		else
			cur_bot_m<=cb;
		end if;

		cur_pill_m<=cp;
	end process;
end do;