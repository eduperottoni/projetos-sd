LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TP1 IS 
	generic (N : natural := 4 );
	PORT (clk, inicio, reset : IN STD_LOGIC;
			dado : IN SIGNED(N-1 DOWNTO 0);
			s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
			flagZ, flagOvf, flagN : out std_logic);
END TP1;

ARCHITECTURE estrutura OF TP1 IS
	
	COMPONENT TP1_bc IS
	PORT (clk , inicio, reset: IN STD_LOGIC;
			enA, enB, enOp, enOut : OUT STD_LOGIC );
	END COMPONENT;
	
	COMPONENT TP1_bo IS 
	generic (N : natural := 4 );
	PORT (clk : IN STD_LOGIC;
			enA, enB, enOp, enOut : IN STD_LOGIC;
			dado : IN SIGNED(N-1 DOWNTO 0);
			s_low, s_high : OUT SIGNED (N-1 DOWNTO 0);
			flagZ, flagN, flagOvf : OUT std_logic);
	END COMPONENT;
	
	signal enableA, enableB, enableOp, enableOut: std_logic;

BEGIN

	bc0: TP1_bc port map (clk, inicio, reset, enableA, enableB, enableOp, enableOut);
	bo0: TP1_bo generic map(N) port map (clk, enableA, enableB, enableOp, enableOut, dado, s_low, s_high, flagZ, flagN, flagOvf);
	
END estrutura;