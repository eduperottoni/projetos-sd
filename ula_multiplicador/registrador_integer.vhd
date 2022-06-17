LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY registrador_integer IS
GENERIC (N: natural := 4);
PORT (clk, carga : IN STD_LOGIC;
	  d : IN integer;
	  q : OUT integer);
END registrador_integer;

ARCHITECTURE estrutura OF registrador_integer IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;