library ieee;
use ieee.std_logic_1164.all;

entity semaforo is port(
	clock, reset: in std_logic;
	y, r, g: out std_logic);
end semaforo;

architecture arch of semaforo is
	component semaforo_bo is port(
		clock, red, green, yellow, countr, countg, county: in std_logic;
		y, r, g: out std_logic;
		somar, somay, somag: out integer);
	end component;
	
	component semaforo_bc is port(
		clock, reset: in std_logic;
		somar, somay, somag: in integer;
		red, green, yellow, countr, countg, county: out std_logic);
	end component;
	
	signal somayellow_s, somared_s, somagreen_s: integer;
	signal enr, eng, eny, encred, encg, ency: std_logic;
begin
	
	bc: semaforo_bc port map (clock, reset, somared_s, somayellow_s, somagreen_s, enr, eng, eny, encred, encg, ency);
	bo: semaforo_bo port map (clock, enr, eng, eny, encred, encg, ency, y, r, g, somared_s, somayellow_s, somagreen_s);
	
end arch;

