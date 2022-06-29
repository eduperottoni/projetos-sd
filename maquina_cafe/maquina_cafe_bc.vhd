library ieee;
use ieee.std_logic_1164.all;

entity maquina_cafe is 
port (
	clk, reset, moeda_25, moeda_50, moeda_1, cafe_pq, cafe_gr, fazer : in std_logic;
	cSoma, cCredito, zeraCredito : out std_logic
);
end maquina_cafe;

architecture arch of maquina_cafe is
	type type_state is (rst, input, acum, slct, check, lib_gr, lib_pq);
	signal state: type_state; 
	signal credito : integer;
begin
	
	-- logica de proximo estado
	process(clk, reset)
	begin
		if reset = '1' then
			state <= rst;
		else
			if (clk'event and clk = '1') then
				case state is
					when input => 
						if moeda_25 = '1' or moeda_50 = '1' or moeda_1 = '1' then
							state <= acum;
						elsif cafe_pq = '1' or cafe_gr = '1' then
							state <= slct;
						elsif fazer = '1' then
							state <= check;
						end if;
					when acum => 
						state <= input;
					when check => 
						if credito >= 10 and cafe_gr = '1' then
							state <= lib_gr;
						elsif credito >= 4 and cafe_pq = '1' then
							state <= lib_pq;
						end if;
					when slct =>
						state <= input;
					when lib_pq =>
						state <= input;
					when lib_gr =>
						state <= input;
					when others =>
						state <= state;
				end case;
			end if;
		end if;
	end process;
	
	--logica de saida
	process (state)
	begin
		case state is
			when rst =>
				cSoma <= '0';
				cCredito <= '0'; 
				zeraCredito <= '1';
			when input =>
				cSoma <= '0';
				cCredito <= '0'; 
				zeraCredito <= '0';
			when slct => 
				cSoma <= '0';
				cCredito <= '0'; 
				zeraCredito <= '0';
			when check =>
				cSoma <= '0';
				cCredito <= '0'; 
				zeraCredito <= '0';
			when acum =>
				cSoma <= '1';
				cCredito <= '0'; 
				zeraCredito <= '0';
			when lib_gr =>
				cSoma <= '0';
				cCredito <= '1'; 
				zeraCredito <= '0';
			when lib_pq =>
				cSoma <= '0';
				cCredito <= '1'; 
				zeraCredito <= '0';
		end case;
	end process;
end arch;