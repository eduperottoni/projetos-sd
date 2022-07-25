Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity raiz_quadrada_bo is
	generic(N: natural := 8);
	port(entrada: signed(N-1 downto 0);	
		  clock: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: in std_logic;
		  teste_moui, pronto, erro: out std_logic;
		  resultado: out signed(N-1 downto 0));
end raiz_quadrada_bo;

architecture arch of raiz_quadrada_bo is
	component registrador_signed IS
	GENERIC (N: natural := 8);
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN signed(N-1 DOWNTO 0);
		  q : OUT signed(N-1 DOWNTO 0));
	END component;
	
	component registrador_1bit IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC;
		  q : OUT STD_LOGIC);
	END component;
	
	signal entrareg_n, saireg_n, entrareg_2n, saireg_2n, entrareg_soma, saireg_soma: signed(N-1 downto 0);
	signal s_teste_moui: std_logic;
	signal tudo_zero: signed(N-4 downto 0);
begin
	process(c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars):
	
	erro <= '1' when c_erro = '1' else '0';
	pronto <= '1' when c_pronto = '1' else '0';
	s_teste_moui <= '1' when saireg_soma <= entrada else '0';
	teste_moui <= s_teste_moui;
	
	entrareg_n <= tudo_zero&"001" when c_setar_var = '1';
	entrareg_2n <= tudo_zero&"010" when c_setar_var = '1';
	entrareg_soma <= tudo_zero&"100" when c_setar_var = '1';
	
	reg_n: registrador_signed port map (clock, c_carregar_vars, entrareg_n, saireg_n);
	reg_2n: registrador_signed port map (clock, c_carregar_vars, entrareg_2n, saireg_2n);
	reg_sum: registrador_signed port map (clock, c_somar_quad, entrareg_soma, saireg_soma);

	resultado <= saireg_soma when s_teste_moui = '1';
end arch;
