library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity semaforo_bc is port(
	clock, reset: in std_logic;
	somar, somay, somag: in integer;
	red, green, yellow, countr, countg, county: out std_logic);
end semaforo_bc;

architecture behave of semaforo_bc is
	type state_type is (Init, R, G, Y);
	signal state: state_type; 
begin

	--logica de próximo estado
	process(clock, reset)
	begin
		if reset = '1' then
			state <= init;
		elsif (clock'event and clock = '1') then
			case state is 
				when init => 
					state <= R;
				when R =>
					if somar < 64 then
						state <= R;
					else
						state <= G;
					end if;
				when G =>
					if somag < 64 then
						state <= G;
					else
						state <= Y;
					end if;
				when Y => 
					if somay < 8 then
						state <= Y;
					else 
						state <= R;
					end if;
			end case;
		end if;
	end process;
	
	--logica de saida
	process(state)
	begin
		case state is
			when init => 
				red <= '0';
				green <= '0';
				yellow <= '0';
				countr <= '0';
				countg <= '0';
				county <= '0';
			when R => 
				red <= '1';
				green <= '0';
				yellow <= '0';
				countr <= '1';
				countg <= '0';
				county <= '0';
			when Y => 
				red <= '0';
				green <= '0';
				yellow <= '1';
				countr <= '0';
				countg <= '0';
				county <= '1';
			when G => 
				red <= '0';
				green <= '1';
				yellow <= '0';
				countr <= '0';
				countg <= '1';
				county <= '0';
		end case;
	end process;
end behave;