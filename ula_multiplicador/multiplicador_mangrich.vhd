library ieee;
use ieee.std_logic_1164.all;

entity multiplicador_v1 is 
	generic(
		N: natural := 4
	);

	port(
		inicio, reset, ck: in std_logic;
		entA, entB: in std_logic_vector(N-1 downto 0); 
		saida: out std_logic_vector(N-1 downto 0);
		pronto: out std_logic);
end multiplicador_v1;

architecture behavior of multiplicador_v1 is
	signal ini, CP, CA, dec, Az, Bz: std_logic;
	
	component bc is
		port (Reset, clk, inicio : IN STD_LOGIC;
				Az, Bz : IN STD_LOGIC;
				pronto : OUT STD_LOGIC;
				ini, CA, dec, CP: OUT STD_LOGIC );
	end component;
	
	component bo is
		port (clk : IN STD_LOGIC;
				ini, CP, CA, dec : IN STD_LOGIC;
				entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				Az, Bz : OUT STD_LOGIC;
				saida, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	end component;
	
begin
	bloco_controle: bc port map(reset, ck, inicio, Az, Bz, pronto, ini, CA, dec, CP);
	bloco_operativo: bo port map(ck, ini, CP, CA, dec, entA, entB, Az, Bz, saida );
end behavior;