LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo_multiplicador IS
GENERIC(N: natural := 4);
PORT (clk : IN STD_LOGIC;
      ini, pronto, cSaida, cMultiplicando, cMultiplicador, cP, cA, cB, cM, cBbit, cAbit: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      Az, Bz, multZ: OUT STD_LOGIC;
      mM, mMul, mP, mB, mMultiplicador: OUT STD_LOGIC;
      saida: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END bo_multiplicador;

ARCHITECTURE estrutura OF bo_multiplicador IS
	
	COMPONENT registrador_r IS
		GENERIC(N: natural := 4);
		PORT (clk, reset, carga : IN STD_LOGIC;
			  d : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			  q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
	
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

	COMPONENT somadorsubtrator IS
		GENERIC (N: natural := 4);
		PORT (a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				op: IN STD_LOGIC;
				s : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT igualazero IS
		GENERIC (N: natural := 4);
		PORT (a : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		igual : OUT STD_LOGIC);
	END COMPONENT;
		
	SIGNAL saimux1, sairegP, sairegA, sairegB, regmultiplicando, regmultiplicador: STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	SIGNAL saimuxmultiplicando, saimux1multiplicador, saimux2multiplicador: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
	SIGNAL somaP, saimuxP, regP, regSaida, multiplicando: STD_LOGIC_VECTOR(2N DOWNTO 0);
	SIGNAL saimuxM, regM, subM: STD_LOGIC_VECTOR(log(N) DOWNTO 0);

    SIGNAL aux: STD_LOGIC_VECTOR(N DOWNTO 0);

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
		        q => regmultiplicando);
    
    -- mux2 multiplicador
    mux2multiplicador: mux2para1 GENERIC MAP(N)
		PORT MAP(a => saimux1multiplicador,
		        b => regmultiplicador, 
		        sel => mMultiplicador, 
		        y => saimux2multiplicador);
    
    -- registrador multiplicador
    regMultiplicador: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cMultiplicador,
		        d => saimux2multiplicador,
		        q => regmultiplicador);
    
    -- testa 0 do multiplicador
    geramultZ: igualazero
		GENERIC MAP(N)
		PORT MAP(a => regmultiplicador, 
		        igual => multZ);

    -- FIXME: não tenho certeza se isso funciona como o esperado
    -- concatenação do multiplicando
    multiplicando <= aux(N-M downto 0) & regmultiplicando & aux(M DOWNTO 0);

    
    -- mux P
    muxP: mux2para1 GENERIC MAP(N)
		PORT MAP(a => soma,
		        b => '0'*(2*N), 
		        sel => mP, 
		        y => saimuxP);

    -- registador P
    regP: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cP,
		        d => saimuxP,
		        q => regP);

    -- FIXME: não sei se está funcionando certinho
    -- soma de P c/ multiplicando
    somaP <= multiplicando + regP;
    

    -- registrador de saída
    regSaida: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cSaida,
		        d => regP,
		        q => regSaida);
    
    
    -- LOGICA M
    -- mux M
    muxM: mux2para1 GENERIC MAP(N)
		PORT MAP(a => subM,
		        b => N, 
		        sel => mM, 
		        y => saimuxM);

    -- registrador do M
    regm: registrador GENERIC MAP(N)
		PORT MAP(clk => clk,
		        carga => cM,
		        d => saimuxM,
		        q => regM);

    -- subtração do M
    subM <= regM - '1';
    
    
    -- TODO:LOGICA Abit
    
    
	
	saida <= regSaida;

END estrutura;
