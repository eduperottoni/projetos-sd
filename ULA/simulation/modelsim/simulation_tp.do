force -freeze sim:/tp1/clk 1 0, 0 {10000 ps} -r {20 ns};
force -freeze sim:/tp1/inicio 0 0ns, 1 40ns;
force -freeze sim:/tp1/reset 1 0ns, 0 30ns;

run 500ns;