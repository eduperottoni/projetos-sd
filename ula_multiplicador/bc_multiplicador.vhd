LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc_multiplicador IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
	    Az, Bz, multZ: IN STD_LOGIC;
		multiplicadorM, multiplicador: IN STD_LOGIC;
        Abit, Bbit: IN STD_LOGIC;
        pronto : OUT STD_LOGIC;
        ini, mM, mMul, mP, mB, mMultiplicador: OUT STD_LOGIC;
		cSaida, cMultiplicando, cMultiplicador, cP, cA, cB, cM, cBbit, cAbit: OUT STD_LOGIC);
END bc_multiplicador;


ARCHITECTURE estrutura OF bc_multiplicador IS
	TYPE state_type IS (S0, S1, S2, S3, S4, S5, S6, S7);
	SIGNAL state: state_type;
BEGIN
	-- Logica de proximo estado (e registrador de estado)
	PROCESS (clk, Reset)
	BEGIN
		if(Reset = '1') THEN
			state <= S0 ;
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE state IS
				WHEN S0 =>
					IF inicio = '1' THEN
						state <= S1;
					ELSE
						state <= S0;
					END IF;
				WHEN S1 => 
					state <= S2;
				WHEN S2 =>
					IF Az = '0' or Bz = '0' THEN
						state <= S7;
					ELSIF Abit < Bbit THEN
						state <= S3;
					ELSE
						state <= S4;
					END IF;
				WHEN S3 =>
					state <= S5;
				WHEN S4 =>
					state <= S5;
				WHEN S5 =>
					IF multiplicadorM = '1' THEN
						state <= S6;
					ELSE
						state <= S5;
					END IF;
				WHEN S6 =>
					IF multZ = '1' THEN
						state <= S7;
					ELSE
						state <= S5;
					END IF;
				WHEN S7 =>
					state <= S0;
			END CASE;
		END IF;
	END PROCESS;
	
	-- Logica de saida
	PROCESS (state)
	BEGIN
		CASE state IS
			WHEN S0 =>
				ini <= '0';
				cA <= '0';
				cB <= '0';
				cM <= '0';
				mP <= '0';
				cP <= '0';
				mMul <= '0';
				cBbit <= '0';
				cAbit <= '0';
				cMultiplicando <= '0';
				cMultiplicador <= '0';
				mMultiplicador <= '0';
				cSaida <= '0';
				pronto <= '0';
				
			WHEN S1 =>
				pronto <= '0';
				ini <= '1';
				cA <= '1';
				cB <= '1';
				cM <= '1';
				mP <= '1';
				cP <= '1';
				
			WHEN S2 =>
				cAbit <= '1';
				cBbit <= '1';
				cA <= '0';
				cB <= '0';
				cM <= '0';
				cP <= '0';
				mM <= '1';
				cM <= '1';
				
			WHEN S3 =>
				cAbit <= '0';
				cBbit <= '0';
				
				cM <= '0';
				mMul <= '1';
				cMultiplicando <= '1';
				cMultiplicador <= '1';
				
			WHEN S4 =>
				cAbit <= '0';
				cBbit <= '0';
				
				cM <= '0';
				mMul <= '0';
				cMultiplicando <= '1';
				cMultiplicador <= '1';
				
			WHEN S5 =>
				mM <= '0';
				cM <= '1';
				
			WHEN S6 =>
				cM <= '0';
				mP <= '0';
				cP <= '1';
				mMultiplicador <= '1';
				cMultiplicador <= '1';
				
			WHEN S7 =>
				mMultiplicador <= '0';
				cMultiplicador <= '0';
				cAbit <= '0';
				cBbit <= '0';
				
				cSaida <= '1';
				pronto <= '1';
		
		END CASE;
	END PROCESS;
END estrutura;
