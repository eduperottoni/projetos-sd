force -freeze sim:/TP1/clk 0 0ns, 1 20ns, 0 40ns -repeat 40 ns;  
force -freeze sim:/TP1/entA 0110 0 ns,  0010 20 ns, 0000 40 ns, 1111 60 ns, 0111 80 ns, 0111 100 ns, 0110 120 ns;
force -freeze sim:/TP1/entB 0011 0 ns,  0001 20 ns, 0010 40 ns, 1010 60 ns, 1001 80 ns, 0101 100 ns, 1010 120 ns;
force -freeze sim:/TP1/reset 1 0 ns, 0 20ns;
force -freeze sim:/TP1/inicio 1 0 ns;

run 140 ns;