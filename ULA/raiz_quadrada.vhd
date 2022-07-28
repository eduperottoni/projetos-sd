library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity raiz_quadrada is
	generic(N: natural := 4);
	port(entrada: signed(N-1 downto 0);	
		  clock, start, reset: in std_logic;
		  pronto, erro: out std_logic;
		  resultado: out signed(N-1 downto 0));
end raiz_quadrada;

architecture arch of raiz_quadrada is
	component raiz_quadrada_bo is
	generic(N: natural := 8);
	port(entrada: signed(N-1 downto 0);	
		  clock: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: in std_logic;
		  pronto, erro: out std_logic;
		  resultado, soma_parcial: out signed(N-1 downto 0));
	end component;

	component raiz_quadrada_bc is
	generic(N: natural := 8);
	port(entrada, soma_parcial: in signed(N-1 downto 0);	
		  start, reset, clock: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: out std_logic);
	end component;

	signal s_soma_parcial: signed(N-1 downto 0);
	signal zerado_s, pronto_s, erro_s, setar_var_s, somar_s, carregar_saida_s, carregar_vars_s, teste_moui_s, teste_s: std_logic;
begin
	bc: raiz_quadrada_bc generic map(N) port map(entrada, s_soma_parcial, start, reset, clock, zerado_s, pronto_s, erro_s, setar_var_s, somar_s, carregar_saida_s, carregar_vars_s);
	bo: raiz_quadrada_bo generic map(N) port map(entrada, clock, zerado_s, pronto_s, erro_s, setar_var_s, somar_s, carregar_saida_s, carregar_vars_s, pronto, erro, resultado, s_soma_parcial);
end arch;