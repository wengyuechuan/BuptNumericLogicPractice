library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity two_four_trans is
	port(
		en:in std_logic;
		d:in std_logic_vector(1 downto 0);
		s:out std_logic_vector(3 downto 0)
	);
end two_four_trans;

architecture arc of two_four_trans is
signal temp: std_logic_vector(3 downto 0);
signal count: Integer range 1 downto 0;
begin
	process(en,d)
	begin
		if(en='1')then
			case d is
				when "00" => temp<="1110";
				when "01" => temp<="1101";
				when "10" => temp<="1011";
				when "11" => temp<="1111";
				when others=>temp<="1111";
			end case;
		else
		  temp<="1111";
		end if;
	end process;
	s<=temp;
end arc;