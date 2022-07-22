library ieee;
use ieee.std_logic_1164.all;

entity show is port(
	data_in:in std_logic_vector(3 downto 0);
	data_out:out std_logic_vector(7 downto 0)
);
end show;

architecture art of show is
begin
process(data_in)
begin
	case data_in is
		when "0000" =>data_out<= "00111111";
		 when "0001"=>data_out<="00000110" ;
		 when"0010"=>data_out<="01011011";
		 when"0011"=>data_out<="01001111";
		 when"0100"=>data_out<="01100110";
		 when"0101"=>data_out<="01101101";
		 when"0110"=>data_out<="01111101";
		 when"0111"=>data_out<="00000111";
		 when"1000"=>data_out<="11111111";
		 when"1001"=>data_out<="01101111";
		 when others=>data_out<="00000000";
	end case;
end process;
end art;