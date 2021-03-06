#force -freeze sim:/TP1/clk 0 0ns, 1 20ns, 0 40ns -repeat 40 ns;  
#force -freeze sim:/TP1/inicio 0 0 ns, 1 20 ns;
#force -freeze sim:/TP1/reset 1 0 ns,  0 40 ns;
#force -freeze sim:/TP1/dado 0000 0 ns,  0001 40 ns, 0010 60 ns;

#run 140 ns;

force -freeze sim:/TP1/clk 0 0ns, 1 5ns -r 10ns
force -freeze sim:/TP1/reset 1 0ns, 0 12ns
force -freeze sim:/TP1/inicio 0 0ns, 1 3ns
force -freeze sim:/TP1/dado 0000 0ns, 0000 12ns, 1100 22ns, 0001 32ns, 0001 42ns, 0001 52ns, 1010 62ns, 0010 72ns, 0001 82ns, 1000 92ns;

run 120 ns;