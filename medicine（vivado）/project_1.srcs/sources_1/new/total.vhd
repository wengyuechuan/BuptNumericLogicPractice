library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity total is
port(
	clk:in std_logic;
	enable:in std_logic;
	reset:in std_logic;
	
	pnpb:in std_logic_vector(7 downto 0); --pill number per bottle
	max_bottle:in std_logic_vector(7 downto 0);
	cur_bot:out std_logic_vector(7 downto 0); -- current bottles
	cur_pill:out std_logic_vector(11 downto 0); -- current pills
	work_light:out std_logic;-- green
	stop_light:out std_logic;-- red
	warn_light:out std_logic-- yellow
);
end total;

architecture art of total is
component divider is
	port(
		clk0:in std_logic;    --5khz
		clkout:out std_logic   --0.5hz
	);
end component;
component medicine is
	port(
		clk_m:in std_logic;
		enable_m:in std_logic;
		reset_m:in std_logic;
		
		pnpb_m:in std_logic_vector(7 downto 0); --pill number per bottle
		max_bottle_m:in std_logic_vector(7 downto 0);
		cur_bot_m:out std_logic_vector(7 downto 0); -- current bottles
		cur_pill_m:out std_logic_vector(11 downto 0); -- current pills
		work_light_m:out std_logic;-- green
		stop_light_m:out std_logic;-- red
		warn_light_m:out std_logic-- yellow
	);
end component;

signal temp_clock:std_logic;
begin
u1:divider PORT MAP(clk0 => clk, clkout => temp_clock);

u2: medicine PORT MAP(clk_m=>temp_clock, enable_m=>enable, reset_m=>reset, pnpb_m=>pnpb, max_bottle_m=>max_bottle, 
cur_bot_m=>cur_bot, cur_pill_m=>cur_pill, work_light_m=>work_light, stop_light_m=>stop_light, warn_light_m=>warn_light
);
end art;
