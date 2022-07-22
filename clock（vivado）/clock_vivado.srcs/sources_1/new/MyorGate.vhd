library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY MyorGate IS
	PORT(a,b:IN STD_LOGIC;
		c:OUT STD_LOGIC);
END MyorGate;
ARCHITECTURE arc OF MyorGate IS
BEGIN
    c<=a or b;
END arc;