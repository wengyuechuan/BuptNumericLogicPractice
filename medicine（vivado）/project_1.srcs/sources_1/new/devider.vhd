library ieee;
use ieee.std_logic_1164.all;
entity divider is
   port ( clk0: in std_logic;
          clkout: out std_logic);
end divider;
architecture art of divider is 
   signal temp :integer range 0 to 9999;
   begin
   process(clk0)
   begin
      if(clk0'event and clk0='1')then
         if (temp = 9999)then
             temp <= 0;
         else 
             temp <= temp+1;
         end if;
      end if;
   end process;
   process(clk0,temp)
   begin
      if(clk0'event and clk0='1')then
         if(temp < 5000)then
            clkout <= '1';
         else 
            clkout <= '0';
         end if;
      end if;
   end process;
end art;
