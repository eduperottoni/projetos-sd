LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2para1_integer IS
	GENERIC (N: natural := 4); --N DE BITS DAS DUAS POSSIBILIDADES
	PORT ( a, b : IN integer;
         sel: IN STD_LOGIC;
         y : OUT integer);
	END mux2para1_integer;

ARCHITECTURE comportamento OF mux2para1_integer IS
BEGIN
     WITH sel SELECT
         y <= a WHEN '0',
              b WHEN OTHERS;
END comportamento;