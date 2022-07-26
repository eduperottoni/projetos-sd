LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TP1_bo IS 
generic (N : natural := 8 );
PORT (clk : IN STD_LOGIC;
      enPC, enA, enB, enOp, enOut, resetPC, calcular : IN STD_LOGIC;
      s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
      flagZ, flagN, flagOvf, flagError, pronto : OUT std_logic;
		opcode: out signed (3 downto 0)
		);
END TP1_bo;

ARCHITECTURE estrutura OF TP1_bo IS

	COMPONENT reg_incremental IS
		PORT (Enable, Reset, Clock: IN STD_LOGIC ;
		Q : OUT integer);
	end COMPONENT ;

	COMPONENT memROM is
      generic(
          addr_width : integer := 32; -- quantidade de linhas do Array
          addr_bits  : integer := 5; -- numero de bits do REGPC
          data_width : integer := 8 -- quantidade de bits do elemento
          );
	  port(
			addr : in integer;
			data : out signed(data_width-1 downto 0)
	  );
  end COMPONENT;
	
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
	
	component ula is 
		generic (N : natural := 8);
		port (
			a, b: in signed(N-1 downto 0);
			op: in std_logic_vector(3 downto 0);
			calcular: in std_logic;
			s_low: out signed(N-1 downto 0); 
			s_high: out signed(N-1 downto 0);
			flag_z_n_ovf_e: out std_logic_vector(3 downto 0);
			pronto : out std_logic );
	end component;

SIGNAL s_regA, s_regB, s_regS_low, s_regS_high, s_low_ula, s_high_ula: SIGNED (N-1 DOWNTO 0);
SIGNAL s_regOp: std_logic_vector( 3 DOWNTO 0);
SIGNAL flag_z_n_ovf_e, s_regFlagZNOvfe: std_logic_vector(3 downto 0);
SIGNAL sairegPC: integer;
SIGNAL dado: signed(7 downto 0);

BEGIN
	--registrador PC incremental
	regPC : reg_incremental PORT MAP (enPC, resetPC, clk, sairegPC);
	
	--memoria ROM
	mem: memROM PORT MAP(sairegPC, dado);
	
	--registradores de entrada
	regA: registrador generic map(N) PORT MAP (clk, enA, dado, s_regA);
	regB: registrador generic map(N) PORT MAP (clk, enB, dado, s_regB);
	regOp: registrador_unsigned generic map(4) PORT MAP (clk, enOp, std_logic_vector(dado(3 downto 0)), s_regOp); 
	
	--ula (combinacional
	ula0: ULA generic map(N) PORT MAP (s_regA, s_regB, std_logic_vector(s_regOp), calcular, s_low_ula, s_high_ula, flag_z_n_ovf_e, pronto);
	
	--registradores de saída
	regS_low: registrador generic map(N) PORT MAP (clk, enOut, s_low_ula, s_regS_low);
	regS_high: registrador generic map(N) PORT MAP (clk, enOut, s_high_ula, s_regS_high);
	regflag_z_n_ovf: registrador_unsigned generic map(4) PORT MAP (clk, enOut, flag_z_n_ovf_e, s_regFlagZNOvfe);
	
	--pareando saidas dos registradores para as saidads do BO
	s_low <= s_regS_low;
	s_high <= s_regS_high;
   flagZ <= s_regFlagZNOvfe(3);
	flagN <= s_regFlagZNOvfe(2);
	flagOvf <= s_regFlagZNOvfe(1);
	flagError <= s_regFlagZNOvfe(0);
	--opcode
	opcode <= dado(3 downto 0);
END estrutura;
