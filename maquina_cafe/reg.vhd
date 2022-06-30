LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reg IS
PORT (clk, carga : IN STD_LOGIC;
	  d : IN INTEGER;
	  q : OUT INTEGER);
END reg;

ARCHITECTURE estrutura OF reg IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;