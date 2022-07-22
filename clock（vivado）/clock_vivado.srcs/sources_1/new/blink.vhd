library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity blink is
port (
    clk:in std_logic; --ʱ����˸��Ƶ��
    en:in std_logic; --����ֱ�����ڱ�־ĳһλ
    change:in std_logic; --change �޸��õĽ��
    enout:out std_logic --����Ľ��
);
end blink;

architecture Behavioral of blink is
signal count:std_logic;
signal entemp:std_logic;
begin
process(en,clk,change)
begin
    if(clk'event and clk='1')then
        count<= not count;
    end if;
    if(change='1')then --����޸�λ����1
        entemp<=en;
    else
        if(count<='1')then
            entemp<=en;
        else
            entemp<=not en;
        end if;
    end if;
end process;
enout<=entemp;
end Behavioral;
