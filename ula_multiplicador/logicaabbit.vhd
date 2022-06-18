library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity logicaabbit is
    GENERIC (N : NATURAL := 4);
   PORT(A,B : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
       resultA, resultB : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
end logicaabbit;

architecture arch of logicaabbit is
signal abit, bbit, multiplicando : STD_LOGIC_VECTOR(N-1  DOWNTO 0);
signal ZEROS : STD_LOGIC_VECTOR(N-1 DOWNTO 0):= (OTHERS => '0');


BEGIN
process(a,b)
begin
	abit <= Zeros(n-1 downto 0);
	bbit <= zeros(n-1 downto 0);

	--for I in 0 to N-1 loop
		--abit <= abit + a(I);
		--bbit <= bbit + b(I);
		abit <= (zeros(n-1 downto 1)&a(3)) +(zeros(n-1 downto 1)&a(2))+(zeros(n-1 downto 1)&a(1))+(zeros(n-1 downto 1)&a(0));
		bbit <= (zeros(n-1 downto 1)&b(3))+(zeros(n-1 downto 1)&b(2))+(zeros(n-1 downto 1)&b(1))+(zeros(n-1 downto 1)&b(0));
	--end loop;
	 
   resultA <= abit;
	resultB <= bbit;
				 
end process;


END arch;
