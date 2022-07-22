LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY alarm is
port(
	minuteset:in std_logic_vector(7 downto 0);
	hourset:in std_logic_vector(7 downto 0);
	minute0,minute1,hour0,hour1,second0,second1:in std_logic_vector(3 downto 0);
	ifRing:out std_logic --Êä³ö½á¹û
);
end alarm;

architecture arc of alarm is
	signal minutesetTemp,hoursetTemp:std_logic_vector(7 downto 0);
	signal minuteTemp,hourTemp:std_logic_vector(7 downto 0);
begin
	minuteTemp<=minute1&minute0;
	hourTemp<=hour1&hour0;
	minutesetTemp<=minuteset;
	hoursetTemp<=hourset;
	process(minuteTemp,hourTemp,second0,second1)
	begin
		if (minuteTemp=minutesetTemp) and (hourTemp=hoursetTemp) then
			if((second0=0 or second0=2 or second0=4 or second0=6 or second0=8)and(second1=0))then
				ifRing<='1';
			else ifRing<='0';
			end if;
		else ifRing<='0';
		end if;
	end process;
end arc;
 