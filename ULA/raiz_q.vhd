library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
  
entity raiz_q is
	generic (N : natural:= 255); -- valor padrão
	port(clk, start: in std_logic;
		  x: in integer range 0 to N; -- std_logic_vector(N downto 0);
		  pronto: out std_logic;
		  y: out integer range 0 to N);
end raiz_q;

