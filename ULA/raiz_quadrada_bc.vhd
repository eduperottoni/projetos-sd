Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity raiz_quadrada_bc is
	generic(N: natural := 8);
	port(entrada, soma_parcial: in signed(N-1 downto 0);	
		  start, reset, clock: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: out std_logic);
end raiz_quadrada_bc;

architecture behavior of raiz_quadrada_bc is
	type State_type is (ZERADO, ERRO, CHECK_ENTRADA, SET_VAR, TESTA_MOUI, SET_N, SOMA, PRONTO);
   signal state: State_type;
	
begin
	-- Logica de proximo estado
	process(reset, clock, entrada, start)
	begin
		if reset = '1' then
			state <= ZERADO;
		else 
			if clock'event and clock = '1' then
				case state is
					when ZERADO =>
						if start = '1' then
							state <= CHECK_ENTRADA;
						else
							state <= ZERADO;
						end if;
					when CHECK_ENTRADA =>
						if entrada(N-1) = '1' then
							state <= ERRO;
						elsif entrada = 0 then
							state <= PRONTO;
						else
							state <= SET_VAR;
						end if;
					when ERRO =>
						state <= ZERADO;
					when SET_VAR =>
						state <= TESTA_MOUI;
					when TESTA_MOUI =>
						if soma_parcial >= entrada then
							state <= PRONTO;
						else
							state <= SET_N;
						end if;
					when SET_N => 
						state <= SOMA;
					when SOMA =>
						state <= TESTA_MOUI;
					when PRONTO => 
						state <= ZERADO;
				end case;
			end if;
		end if;
	end process;
	
	-- Logica de saida
	PROCESS (state)
	BEGIN
		CASE state IS
			WHEN ZERADO =>
				c_zerado <= '1';
				c_pronto <= '0';
				c_erro <= '0';
				c_setar_var <= '0';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
			WHEN ERRO =>
				c_zerado <= '0';
				c_pronto <= '0';
				c_erro <= '1';
				c_setar_var <= '0';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
			WHEN CHECK_ENTRADA =>
				c_zerado <= '0';
				c_pronto <= '0';
				c_erro <= '0';
				c_setar_var <= '0';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
			WHEN SET_VAR =>
				c_zerado <= '0';
				c_pronto <= '0';
				c_erro <= '0';
				c_setar_var <= '1';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
			WHEN SET_N => --carrega n_current e n_double
				c_zerado <= '0';
				c_pronto <= '0';
				c_erro <= '0';
				c_setar_var <= '0';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '1';
			WHEN SOMA => --soma os termos
				c_zerado <= '0';
				c_pronto <= '0';
				c_erro <= '0';
				c_setar_var <= '0';
				c_somar_quad <= '1';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
			WHEN PRONTO => --soma os termos
				c_zerado <= '0';
				c_pronto <= '1';
				c_erro <= '0';
				c_setar_var <= '0';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
			WHEN TESTA_MOUI => --TESTA
				c_zerado <= '0';
				c_pronto <= '0';
				c_erro <= '0';
				c_setar_var <= '0';
				c_somar_quad <= '0';
				c_carregar_saida <= '0';
				c_carregar_vars <= '0';
		END CASE;
	END PROCESS;
	
end behavior;