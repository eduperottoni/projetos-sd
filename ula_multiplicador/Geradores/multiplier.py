m = int(input("Digite a quantidade de bits:"))
code = ("library IEEE;\n"
"use ieee.std_logic_1164.all;\n"
"use ieee.numeric_std.all;\n"
"use ieee.std_logic_unsigned.all;\n\n"
"entity multi is\n"
f"    GENERIC (N : NATURAL := {m});\n"
f"   PORT(A,B : IN std_logic_vector({m-1} DOWNTO 0);\n"
f"       result : OUT std_logic_vector({2*m-1} DOWNTO 0));\n"
"end multi;\n\n"

"architecture arch of multi is\n"
f"signal multiplicador, multiplicando : std_logic_vector({m-1}  DOWNTO 0);\n"
f"signal abit,bbit: std_logic_vector({m-1} downto 0);\n"
f"signal ZEROS : std_logic_vector({m-1} DOWNTO 0) := (OTHERS => '0');\n"
)

signal = 'signal '
for i in range(0,m+1):
    if i != m:
        signal += f'p{i},'
    else:
        signal += f"p{i} : std_logic_vector({2*m-1} downto 0) := (others => '0');\n\nBEGIN\n\n"
code += signal

abit = 'abit <= '
for i in range(0,m):
    if i != m-1:
        abit += f"(zeros(N-1 downto 1)&a({i})) + "
    else:
        abit += f"(zeros(N-1 downto 1)&a({i}));\n"
code += abit

bbit = 'bbit <= '
for i in range(0,m):
    if i != m-1:
        bbit += f"(zeros(N-1 downto 1)&b({i})) + "
    else:
        bbit += f"(zeros(N-1 downto 1)&b({i}));\n"
code += bbit

seleciona = ("multiplicador <= A when abit < bbit\n"
"                    else B;\n"
"multiplicando <= B when abit < bbit\n"
"                    else A;\n\n")
code += seleciona

logica = ''

for i in range(0,m):
    if i+1 != m:
         logica += f"p{i+1} <= p{i} + (multiplicando & Zeros({m-i-2} downto 0)) when ((multiplicador({m-1-i}) = '1'))\n    else p{i};\n"
    else:
        logica += f"p{i+1} <= p{i} + multiplicando when ((multiplicador({m-1-i}) = '1'))\n    else p{i};\n"
code += logica

result = f'result <= p{m};\n\nEND arch;'
code+=result
arquivo = open(f'multiplier{m}bits.vhd','w')
arquivo.write(code)
arquivo.close()
