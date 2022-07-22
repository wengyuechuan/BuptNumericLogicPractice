LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ring_bell is
port(
	min0,min1,sec0,sec1:in std_logic_vector(3 downto 0);
	ring:out std_logic
	);
end ring_bell;

architecture arc of ring_bell is
begin 
    ring <= '1' when (min1="0101" and min0 ="1001" and sec1="0101")and ( sec0="0001" or sec0="0011" or sec0 ="0101" or sec0 ="0111" or sec0="1001") 
    else '0';
end arc;