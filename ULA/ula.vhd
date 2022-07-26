library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity ula is 
	generic (N : natural := 8);
	port (
		a, b: in signed(N-1 downto 0);
		op: in std_logic_vector(3 downto 0);
		calcular: in std_logic;
		clock : in std_logic;
		s_low: out signed(N-1 downto 0); 
		s_high: out signed(N-1 downto 0);
		flag_z_n_ovf_e: out std_logic_vector(3 downto 0);
		pronto: out std_logic
	);
end ula;

architecture arch of ula is
	signal mult_result_std : std_logic_vector(2*N-1 downto 0);
	signal mult_result, mult_result_final: signed(2*N-1 downto 0);
	signal soma_temp, somasub_result, s_low_temp, s_high_temp, a_temp, b_temp, result_raiz: signed(N-1 downto 0);
	signal somasub_op, somasub_ovf, mult_ovf, ovf_temp, overflow, zero, negative, error: std_logic;
	signal tudo_zero: std_logic_vector(N-1 downto 0) := (others => '0');
	signal tudo_um: std_logic_vector(N-1 downto 0) := (others => '1');
	signal um: signed(N-1 downto 0) := (0 => '1', others => '0');
	signal nulo: std_logic := '0';
	signal pronto_s: std_logic;
	
	component booth_multiplier_8bits is
		GENERIC (N : NATURAL := 8);
		PORT(multiplicando,multiplicador : IN std_logic_vector(N - 1 DOWNTO 0);
			 result : OUT std_logic_vector(2*N - 1 DOWNTO 0));
	end component;

	
	component somadorsubtrator is
	generic (N: natural := 4);
	port (a, b : in signed(N-1 downto 0);
			op: in std_logic;
			ovf: out std_logic;
			s : out signed(N-1 downto 0));
	end component;
	
	
component raiz_quadrada is
	generic(N: natural := 8);
	port(entrada: signed(N-1 downto 0);	
		  clock, start, reset: in std_logic;
		  pronto, erro: out std_logic;
		  resultado: out signed(N-1 downto 0));
end component;

	
begin
	--RESULTADO DO SOMADOR/SUBTRATOR
	somasub_op <= '0' when (op = "0001" or op = "0011") else '1';
	soma_temp <= um when  (op = "0011" or op = "0100") else b;
	somasub0 : somadorsubtrator 
		generic map(N) 
		port map (a, soma_temp, somasub_op, somasub_ovf, somasub_result);
	
	--RESULTADO DO MULTIPLICADOR
	raiz0 : raiz_quadrada
		generic map(n)
		port map (a,clock,calcular,nulo,pronto_s,error,result_raiz);
	
	booth0 : booth_multiplier_8bits 
		generic map(N)
		port map(std_logic_vector(a), std_logic_vector(b), mult_result_std);
		
	mult_result <= signed(mult_result_std);
	s_high_temp <= mult_result(2*N-1 downto N) when op = "1001" else signed(tudo_zero);
	
	--MUX DA ULA
	a_temp <= a when (a(N-1) = '0') else not(A) + 1;
	b_temp <= b when (b(N-1) = '0') else not(B) + 1;
	
	with op select
         s_low_temp <= somasub_result when "0001",
					  somasub_result when "0010",
					  somasub_result when "0011",
					  somasub_result when "0100",
					  not(a) when "0101",
					  a and b when "0110",
					  a or b when "0111",
					  a xor b when "1000",
					  mult_result(n-1 dowNTO 0) when "1001",
					  result_raiz(n-1 dowNTO 0) when "1010",
					  signed(tudo_zero) when others;
					  
	s_low <= s_low_temp;
	s_high <= s_high_temp;
				 
	mult_ovf <= '0' when ((s_high_temp = "0000") or (s_high_temp = "1111")) else
					 '1';

	
	--lógica das flags
	ovf_temp <= somasub_ovf when (op = "0001" or op = "0010" or op = "0011" or op = "0100") else
					mult_ovf when (op = "1001") else
					'0';
					
	overflow <= ovf_temp;
	
	zero <= '1' when ((s_low_temp = 0) and (s_high_temp = 0)) else '0';
		
	negative <= '1' when ((s_high_temp(N-1) = '1')) else '0';
	
	pronto <= pronto_s when op = "1010" else '1';
	
	flag_z_n_ovf_e <= zero&negative&overflow&error;

end arch;