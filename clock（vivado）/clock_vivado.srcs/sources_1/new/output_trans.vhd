--==============================================
------------------输出结果的切换----------------
------------------由于minisys开发版输出的特点---
--==============================================

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity output_trans is
Port ( clk_s: in std_logic;--5khz的输出模块
	   second0: in std_logic_vector(3 downto 0); --秒的低几位
	   second1: in std_logic_vector(3 downto 0); --秒的高几位
	   minute0: in std_logic_vector(3 downto 0);--分的低几位
	   minute1: in std_logic_vector(3 downto 0);--分的高几位
	   hour0: in std_logic_vector(3 downto 0);--小时的低几位
	   hour1:in std_logic_vector(3 downto 0);--小时的高几位
	   ledout:out std_logic_vector(3 downto 0);--输出结果
	   en:out std_logic_vector(5 downto 0)--使能信号的输出
	   );

end output_trans;

architecture arc of output_trans is
signal count:Integer range 0 to 5;
signal temp:std_logic_vector(5 downto 0);
signal outtemp:std_logic_vector(3 downto 0);
begin
fivecounter:process(clk_s)
begin
    if(clk_s'event and clk_s='1')then
        if(count=5)then
            count<=0;
        else
            count<=count+1; --这里完成了+1操作
     end if;
     end if;
end process;
outputenChooser:process(count)
begin
    case count is
    when 0 =>temp<="111110";
    when 1 =>temp<="111101";
    when 2 =>temp<="111011";
    when 3=>temp<="110111";
    when 4=>temp<="101111";
    when 5=>temp<="011111";
    when others=>temp<="111111";
    end case;
end process;

outputContentChooser:process(count,second0,second1,minute0,minute1,hour0,hour1)
begin
    case count is
    when 0 =>outtemp<=second0;
    when 1 =>outtemp<=second1;
    when 2 =>outtemp<=minute0;
    when 3=>outtemp<=minute1;
    when 4=>outtemp<=hour0;
    when 5=>outtemp<=hour1;
    when others=>outtemp<="0000";
    end case;
end process;
ledout<=outtemp;
en<=temp; --这里把它接入一个新的模块 进行转换闪烁

end arc;