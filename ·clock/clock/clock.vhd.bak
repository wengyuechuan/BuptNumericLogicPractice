LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock is
Port ( clk,clr,qd,en: in std_logic;
	   minuteset:in std_logic_vector(6 downto 0);
	   hourset:in std_logic_vector(5 downto 0);
	   d : in std_logic_vector(1 downto 0); 
	   ring : out std_logic ;
	   ledout1 : buffer std_logic_vector(6 downto 0); --seven decoder output
	   ledout2 : buffer std_logic_vector(19 downto 0)
	   );

end clock;

architecture art of clock is
	component divideF
		port (clk : in std_logic;
			  cp : out std_logic
			  );
	end component;
	
	component count_60
		port (clk,clr,change,qd:in std_logic;
			  q0,q1:out std_logic_vector(3 downto 0);
			  cout:out std_logic
			  );
	end component;
	
	component count_24
		port (clk,clr,change,qd:in std_logic;
			  q0,q1:out std_logic_vector(3 downto 0);
			  cout:out std_logic
			  );
	end component;
	
	component two_four_trans
		port (
				en:in std_logic;
				d:in std_logic_vector(1 downto 0);
				s:out std_logic_vector(3 downto 0)
			  );
	end component;
	
	component ring_bell
		port (
				min0,min1,sec0,sec1:in std_logic_vector(3 downto 0);
				ring:out std_logic
			  );
	end component;
	
	component display
		port (
				pin:in std_logic_vector(3 downto 0);
				pout:out std_logic_vector(6 downto 0)
			  );
	end component;
	component judge_seven
	port(	
		clk,change:in std_logic;
		pin:in std_logic_vector(6 downto 0);
		pout:out std_logic_vector(6 downto 0)
	);
	end component;
	
	component judge
	port(
		clk,change:in std_logic;
		pin:in std_logic_vector(3 downto 0);
		pout:out std_logic_vector(3 downto 0)
		);
	end component;
	component alarm 
	port(
		minuteset:in std_logic_vector(6 downto 0);
		hourset:in std_logic_vector(5 downto 0);
		minute0,minute1,hour0,hour1,second0,second1:in std_logic_vector(3 downto 0);
		ifRing:out std_logic --Êä³ö½á¹û
	);
	end component;
	component MyorGate 
	PORT(a,b:IN STD_LOGIC;
		c:OUT STD_LOGIC);
	END component;
	signal cp_1,cp_2,cp_3:std_logic;
	signal s,pin:std_logic_vector(3 downto 0); 
	signal second1out,minute0out,minute1out,hour0out,hour1out:std_logic_vector(3 downto 0);
	signal second0out:std_logic_vector(6 downto 0);
	signal orin:std_logic;
	signal orin1:std_logic;
	begin
	u1:divideF port map(clk,cp_1);
	u2:count_60 port map(cp_1,clr,s(0),qd,pin,second1out,cp_2);
	u3:count_60 port map(cp_2,clr,s(1),qd,minute0out,minute1out,cp_3);
	u4:count_24 port map(cp_3,clr,s(2),qd,hour0out,hour1out);
	u5:two_four_trans port map(en,d,s);
	u6:ring_bell port map(minute0out,minute1out,pin,second1out,orin1);
	u7:display port map(pin,second0out);
	u8:judge_seven port map(cp_1,s(0),second0out,ledout1);
	u9:judge port map(cp_1,s(0),second1out,ledout2(3 downto 0));
	u10:judge port map(cp_1,s(1),minute0out,ledout2(7 downto 4));
	u11:judge port map(cp_1,s(1),minute1out,ledout2(11 downto 8));
	u12:judge port map(cp_1,s(2),hour0out,ledout2(15 downto 12));
	u13:judge port map(cp_1,s(3),hour1out,ledout2(19 downto 16));
	u14:alarm port map(minuteset,hourset,minute0out,minute1out,hour0out,hour1out,pin,second1out,orin);
	u15:MyorGate port map(orin1,orin,ring);
end art;