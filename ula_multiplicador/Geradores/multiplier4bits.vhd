library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity multi is
    GENERIC (N : NATURAL := 4);
   PORT(A,B : IN std_logic_vector(3 DOWNTO 0);
       result : OUT std_logic_vector(7 DOWNTO 0));
end multi;

architecture arch of multi is
signal multiplicador, multiplicando : std_logic_vector(3  DOWNTO 0);
signal abit,bbit: std_logic_vector(3 downto 0);
signal ZEROS : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
signal p0,p1,p2,p3,p4 : std_logic_vector(7 downto 0) := (others => '0');

BEGIN

abit <= (zeros(N-1 downto 1)&a(0)) + (zeros(N-1 downto 1)&a(1)) + (zeros(N-1 downto 1)&a(2)) + (zeros(N-1 downto 1)&a(3));
bbit <= (zeros(N-1 downto 1)&b(0)) + (zeros(N-1 downto 1)&b(1)) + (zeros(N-1 downto 1)&b(2)) + (zeros(N-1 downto 1)&b(3));
multiplicador <= A when abit < bbit
                    else B;
multiplicando <= B when abit < bbit
                    else A;

p1 <= p0 + (multiplicando & Zeros(2 downto 0)) when ((multiplicador(3) = '1'))
    else p0;
p2 <= p1 + (multiplicando & Zeros(1 downto 0)) when ((multiplicador(2) = '1'))
    else p1;
p3 <= p2 + (multiplicando & Zeros(0 downto 0)) when ((multiplicador(1) = '1'))
    else p2;
p4 <= p3 + multiplicando when ((multiplicador(0) = '1'))
    else p3;
result <= p4;

END arch;