LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TP1 IS 
	generic (N : natural := 8 );
	PORT (clk, inicio, reset : IN STD_LOGIC;
			dado : IN SIGNED(N-1 DOWNTO 0);
			s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
			flagZ, flagOvf, flagN, flagError : out std_logic);
END TP1;

ARCHITECTURE estrutura OF TP1 IS
	
	COMPONENT TP1_bc IS
	PORT (rst, clk,inicio: IN STD_LOGIC;
			op_code: IN STD_LOGIC_VECTOR(3 downto 0);
			pronto: IN STD_LOGIC;
			en_PC, en_A, en_B, en_op, en_out, reset_PC,calcular: OUT STD_LOGIC );
	END COMPONENT;
	
	COMPONENT TP1_bo IS 
	generic (N : natural := 8 );
	PORT (clk : IN STD_LOGIC;
			enPC, enA, enB, enOp, enOut, resetPC : IN STD_LOGIC;
			s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
			flagZ, flagN, flagOvf,flagError, pronto : OUT std_logic;
			opcode: out std_logic_vector (3 downto 0)
			);
	END COMPONENT;
	
	signal enablePC, enableA, enableB, enableOp, enableOut, resetPc,pronto,calcular: std_logic;
	signal opcode_sinal: std_logic_vector(3 downto 0);

BEGIN

	bc0: TP1_bc port map (reset, clk,inicio, opcode_sinal, pronto, enablePC, enableA, enableB, enableOp, enableOut, resetPC,calcular);
	bo0: TP1_bo generic map(N) port map (clk, enablePC, enableA, enableB, enableOp, enableOut, resetPc, s_low, s_high, flagZ, flagN, flagOvf,flagError,pronto, opcode_sinal);
	
END estrutura;
