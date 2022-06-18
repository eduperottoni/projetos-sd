library ieee;
use ieee.std_logic_1164.all;

entity multiplicador_v1 is 
	generic(N: natural := 4);

	port(inicio, reset, clk: in std_logic;
		  entA, entB: in std_logic_vector(N-1 downto 0); 
		  saidaL, saidaH: out std_logic_vector(N-1 downto 0);
		  pronto: out std_logic);
end multiplicador_v1;

architecture behavior of multiplicador_v1 is
	signal p,ini, cP, cA, cB, cM, Az, Bz, multZ: std_logic;
	signal multiplicadorM, multiplicador: std_logic;
	signal mM, mMul, mP, mB, mMultiplicador: std_logic;
	signal cSaida, cMultiplicando, cMultiplicador, cAbit, cBbit: std_logic;
	signal Abit, Bbit: std_logic_vector(N-1 downto 0);
	signal ssaida: std_LOGIC_VECTOR(N*2-1 downto 0);
	
	component bc_multiplicador is
		port (Reset, clk, inicio : IN STD_LOGIC;
	         Az, Bz, multZ: IN STD_LOGIC;
	         multiplicadorM, multiplicador: IN STD_LOGIC;
            Abit, Bbit: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
            pronto : OUT STD_LOGIC;
            ini, mM, mMul, mP, mB, mMultiplicador: OUT STD_LOGIC;
		      cSaida, cMultiplicando, cMultiplicador, cP, cA, cB, cM, cBbit, cAbit: OUT STD_LOGIC);
	end component;
	
	component bo_multiplicador is
		port (clk : IN STD_LOGIC;
            ini, pronto, cSaida, cMultiplicando, cMultiplicador, cP, cA, cB, cM, cBbit, cAbit: IN STD_LOGIC;
            entA, entB : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
            mM, mMul, mP, mB, mMultiplicador: IN STD_LOGIC;
	         Az, Bz, multZ: OUT STD_LOGIC;
	         Abit, Bbit: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
            saida: OUT STD_LOGIC_VECTOR(N*2-1 DOWNTO 0));
	end component;
	
begin
	bloco_controle: bc_multiplicador port map(Reset => reset, 
	                            clk => clk, 
	                            inicio => inicio, 
	                            Az => Az, Bz => Bz, multZ => multZ,
	                            multiplicadorM => multiplicadorM, multiplicador => multiplicador,
	                            Abit => Abit, Bbit => Bbit,
	                            pronto => p, 
	                            ini => ini, 
	                            mM => mM, mMul => mMul, mP => mP, mB => mB, mMultiplicador => mMultiplicador,
	                            cSaida => cSaida, cMultiplicando => cMultiplicando, cMultiplicador => cMultiplicador,
	                            cA => cA, cB => cB, cP => cP, cM => cM,
	                            cAbit => cAbit, cBbit=> cBbit);
	
	
	bloco_operativo: bo_multiplicador port map(clk => clk,
                                 ini => ini, pronto => p, 
                                 cSaida => cSaida, cMultiplicando => cMultiplicando, cMultiplicador => cMultiplicador,
                                 cP => cP, cA => cA, cB => cB, cM => cM, 
                                 cAbit => cAbit, cBbit => cBbit,
                                 entA => entA, entB =>entB,
                                 mM => mM, mMul => mMul, mP => mP, mB => mB, mMultiplicador => mMultiplicador,
                                 Az => Az, Bz => Bz, multZ => multZ,
                  	            Abit => Abit, Bbit => Bbit,
                                 saida => ssaida);
	
	saidaL <= ssaida(N-1 downto 0);
	saidaH <= ssaida(N*2-1 downto n);
	
end behavior;
