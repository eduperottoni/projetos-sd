library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity teste is
    GENERIC (N : NATURAL := 4);
   PORT(A, B: IN std_logic_vector(N-1 DOWNTO 0);
		  Abit, Bbit: IN std_logic_vector(N-1 DOWNTO 0);
        result : OUT std_logic_vector(N*2-1 DOWNTO 0));
end teste;

architecture arch of teste is
signal multiplicador, multiplicando : std_logic_vector(N-1  DOWNTO 0);
signal ZEROS :std_logic_vector(N-1 DOWNTO 0) := (OTHERS => '0');
--signal abit,bbit: std_logic_vector(3 downto 0);
signal p: std_logic_vector(N*2-1 downto 0):= (OTHERS => '0');

BEGIN

multiplicador <= A when abit < bbit 
                    else B;
multiplicando <= B when abit < bbit 
                    else A;

process (multiplicador, multiplicando)
begin
    for I in 0 to n-1 loop
        if ((multiplicador(I) = '1')and(I/=0)) then p <= p + (multiplicando & Zeros(I-1 downto 0)) ;
        elsif ((multiplicador(I) = '1')and(I=0)) then p <= p + multiplicando ;
        end if;
    end loop;
end process;

result <= p;

END arch;