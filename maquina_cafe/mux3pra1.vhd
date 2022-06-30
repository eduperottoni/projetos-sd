LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux3para1 IS
	PORT (moeda_25, moeda_50, moeda_1: IN STD_LOGIC;
         y : out INTEGER);
	END mux3para1;

ARCHITECTURE comportamento OF mux3para1 IS
SIGNAL SELEC: STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
SELEC <= (moeda_25& moeda_50&moeda_1);

WITH SELEC SELECT y <=
	  1 WHEN "100",
	  2 WHEN "010",
	  4 WHEN "001",
	  0 WHEN OTHERS;
END comportamento;