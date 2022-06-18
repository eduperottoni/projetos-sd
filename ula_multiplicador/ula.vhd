library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity ula is 
	generic (N : natural := 4);
	port (
		a, b: in signed(N-1 downto 0);
		op: in std_logic_vector(2 downto 0);
		s_low: out signed(N-1 downto 0); 
		s_high: out signed(N-1 downto 0);
		flag_z_n_ovf: out std_logic_vector(2 downto 0)
	);
end ula;

architecture arch of ula is
	signal mult_result_std : std_logic_vector(2*N-1 downto 0);
	signal mult_result, mult_result_final: signed(2*N-1 downto 0);
	signal somasub_result, s_low_temp, s_high_temp, a_temp, b_temp: signed(N-1 downto 0);
	signal somasub_op, somasub_ovf, mult_ovf, ovf_temp, overflow, zero, negative: std_logic;
	signal tudo_zero: std_logic_vector(N-1 downto 0) := (others => '0');
	signal tudo_um: std_logic_vector(N-1 downto 0) := (others => '1');
	
	component booth_multiplier_4bits is
		GENERIC (N : NATURAL := 4);
		PORT(multiplicando,multiplicador : IN std_logic_vector(N - 1 DOWNTO 0);
			 result : OUT std_logic_vector(2*N - 1 DOWNTO 0));
	end component;
	
	component booth_multiplier_8bits is
		GENERIC (N : NATURAL := 8);
		PORT(multiplicando,multiplicador : IN std_logic_vector(N - 1 DOWNTO 0);
			 result : OUT std_logic_vector(2*N - 1 DOWNTO 0));
	end component;
	
	component booth_multiplier_16bits is
		GENERIC (N : NATURAL := 16);
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
	
	

	
begin
	--RESULTADO DO SOMADOR/SUBTRATOR
	somasub_op <= '0' when op = "000" else '1';

	somasub0 : somadorsubtrator 
		generic map(N) 
		port map (a, b, somasub_op, somasub_ovf, somasub_result);
	
	--RESULTADO DO MULTIPLICADOR
	
	booth0 : booth_multiplier_4bits 
		generic map(N)
		port map(std_logic_vector(a), std_logic_vector(b), mult_result_std);
		
	mult_result <= signed(mult_result_std);
	s_high_temp <= mult_result(2*N-1 downto N) when op = "100" else signed(tudo_zero);
	
	--MUX DA ULA
	a_temp <= a when (a(N-1) = '0') else not(A) + 1;
	b_temp <= b when (b(N-1) = '0') else not(B) + 1;
	
	with op select
         s_low_temp <= somasub_result when "000",
					  somasub_result when "001",
					  a or b when "010",
					  a and b when "011",
					  mult_result(N-1 downto 0) when "100",
					  signed(tudo_zero) when others;
					  
	s_low <= s_low_temp;
	s_high <= s_high_temp;
				 
	mult_ovf <= '0' when ((s_high_temp = "0000") or (s_high_temp = "1111")) else
					 '1';

	
	--lógica das flags
	ovf_temp <= somasub_ovf when (op = "000" or op = "001") else
					mult_ovf when (op = "100") else
					'0';
					
	overflow <= ovf_temp;
	
	zero <= '1' when ((s_low_temp = 0) and (s_high_temp = 0)) else '0';
		
	negative <= '1' when ((s_high_temp(N-1) = '1')) else '0';
	
	flag_z_n_ovf <= zero&negative&overflow;

end arch;