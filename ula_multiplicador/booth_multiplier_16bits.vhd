library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity booth_multiplier_16bits is
    GENERIC (N : NATURAL := 16);
   PORT(multiplicando,multiplicador : IN std_logic_vector(N - 1 DOWNTO 0);
       result : OUT std_logic_vector(2*N - 1 DOWNTO 0));
end booth_multiplier_16bits;

architecture arch of booth_multiplier_16bits is
signal a, s, p : std_logic_vector(N*2  DOWNTO 0) := (others => '0');
signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');
signal p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16 : std_logic_vector(N*2 downto 0);
signal p1s, p2s, p3s, p4s, p5s, p6s, p7s, p8s, p9s, p10s, p11s, p12s, p13s, p14s, p15s, p16s : std_logic_vector(N*2 downto 0);

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

	p5 <= p4s + a when (p4s(1 DOWNTO 0) = "01") else
        p4s + s when (p4s(1 DOWNTO 0) = "10") else
		p4s;
	p5s <= p5(N*2)&p5(N*2 downto 1);

	p6 <= p5s + a when (p5s(1 DOWNTO 0) = "01") else
        p5s + s when (p5s(1 DOWNTO 0) = "10") else
		p5s;
	p6s <= p6(N*2)&p6(N*2 downto 1);

	p7 <= p6s + a when (p6s(1 DOWNTO 0) = "01") else
        p6s + s when (p6s(1 DOWNTO 0) = "10") else
		p6s;
	p7s <= p7(N*2)&p7(N*2 downto 1);

	p8 <= p7s + a when (p7s(1 DOWNTO 0) = "01") else
        p7s + s when (p7s(1 DOWNTO 0) = "10") else
		p7s;
	p8s <= p8(N*2)&p8(N*2 downto 1);

	p9 <= p8s + a when (p8s(1 DOWNTO 0) = "01") else
        p8s + s when (p8s(1 DOWNTO 0) = "10") else
		p8s;
	p9s <= p9(N*2)&p9(N*2 downto 1);

	p10 <= p9s + a when (p9s(1 DOWNTO 0) = "01") else
        p9s + s when (p9s(1 DOWNTO 0) = "10") else
		p9s;
	p10s <= p10(N*2)&p10(N*2 downto 1);

	p11 <= p10s + a when (p10s(1 DOWNTO 0) = "01") else
        p10s + s when (p10s(1 DOWNTO 0) = "10") else
		p10s;
	p11s <= p11(N*2)&p11(N*2 downto 1);

	p12 <= p11s + a when (p11s(1 DOWNTO 0) = "01") else
        p11s + s when (p11s(1 DOWNTO 0) = "10") else
		p11s;
	p12s <= p12(N*2)&p12(N*2 downto 1);

	p13 <= p12s + a when (p12s(1 DOWNTO 0) = "01") else
        p12s + s when (p12s(1 DOWNTO 0) = "10") else
		p12s;
	p13s <= p13(N*2)&p13(N*2 downto 1);

	p14 <= p13s + a when (p13s(1 DOWNTO 0) = "01") else
        p13s + s when (p13s(1 DOWNTO 0) = "10") else
		p13s;
	p14s <= p14(N*2)&p14(N*2 downto 1);

	p15 <= p14s + a when (p14s(1 DOWNTO 0) = "01") else
        p14s + s when (p14s(1 DOWNTO 0) = "10") else
		p14s;
	p15s <= p15(N*2)&p15(N*2 downto 1);

	p16 <= p15s + a when (p15s(1 DOWNTO 0) = "01") else
        p15s + s when (p15s(1 DOWNTO 0) = "10") else
		p15s;
	p16s <= p16(N*2)&p16(N*2 downto 1);

result <= p16s(N*2 downto 1);

END arch;