transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ULA.vho}

vcom -93 -work work {/home/fernanda/SistemasDigitais/grupo01/projetos-sd/ULA/testbench_TP2.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=ULA_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  testbench_TP2

add wave *
view structure
view signals
run -all
