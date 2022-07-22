LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY divide is
port(	
	clk : in std_logic;
	cp : out std_logic
	);
end divide;

architecture arc of divide is
	signal temp:integer range 0 to 1000;
begin
	process(clk)
	begin
		if(clk'event and clk='1') then
			if temp=999 then
				temp<=0;
			else
				temp<=temp+1;
			end if;
		end if;
	end process;
	
	process(clk,temp)
	begin
		if(clk'event and clk='1') then
			if(temp<500) then
				cp<='1';
			else
				cp<='0';
			end if;
		end if;
	end process;
end arc;