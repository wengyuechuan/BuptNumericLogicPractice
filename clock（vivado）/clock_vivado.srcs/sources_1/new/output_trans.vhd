--==============================================
------------------���������л�----------------
------------------����minisys������������ص�---
--==============================================

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity output_trans is
Port ( clk_s: in std_logic;--5khz�����ģ��
	   second0: in std_logic_vector(3 downto 0); --��ĵͼ�λ
	   second1: in std_logic_vector(3 downto 0); --��ĸ߼�λ
	   minute0: in std_logic_vector(3 downto 0);--�ֵĵͼ�λ
	   minute1: in std_logic_vector(3 downto 0);--�ֵĸ߼�λ
	   hour0: in std_logic_vector(3 downto 0);--Сʱ�ĵͼ�λ
	   hour1:in std_logic_vector(3 downto 0);--Сʱ�ĸ߼�λ
	   ledout:out std_logic_vector(3 downto 0);--������
	   en:out std_logic_vector(5 downto 0)--ʹ���źŵ����
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
            count<=count+1; --���������+1����
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
en<=temp; --�����������һ���µ�ģ�� ����ת����˸

end arc;