library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity semaforo_bo is port(
	clock, red, green, yellow, countr, countg, county: in std_logic;
	y, r, g: out std_logic;
	somar, somay, somag: out integer);
end semaforo_bo;

architecture behave of semaforo_bo is
	component reg_cont_7bits IS PORT(
		Enable, Reset, Clock: IN STD_LOGIC ;
		Q : out integer);
	end component ;
	
begin
	
	regr : reg_cont_7bits port map (red, not(red), clock, somar);
	regy : reg_cont_7bits port map (yellow, not(yellow), clock, somay);
	regg : reg_cont_7bits port map (green, not(green), clock, somag);
	
	y <= yellow;
	r <= red;
	g <= green;
	
end behave;
	