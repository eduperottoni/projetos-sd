library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somadorsubtrator is
generic (N: natural := 4);
port (a, b : in signed(N-1 downto 0);
      op: in std_logic;
		ovf: out std_logic;
      s : out signed(N-1 downto 0));
end somadorsubtrator;

architecture estrutura of somadorsubtrator is
	signal b_signal : signed(N-1 downto 0);
	signal s_signal: signed(N-1 downto 0);
begin
   
	-- resultado será a + b_signal (b negado ou não) + op (0 para soma e 1 para subtração)
	s_signal <= a + b when op = '0' else
					a - b;
	
	--overflow (testa os bits mais significativos)	  
	ovf <= '1' when ((a(N-1) /= b(N-1) and (b(N-1) = s_signal(N-1))) and op = '1') 
			or (((a(N-1) = b(N-1)) and (a(N-1) /= s_signal(N-1))) and op = '0') else
			 '0';
			 
	--passa o sinal do signal para a saída de valor 
	s <= s_signal;
end estrutura;