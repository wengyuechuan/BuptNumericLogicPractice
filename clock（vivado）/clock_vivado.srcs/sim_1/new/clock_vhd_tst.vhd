
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_vhd_tst IS
END clock_vhd_tst;
ARCHITECTURE clock_arch OF clock_vhd_tst IS
-- constants                    
constant clk_period:time :=1ms;                                
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL minuteset:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL hourset:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL ledout1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL enout:STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL qd : STD_LOGIC;
SIGNAL ring : STD_LOGIC;
COMPONENT clock
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	en : IN STD_LOGIC;
	ledout1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    enout:OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	qd : IN STD_LOGIC;
	ring : OUT STD_LOGIC;
    minuteset,hourset:in std_logic_vector(7 downto 0)
	);
END COMPONENT;
BEGIN
    i1:clock
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	d => d,
	en => en,
	ledout1 => ledout1,
	enout=>enout,
	qd => qd,
	ring => ring,
    minuteset=>minuteset,
    hourset=>hourset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
        minuteset<="00000000";
        hourset<="00000000";
        ring<='0';     
        clr<='0';
        en<='0';
        qd<='0';
        d<="11";
        wait for 1ps;
        clr<='1';
        en<='1';--修改信号有效
        d<="10";--改变小时位
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        d<="01";--改变分钟位
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        d<="00"; --改变秒
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        qd<='0';
        wait for 1000ms;
        qd<='1';
        wait for 1000ms;
        en<='0';
        d<="11";
        wait for 10ms;
        clr<='1';--恢复
        
             
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN     --产生时序信号                     
        clk<='0';
        wait for clk_period/2;
        clk<='1';
        wait for clk_period/2;                                                    
END PROCESS always;                                          
END clock_arch;
