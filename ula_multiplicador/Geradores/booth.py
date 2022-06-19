m = int(input("Digite a quantidade de bits:"))
code = ("library IEEE;\n"
"use ieee.std_logic_1164.all;\n"
"use ieee.numeric_std.all;\n"
"use ieee.std_logic_unsigned.all;\n\n"
"entity booth_multiplier is\n"
f"    GENERIC (N : NATURAL := {m});\n"
f"   PORT(multiplicando,multiplicador : IN std_logic_vector(N - 1 DOWNTO 0);\n"
f"       result : OUT std_logic_vector(2*N - 1 DOWNTO 0));\n"
"end booth_multiplier;\n\n"

"architecture arch of booth_multiplier is\n"
"signal a, s, p : std_logic_vector(N*2  DOWNTO 0) := (others => '0');\n"
"signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');\n"
)

signal = 'signal '
for i in range(1,m+1):
    if i != m:
        signal += f'p{i}, '
    else:
        signal += f'p{i} : std_logic_vector(N*2 downto 0);\n'
code += signal

signal2 = 'signal '

for i in range(1,m+1):
    if i != m:
        signal2 += f'p{i}s, '
    else:
        signal2 += f'p{i}s : std_logic_vector(N*2 downto 0);\n\nBEGIN\n\n'
code += signal2


code2 = ("a(N*2 DOWNTO N+1) <= multiplicando;\n"			
"s(N*2 DOWNTO N+1) <= (NOT multiplicando) + 1;\n"
"p(N DOWNTO 1) <= multiplicador;\n\n"

'	p1 <= p + a when (p(1 DOWNTO 0) = "01") else\n'
'        p + s when (p(1 DOWNTO 0) = "10") else\n'
"		p;\n"
"	p1s <= p1(N*2)&p1(N*2 downto 1);\n\n"
)
code += code2
code3 = ''
for i in range(2,m+1):
    codetemp = (f'	p{i} <= p{i-1}s + a when (p{i-1}s(1 DOWNTO 0) = "01") else\n'
    f'        p{i-1}s + s when (p{i-1}s(1 DOWNTO 0) = "10") else\n'
    f"		p{i-1}s;\n"
    f"	p{i}s <= p{i}(N*2)&p{i}(N*2 downto 1);\n\n")
    code3 += codetemp

code += code3

result = f'result <= p{m}s(N*2 downto 1);\n\nEND arch;'
code+=result
arquivo = open(f'booth{m}bits.vhd','w')
arquivo.write(code)
arquivo.close()
