library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity maquina_cafe_bo is 
port (
	clk, CP, CG, moeda_25, moeda_50, moeda_1, fazer: in std_logic;
	cSoma, cCredito, zeraCredito : in std_logic;
   Lib_grande, Lib_pequeno : out std_logic);
end maquina_cafe_bo;

architecture arch of maquina_cafe_bo is

COMPONENT reg IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN integer;
		  q : OUT integer);	
END COMPONENT reg;

COMPONENT mux3para1 IS
	PORT ( moeda_25, moeda_50, moeda_1 : IN STD_LOGIC;
			y : Out integer);
END COMPONENT mux3para1;

signal saimux,entrareg, sairegcredito : integer;
signal mmoeda_25, mmoeda_50, mmoeda_1, ccreditoo : std_LOGIC;
begin

mmoeda_1<=moeda_1;
mmoeda_25<=moeDA_25;
mmoeda_50<=moeda_25;
ccreditoo<=ccredito;

rcredito: reg PORT MAP(clk, cCredito, entrareg, sairegcredito);

mux: mux3para1 PORT MAP(MmOEDA_25, mmoeda_50, mmoeda_1, saimux);

process(clk, CP, CG, moeda_25, moeda_50, moeda_1, fazer,cSoma, cCredito, zeraCredito)
begin
	 IF zeraCredito = '1' then
		entrareg <= 0;
    ELSIF CLK'EVENT AND CLK = '1' THEN
	 
        IF cSoma= '1' then
            entrareg <= (sairegcredito + saimux);
        END IF;

        If ((sairegcredito >= 4) and (CP = '1') and (fazer = '1')) THEN
            Lib_pequeno <= '1';
            entrareg <= sairegcredito - 4;
				
        elsif ((sairegcredito >= 6) and (CG = '1') and (fazer = '1')) then
            Lib_grande <= '1';
            entrareg <= sairegcredito - 6;
				
        end if;
    end if;
end process;
end arch;


