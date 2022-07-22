LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY count_60 is
port(	
	clk,clr,change,qd:in std_logic;
	q0,q1:out std_logic_vector(3 downto 0);
	cout:out std_logic
);
end count_60;

architecture arc of count_60 is
	signal m_clk:std_logic;
	signal num0,num1:std_logic_vector(3 downto 0);
begin
	process(change,clk,qd)
	begin
		if(change='0')then --change work
			m_clk<=qd;
		else
			m_clk<=clk;
		end if;
	end process;
	process(m_clk)
	begin
		if(m_clk'event and m_clk='1') then
			if(num0="1001" and num1="0101" and change='1') then   --change not work and num is 59
				cout<='1';
			else
				cout<='0';
			end if;
		end if;
	end process;
	process(m_clk,clr)
	begin
		if(m_clk'event and m_clk='1') then
			if (num0="1001") then
				num0<="0000";
				if (num1="0101") then
					num1<="0000";
				else
					num1<=num1+1;
				end if ;
			else
				num0<=num0+1;
			end if ;
		end if;
		if (clr='0') then
			num0<="0000";
			num1<="0000";
		end if;
	end process;
	q0<=num0;
	q1<=num1;
end arc;
  