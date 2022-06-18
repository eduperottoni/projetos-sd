LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TP1_bo IS 
generic (N : natural := 4 );
PORT (clk : IN STD_LOGIC;
      enA, enB, enOp, enOut : IN STD_LOGIC;
      dado : IN SIGNED(N-1 DOWNTO 0);
      s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
      flagZ, flagN, flagOvf : OUT std_logic);
END TP1_bo;

ARCHITECTURE estrutura OF TP1_bo IS
	
	COMPONENT registrador IS
	generic (N: natural);
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN SIGNED (N-1 DOWNTO 0);
		  q : OUT SIGNED(N-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT registrador_unsigned IS
		generic (N: natural);
		PORT (clk, carga : IN STD_LOGIC;
		  d : IN std_logic_vector(N-1 DOWNTO 0);
		  q : OUT std_logic_vector(N-1 DOWNTO 0));
	END COMPONENT;
	
	--COMPONENT ula IS
	--generic (N: natural);
	--PORT (
		--A, B: in SIGNED(N-1 downto 0);
		--SEL: in SIGNED(2 downto 0);
		--overflow: out STD_LOGIC;
		--negativo: out STD_LOGIC; 
		---zero: out STD_LOGIC;
		--S: out SIGNED(N-1 downto 0)
		--);
	--END COMPONENT;
	
	component ula is 
		generic (N : natural := 4);
		port (
			a, b: in signed(N-1 downto 0);
			op: in std_logic_vector(2 downto 0);
			s_low: out signed(N-1 downto 0); 
			s_high: out signed(N-1 downto 0);
			flag_z_n_ovf: out std_logic_vector(2 downto 0));
	end component;


	
SIGNAL s_regA, s_regB, s_regS_low, s_regS_high, s_low_ula, s_high_ula: SIGNED (N-1 DOWNTO 0);
SIGNAL s_regOp: std_logic_vector( 2 DOWNTO 0);
SIGNAL flag_z_n_ovf, s_regFlagZNOvf: std_logic_vector(2 downto 0);

BEGIN
	--registradores de entrada
	regA: registrador generic map(N) PORT MAP (clk, enA, dado, s_regA);
	regB: registrador generic map(N) PORT MAP (clk, enB, dado, s_regB);
	regOp: registrador_unsigned generic map(3) PORT MAP (clk, enOp, std_logic_vector(dado(2 downto 0)), s_regOp); 
	
	--ula (combinacional
	ula0: ULA generic map(N) PORT MAP (s_regA, s_regB, std_logic_vector(s_regOp), s_low_ula, s_high_ula, flag_z_n_ovf);
	
	--registradores de saída
	regS_low: registrador generic map(N) PORT MAP (clk, enOut, s_low_ula, s_regS_low);
	regS_high: registrador generic map(N) PORT MAP (clk, enOut, s_high_ula, s_regS_high);
	regflag_z_n_ovf: registrador_unsigned generic map(3) PORT MAP (clk, enOut, flag_z_n_ovf, s_regFlagZNOvf);
	
	--pareando saidas dos registradores para as saidads do BO
	s_low <= s_regS_low;
	s_high <= s_regS_high;
   flagZ <= s_regFlagZNOvf(2);
	flagN <= s_regFlagZNOvf(1);
	flagOvf <= s_regFlagZNOvf(0);
END estrutura;