library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity raiz_quadrada is
	generic(N: natural := 8);
	port(entrada: signed(N-1 downto 0);	
		  clock, start, reset: in std_logic;
		  pronto, erro, erro_state: out std_logic;
		  resultado: out signed(N-1 downto 0));
end raiz_quadrada;

architecture arch of raiz_quadrada is
	component raiz_quadrada_bo is
	generic(N: natural := 8);
	port(entrada: signed(N-1 downto 0);	
		  clock: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: in std_logic;
		  teste_moui, pronto, erro: out std_logic;
		  resultado: out signed(N-1 downto 0));
	end component;
	
	component raiz_quadrada_bc is
	generic(N: natural := 8);
	port(entrada: in signed(N-1 downto 0);	
		  start, reset, clock, teste_moui: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: out std_logic);
	end component;
	
	signal zerado_s, pronto_s, erro_s, setar_var_s, somar_s, carregar_saida_s, carregar_vars_s, teste_moui_s: std_logic;
begin
	bc: raiz_quadrada_bc port map(entrada, start, reset, clock, teste_moui_s, zerado_s, pronto_s, erro_s, setar_var_s, somar_s, carregar_saida_s, carregar_vars_s);
	bo: raiz_quadrada_bo port map(entrada, clock, zerado_s, pronto_s, erro_s, setar_var_s, somar_s, carregar_saida_s, carregar_vars_s, teste_moui_s, pronto, erro, resultado);
	erro_state <= erro_s;
end arch;
