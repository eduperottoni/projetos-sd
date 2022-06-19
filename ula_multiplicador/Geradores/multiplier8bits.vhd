library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity multi is
    GENERIC (N : NATURAL := 8);
   PORT(A,B : IN std_logic_vector(7 DOWNTO 0);
       result : OUT std_logic_vector(15 DOWNTO 0));
end multi;

architecture arch of multi is
signal multiplicador, multiplicando : std_logic_vector(7  DOWNTO 0);
signal abit,bbit: std_logic_vector(7 downto 0);
signal ZEROS : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
signal p0,p1,p2,p3,p4,p5,p6,p7,p8 : std_logic_vector(15 downto 0) := (others => '0');

BEGIN

abit <= (zeros(N-1 downto 1)&a(0)) + (zeros(N-1 downto 1)&a(1)) + (zeros(N-1 downto 1)&a(2)) + (zeros(N-1 downto 1)&a(3)) + (zeros(N-1 downto 1)&a(4)) + (zeros(N-1 downto 1)&a(5)) + (zeros(N-1 downto 1)&a(6)) + (zeros(N-1 downto 1)&a(7));
bbit <= (zeros(N-1 downto 1)&b(0)) + (zeros(N-1 downto 1)&b(1)) + (zeros(N-1 downto 1)&b(2)) + (zeros(N-1 downto 1)&b(3)) + (zeros(N-1 downto 1)&b(4)) + (zeros(N-1 downto 1)&b(5)) + (zeros(N-1 downto 1)&b(6)) + (zeros(N-1 downto 1)&b(7));
multiplicador <= A when abit < bbit
                    else B;
multiplicando <= B when abit < bbit
                    else A;

p1 <= p0 + (multiplicando & Zeros(6 downto 0)) when ((multiplicador(7) = '1'))
    else p0;
p2 <= p1 + (multiplicando & Zeros(5 downto 0)) when ((multiplicador(6) = '1'))
    else p1;
p3 <= p2 + (multiplicando & Zeros(4 downto 0)) when ((multiplicador(5) = '1'))
    else p2;
p4 <= p3 + (multiplicando & Zeros(3 downto 0)) when ((multiplicador(4) = '1'))
    else p3;
p5 <= p4 + (multiplicando & Zeros(2 downto 0)) when ((multiplicador(3) = '1'))
    else p4;
p6 <= p5 + (multiplicando & Zeros(1 downto 0)) when ((multiplicador(2) = '1'))
    else p5;
p7 <= p6 + (multiplicando & Zeros(0 downto 0)) when ((multiplicador(1) = '1'))
    else p6;
p8 <= p7 + multiplicando when ((multiplicador(0) = '1'))
    else p7;
result <= p8;

END arch;