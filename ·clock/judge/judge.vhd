LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY judge is
port(
	clk,change:in std_logic;
	pin:in std_logic_vector(3 downto 0);
	pout:out std_logic_vector(3 downto 0)
	);
end judge;

architecture arc of judge is
signal count:std_logic;
signal temp:std_logic_vector(3 downto 0);
begin
process(clk,change,pin)
	begin
		if(clk'event and clk='1')then
			count<=not count;
		end if;
		if(change ='1') then
			temp<=pin;
		else
			if(count='0')then
				temp<="ZZZZ";
			else
				temp<=pin;
			end if;
		end if;
	end process;
	pout<=temp;
end arc;