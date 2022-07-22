LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock is
Port ( clk,clr,qd,en: in std_logic;
        minuteset,hourset:in std_logic_vector(7 downto 0);
	   d : in std_logic_vector(1 downto 0); 
	   ring : out std_logic ;
	   ledout1 : out std_logic_vector(6 downto 0); --七段译码显示
	   enout:out std_logic_vector(5 downto 0)
	   ); --正常的8421码输出c
end clock;

architecture arc of clock is
	component divide  --分频器
		port (clk : in std_logic;
			  cp : out std_logic
			  );
	end component;
	
	component count_60 --60进制计数器
		port (clk,clr,change,qd:in std_logic;
			  q0,q1:out std_logic_vector(3 downto 0);
			  cout:out std_logic
			  );
	end component;
	
	component count_24 --24进制计数器
		port (clk,clr,change,qd:in std_logic;
			  q0,q1:out std_logic_vector(3 downto 0);
			  cout:out std_logic
			  );
	end component;
	
	component two_four_trans --2 4译码器
		port (en:in std_logic;
			  d:in std_logic_vector(1 downto 0);
			  s:out std_logic_vector(3 downto 0)
			  );
	end component;
	
	component ring_bell --蜂鸣器
    port(
	   min0,min1,sec0,sec1:in std_logic_vector(3 downto 0);
	   ring:out std_logic
	);
	end component;
	
	component display --7段译码显示
		port (pin:in std_logic_vector(3 downto 0);
			  pout:out std_logic_vector(6 downto 0)
			  );
	end component;
	component output_trans
        port ( clk_s: in std_logic;--5khz的输出模块
	   second0: in std_logic_vector(3 downto 0); --秒的低几位
	   second1: in std_logic_vector(3 downto 0); --秒的高几位
	   minute0: in std_logic_vector(3 downto 0);--分的低几位
	   minute1: in std_logic_vector(3 downto 0);--分的高几位
	   hour0: in std_logic_vector(3 downto 0);--小时的低几位
	   hour1:in std_logic_vector(3 downto 0);--小时的高几位
	   ledout:out std_logic_vector(3 downto 0);--输出结果
	   en:out std_logic_vector(5 downto 0)--使能信号的输出
	   );
	   end component;
	component blink
    port (
        clk:in std_logic; --时钟闪烁的频率
        en:in std_logic; --这里直接用于标志某一位
        change:in std_logic; --change 修改用的结果
        enout:out std_logic --输出的结果
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
	ifRing:out std_logic --输出结果
    );
    end component;
	signal cp_1,cp_2,cp_3:std_logic;  --中间的时钟进位变量
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