LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TP1 IS 
	generic (N : natural := 8 );
	PORT (clk, inicio, reset : IN STD_LOGIC;
			s_low, s_high : OUT std_LOGIC_VECTOR(N-1 DOWNTO 0);
			flagZ, flagOvf, flagN, flagError: out std_logic;
			opcode_teste: out std_LOGIC_VECTOR(3 downto 0);
			pronto_sinal, pronto_raiz: out std_logic);
END TP1;

ARCHITECTURE estrutura OF TP1 IS

	COMPONENT TP1_bc IS
	PORT (rst, clk,inicio: IN STD_LOGIC;
			op_code: IN STD_LOGIC_VECTOR(3 downto 0);
			pronto, pronto_raiz: IN STD_LOGIC;
			en_PC, en_A, en_B, en_op, en_out, reset_PC,calcular: OUT STD_LOGIC );
	END COMPONENT;
	
	COMPONENT TP1_bo IS 
	generic (N : natural := 8 );
	PORT (clk : IN STD_LOGIC;
			enPC, enA, enB, enOp, enOut, resetPC, calcular : IN STD_LOGIC;
			s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
			flagZ, flagN, flagOvf,flagError, pronto, pronto_raiz : OUT std_logic;
			opcode: out std_logic_vector (3 downto 0)
			);
	END COMPONENT;

	signal enablePC, enableA, enableB, enableOp, enableOut, rstPc, s_pronto, s_pronto_raiz, s_calcular: std_logic;
	signal opcode_sinal, saia_s, saib_s: std_logic_vector(3 downto 0);
	signal s_low_s, s_high_s: signed(N-1 downto 0);

BEGIN

	bc0: TP1_bc port map (reset, clk,inicio, opcode_sinal, s_pronto, s_pronto_raiz, enablePC, enableA, enableB, enableOp, enableOut, rstPC,s_calcular);
	bo0: TP1_bo generic map(N) port map (clk, enablePC, enableA, enableB, enableOp, enableOut, rstPc,s_calcular, s_low_s, s_high_s, flagZ, flagN, flagOvf,flagError, s_pronto, s_pronto_raiz, opcode_sinal);
	
	s_low <= std_LOGIC_VECTOR(s_low_s);
	S_high <= std_LOGIC_VECTOR(s_high_s);
END estrutura;
