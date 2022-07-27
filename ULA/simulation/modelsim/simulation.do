force -freeze sim:/raiz_quadrada/clock 1 0, 0 {10000 ps} -r 20ns;
force -freeze sim:/raiz_quadrada/entrada 00100100 0ns;
force -freeze sim:/raiz_quadrada/start 0 0ns, 1 30ns;
force -freeze sim:/raiz_quadrada/reset 1 0ns, 0 40ns;
run 500ns;