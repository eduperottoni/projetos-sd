LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.ALL;


ENTITY bo_multiplicador IS
GENERIC(N: natural := 4);
PORT (clk : IN STD_LOGIC;
      ini, pronto, cSaida, cMultiplicando, cMultiplicador, cP, cA, cB, cM, cBbit, cAbit: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      mM, mMul, mP, mB, mMultiplicador: IN STD_LOGIC;
	  Az, Bz, multZ: OUT STD_LOGIC;
	  Abit, Bbit: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      saida: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END bo_multiplicador;

ARCHITECTURE estrutura OF bo_multiplicador IS
	
	COMPONENT registrador IS
		GENERIC (N: natural := 4);
		PORT (clk, carga : IN STD_LOGIC;
			  d : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			  q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;

	COMPONENT mux2para1 IS
		GENERIC (N: natural := 4);
		PORT ( a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				sel: IN STD_LOGIC;
				y : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT ;
	
	COMPONENT igualazero IS
		GENERIC (N: natural := 4);
		PORT (a : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		igual : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT logica_a_b_bit IS
		GENERIC (N: natural := 4);
		PORT (A,B : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
       result : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
		
	SIGNAL saimux1, sairegA, sairegB, sairegmultiplicando, sairegmultiplicador, saireg: STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	SIGNAL saimuxmultiplicando, saimux1multiplicador, saimux2multiplicador: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
	SIGNAL somaP, saimuxP, sairegP, sairegSaida, multiplicando: STD_LOGIC_VECTOR(N*2 DOWNTO 0);
	SIGNAL saimuxM, sairegM, subM, subNM: STD_LOGIC_VECTOR(N DOWNTO 0);

	SIGNAL aux: STD_LOGIC_VECTOR(N DOWNTO 0);
	SIGNAL m: integer;
	signal stdN : std_logic_vector(N downto 0);

BEGIN
    -- setando aux como '0' * N
    aux <= "0";
    
    -- registrador A
    regA: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cA,
		        d => entA,
		        q => sairegA);

    -- registrador B
    regB: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cB,
		        d => entB,
		        q => sairegB);

    -- testa 0 A
    geraAz: igualazero
		GENERIC MAP(N)
		PORT MAP(a => sairegA, 
		        igual => Az);

    -- testa 0 B
    geraBz: igualazero
		GENERIC MAP(N)
		PORT MAP(a => sairegB, 
		        igual => Bz);

    -- mux multiplicando
    muxmultiplicando: mux2para1 GENERIC MAP(N)
		PORT MAP(a => sairegA,
		        b => sairegB, 
		        sel => mMul, 
		        y => saimuxmultiplicando);
		
    -- mux1 multiplicador
    mux1multiplicador: mux2para1 GENERIC MAP(N)
		PORT MAP(a => sairegB,
		        b => sairegA, 
		        sel => mMul, 
		        y => saimux1multiplicador);

    -- registrador multiplicando
    regMultiplicando: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cMultiplicando,
		        d => saimuxmultiplicando,
		        q => sairegmultiplicando);
    
    -- mux2 multiplicador
    mux2multiplicador: mux2para1 GENERIC MAP(N)
		PORT MAP(a => saimux1multiplicador,
		        b => sairegmultiplicador, 
		        sel => mMultiplicador, 
		        y => saimux2multiplicador);
    
    -- registrador multiplicador
    regMultiplicador: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cMultiplicador,
		        d => saimux2multiplicador,
		        q => sairegmultiplicador);
    
    -- testa 0 do multiplicador
    geramultZ: igualazero
		GENERIC MAP(N)
		PORT MAP(a => sairegmultiplicador, 
		        igual => multZ);

    -- FIXME: não tenho certeza se isso funciona como o esperado
    -- concatenação do multiplicando
	 multiplicando(N*2 DOWNTO 0) <= "0";
	 m <= conv_integer(unsigned(sairegM));
    multiplicando <= sairegmultiplicando & aux(m DOWNTO 0);

    
    -- mux P
    muxP: mux2para1 GENERIC MAP(N)
		PORT MAP(a => somaP,
		        b => aux&aux, 
		        sel => mP, 
		        y => saimuxP);

    -- registador P
    regP: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cP,
		        d => saimuxP,
		        q => sairegP);

    -- FIXME: não sei se está funcionando certinho
    -- soma de P c/ multiplicando
    somaP <= multiplicando + sairegP;
    

    -- registrador de saída
    regSaida: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cSaida,
		        d => sairegP,
		        q => sairegSaida);
    
    
    -- LOGICA M
    -- mux M
	 stdN <= conv_std_logic_vector(N, stdN'length);
    muxM: mux2para1 GENERIC MAP(N)
		PORT MAP(a => subM,
		        b => stdN,
		        sel => mM, 
		        y => saimuxM);

    -- registrador do M
    regm: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cM,
		        d => saimuxM,
		        q => sairegM);

    -- subtração do M
    subM <= sairegM - '1';
    
    
    -- TODO:LOGICA Abit
    geraABbit: logica_a_b_bit GENERIC MAP(N)
        PORT MAP(A => entA,
                 B => entB,
                 );
    
	
	saida <= sairegSaida;

END estrutura;
