force -freeze sim:/raiz_quadrada/clock 1 0, 0 {10000 ps} -r {20 ns};
force -freeze sim:/raiz_quadrada/entrada 00100100 20ns;
force -freeze sim:/raiz_quadrada/start 0 0ns, 1 15ns;
force -freeze sim:/raiz_quadrada/reset 1 0ns, 0 10ns;

run 800ns;