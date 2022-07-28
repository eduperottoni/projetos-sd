Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity raiz_quadrada_bo is
	generic(N: natural := 8);
	port(entrada: signed(N-1 downto 0);	
		  clock: in std_logic;
		  c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_saida, c_carregar_vars: in std_logic;
		  pronto, erro: out std_logic := '0';
		  resultado, soma_parcial: out signed(N-1 downto 0));
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
	signal tudo_zero_2: signed(N-4 downto 0) := (others => '0');
	signal tudo_zero: signed(N-1 downto 0) := (others => '0');
	signal s_n, s_2n, s_soma: signed(N-1 downto 0) := tudo_zero;
	signal s_testa: std_logic := '0';
begin

	process(clock, c_zerado, c_pronto ,c_erro, c_setar_var, c_somar_quad, c_carregar_vars, s_n, s_2n)
	begin
		if (clock'event and clock = '1') then
			if (c_zerado = '1') then 
				pronto <= '0';
				s_n <= tudo_zero_2&"000";
				s_2n <= tudo_zero_2&"000";
				s_soma <= tudo_zero_2&"000";
			elsif (c_pronto = '1') then
				pronto <= '1';
				resultado <= s_n;
			elsif (c_erro = '1') then
				erro <= '1';
				s_n <= tudo_zero;
			elsif (c_setar_var = '1') then
				s_n <= tudo_zero_2&"001";
				s_2n <= tudo_zero_2&"010";
				s_soma <= tudo_zero_2&"100";
			elsif (c_somar_quad = '1') then
				s_soma <= s_soma + s_2n + 1;
			elsif (c_carregar_vars = '1') then
				s_n <= s_n + 1;
				s_2n <= s_2n + 2;
			end if;
		end if;
		soma_parcial <= s_soma;
	end process;

		
	--reg_n: registrador_signed port map (clock, c_carregar_vars, entrareg_n, saireg_n);
	--reg_2n: registrador_signed port map (clock, c_carregar_vars, entrareg_2n, saireg_2n);
	--reg_sum: registrador_signed port map (clock, c_somar_quad, entrareg_soma, saireg_soma);
	--pronto <= '1' when c_pronto = '1' else '0';
	--s_teste_moui <= '1' when saireg_soma <= entrada else '0';


	--entrareg_n <= tudo_zero&"001" when c_setar_var = '1';
	--entrareg_2n <= tudo_zero&"010" when c_setar_var = '1';
	--entrareg_soma <= tudo_zero&"100" when c_setar_var = '1';



end arch;