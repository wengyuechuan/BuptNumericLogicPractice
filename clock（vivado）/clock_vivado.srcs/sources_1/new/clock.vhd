LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock is
Port ( clk,clr,qd,en: in std_logic;
        minuteset,hourset:in std_logic_vector(7 downto 0);
	   d : in std_logic_vector(1 downto 0); 
	   ring : out std_logic ;
	   ledout1 : out std_logic_vector(6 downto 0); --�߶�������ʾ
	   enout:out std_logic_vector(5 downto 0)
	   ); --������8421�����c
end clock;

architecture arc of clock is
	component divide  --��Ƶ��
		port (clk : in std_logic;
			  cp : out std_logic
			  );
	end component;
	
	component count_60 --60���Ƽ�����
		port (clk,clr,change,qd:in std_logic;
			  q0,q1:out std_logic_vector(3 downto 0);
			  cout:out std_logic
			  );
	end component;
	
	component count_24 --24���Ƽ�����
		port (clk,clr,change,qd:in std_logic;
			  q0,q1:out std_logic_vector(3 downto 0);
			  cout:out std_logic
			  );
	end component;
	
	component two_four_trans --2 4������
		port (en:in std_logic;
			  d:in std_logic_vector(1 downto 0);
			  s:out std_logic_vector(3 downto 0)
			  );
	end component;
	
	component ring_bell --������
    port(
	   min0,min1,sec0,sec1:in std_logic_vector(3 downto 0);
	   ring:out std_logic
	);
	end component;
	
	component display --7��������ʾ
		port (pin:in std_logic_vector(3 downto 0);
			  pout:out std_logic_vector(6 downto 0)
			  );
	end component;
	component output_trans
        port ( clk_s: in std_logic;--5khz�����ģ��
	   second0: in std_logic_vector(3 downto 0); --��ĵͼ�λ
	   second1: in std_logic_vector(3 downto 0); --��ĸ߼�λ
	   minute0: in std_logic_vector(3 downto 0);--�ֵĵͼ�λ
	   minute1: in std_logic_vector(3 downto 0);--�ֵĸ߼�λ
	   hour0: in std_logic_vector(3 downto 0);--Сʱ�ĵͼ�λ
	   hour1:in std_logic_vector(3 downto 0);--Сʱ�ĸ߼�λ
	   ledout:out std_logic_vector(3 downto 0);--������
	   en:out std_logic_vector(5 downto 0)--ʹ���źŵ����
	   );
	   end component;
	component blink
    port (
        clk:in std_logic; --ʱ����˸��Ƶ��
        en:in std_logic; --����ֱ�����ڱ�־ĳһλ
        change:in std_logic; --change �޸��õĽ��
        enout:out std_logic --����Ľ��
    );
    end component;
    component MyorGate
    port(
        a,b:IN STD_LOGIC;
		c:OUT STD_LOGIC
    );
    end component;
    component alarm
    port(
    minuteset:in std_logic_vector(7 downto 0);
	hourset:in std_logic_vector(7 downto 0);
	minute0,minute1,hour0,hour1,second0,second1:in std_logic_vector(3 downto 0);
	ifRing:out std_logic --������
    );
    end component;
	signal cp_1,cp_2,cp_3:std_logic;  --�м��ʱ�ӽ�λ����
	signal s,pin:std_logic_vector(3 downto 0);
	signal secondt0:std_logic_vector(3 downto 0);
	signal secondt1:std_logic_vector(3 downto 0);
	signal minutet0:std_logic_vector(3 downto 0);
	signal minutet1:std_logic_vector(3 downto 0);
	signal hourt0:std_logic_vector(3 downto 0);
	signal hourt1:std_logic_vector(3 downto 0);
	signal enouttemp:std_logic_vector(5 downto 0);
	signal orin1,orin2:std_logic;
	begin
	u1:divide port map(clk,cp_1);
	u2:count_60 port map(cp_1,clr,s(0),qd,secondt0,secondt1,cp_2);
	u3:count_60 port map(cp_2,clr,s(1),qd,minutet0,minutet1,cp_3);
	u4:count_24 port map(cp_3,clr,s(2),qd,hourt0,hourt1);
	u5:two_four_trans port map(en,d,s);
	u6:ring_bell port map(minutet0,minutet1,secondt0,secondt1,orin1);
	u7:display port map(pin,ledout1);
	u8:output_trans port map(clk,secondt0,secondt1,minutet0,minutet1,hourt0,hourt1,pin,enouttemp);
	u9:blink port map(cp_1,enouttemp(0),s(0),enout(0));
	u10:blink port map(cp_1,enouttemp(1),s(0),enout(1));
	u11:blink port map(cp_1,enouttemp(2),s(1),enout(2));
	u12:blink port map(cp_1,enouttemp(3),s(1),enout(3));
	u13:blink port map(cp_1,enouttemp(4),s(2),enout(4));
	u14:blink port map(cp_1,enouttemp(5),s(2),enout(5));
	u15:alarm port map(minuteset,hourset,minutet0,minutet1,hourt0,hourt1,secondt0,secondt1,orin2);
	u16:MyorGate port map(orin1,orin2,ring);
end arc;