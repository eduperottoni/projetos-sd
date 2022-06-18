library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity booth_multiplier_4bits is
    GENERIC (N : NATURAL := 4);
   PORT(multiplicando,multiplicador : IN std_logic_vector(N - 1 DOWNTO 0);
       result : OUT std_logic_vector(2*N - 1 DOWNTO 0));
end booth_multiplier_4bits;

architecture arch of booth_multiplier_4bits is
signal a, s, p : std_logic_vector(N*2  DOWNTO 0) := (others => '0');
signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');
signal p1, p2, p3, p4 : std_logic_vector(N*2 downto 0);
signal p1s, p2s, p3s, p4s : std_logic_vector(N*2 downto 0);

BEGIN

a(N*2 DOWNTO N+1) <= multiplicando;
s(N*2 DOWNTO N+1) <= (NOT multiplicando) + 1;
p(N DOWNTO 1) <= multiplicador;

	p1 <= p + a when (p(1 DOWNTO 0) = "01") else
        p + s when (p(1 DOWNTO 0) = "10") else
		p;
	p1s <= p1(N*2)&p1(N*2 downto 1);

	p2 <= p1s + a when (p1s(1 DOWNTO 0) = "01") else
        p1s + s when (p1s(1 DOWNTO 0) = "10") else
		p1s;
	p2s <= p2(N*2)&p2(N*2 downto 1);

	p3 <= p2s + a when (p2s(1 DOWNTO 0) = "01") else
        p2s + s when (p2s(1 DOWNTO 0) = "10") else
		p2s;
	p3s <= p3(N*2)&p3(N*2 downto 1);

	p4 <= p3s + a when (p3s(1 DOWNTO 0) = "01") else
        p3s + s when (p3s(1 DOWNTO 0) = "10") else
		p3s;
	p4s <= p4(N*2)&p4(N*2 downto 1);

result <= p4s(N*2 downto 1);

END arch;