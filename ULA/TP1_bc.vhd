LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TP1_bc IS
PORT (rst, clk,inicio: IN STD_LOGIC;
      op_code: IN STD_LOGIC_VECTOR(3 downto 0);
		pronto: IN STD_LOGIC;
      en_PC, en_A, en_B, en_op, en_out, reset_PC, calcular: OUT STD_LOGIC );
END TP1_bc;

ARCHITECTURE estrutura OF TP1_bc IS
	TYPE state_type IS (reset, carrega_OP, carrega_A, carrega_B, calcula, carrega_saida);
	SIGNAL state: state_type;
BEGIN
	PROCESS (clk, rst)
	BEGIN
		if(rst = '1') THEN
			state <= reset;
		else
			if (clk'EVENT AND clk = '1') THEN
				CASE state IS
					WHEN reset =>
						if inicio = '1' then
							state <= carrega_OP;
						else 
							state <= reset;
						end if;

					WHEN carrega_OP =>
						IF op_code = "0000" THEN
							state <= carrega_OP;
						ELSIF op_code = "1111" THEN
							state <= reset;
						ELSE
							state <= carrega_A;
						END IF;

					WHEN carrega_A =>
						IF op_code = "0011" or op_code = "0100" or op_code = "0101" or op_code = "0100" THEN
							state <= calcula;
						ELSE
							state <= carrega_B;
						END IF;

					WHEN carrega_B =>
						state <= calcula;

					WHEN calcula =>
						IF pronto = '1' THEN
							state <= carrega_saida;
						ELSE
							state <= calcula;
						END IF;

					WHEN carrega_saida =>
						state <= carrega_OP;

				END CASE;
			end if;
		END IF;
	END PROCESS;
	
	-- Logica de saida
	PROCESS (state)
	BEGIN
		CASE state IS
			WHEN reset =>
				en_PC <= '1';
				en_A <= '0';
				en_B <= '0';
				en_out <= '0';
				en_op <= '0';
				reset_PC <= '1';
				calcular <= '0';


			WHEN carrega_OP =>
				en_PC <= '1';
				en_A <= '0';
				en_B <= '0';
				en_out <= '0';
				en_op <= '1';
				reset_PC <= '0';
				calcular <= '0';


			WHEN carrega_A =>
				en_PC <= '1';
				en_A <= '1';
				en_B <= '0';
				en_out <= '0';
				en_op <= '0';
				reset_PC <= '0';
				calcular <= '0';


			WHEN carrega_B =>
				en_PC <= '1';
				en_A <= '0';
				en_B <= '1';
				en_out <= '0';
				en_op <= '0';
				reset_PC <= '0';
				calcular <= '0';


			WHEN calcula =>
				en_PC <= '0';
				en_A <= '0';
				en_B <= '0';
				en_out <= '0';
				en_op <= '0';
				reset_PC <= '0';
				calcular <= '1';

			WHEN carrega_saida => 
				en_PC <= '0';
				en_A <= '0';
				en_B <= '0';
				en_out <= '1';
				en_op <= '0';
				reset_PC <= '0';
				calcular <= '0';


		END CASE;
	END PROCESS;
END estrutura;
