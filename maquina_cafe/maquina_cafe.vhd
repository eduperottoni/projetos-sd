library ieee;
use ieee.std_logic_1164.all;

entity maquina_cafe is 
port (
	clk, reset, CP, CG, moeda_25, moeda_50, moeda_1, fazer: in std_logic;
	Lib_grande, Lib_pequeno : out std_logic
);
end maquina_cafe;

architecture arch of maquina_cafe is

COMPONENT maquina_cafe_bo is port (
	clk, CP, CG, moeda_25, moeda_50, moeda_1, fazer: in std_logic;
	cSoma, cCredito, zeraCredito : in std_logic;
   Lib_grande, Lib_pequeno : out std_logic);
end component;

component maquina_cafe_bc is port (
	clk, reset, moeda_25, moeda_50, moeda_1, cafe_pq, cafe_gr, fazer : in std_logic;
	cSoma, cCredito, zeraCredito : out std_logic
);
end component;	
signal cSoma, cCredito, zeraCredito: STD_logic;
signal Lib_grandee, Lib_pequenoo : std_logic;
begin
bc : maquina_cafe_bc port map(clk, reset, moeda_25, moeda_50, moeda_1, CP, CG, fazer, cSoma, cCredito, zeraCredito);
bo : maquina_cafe_bo port map(clk, CP, CG, moeda_25, moeda_50, moeda_1, fazer, cSoma, cCredito, zeraCredito,Lib_grandee, Lib_pequenoo);

lib_grande<=lib_grandee;
lib_pequeno<=lib_pequenoo;

end arch;