LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY registrador_signed IS
GENERIC (N: natural := 8);
PORT (clk, carga : IN STD_LOGIC;
	  d : IN signed(N-1 DOWNTO 0);
	  q : OUT signed(N-1 DOWNTO 0));
END registrador_signed;

ARCHITECTURE estrutura OF registrador_signed IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;