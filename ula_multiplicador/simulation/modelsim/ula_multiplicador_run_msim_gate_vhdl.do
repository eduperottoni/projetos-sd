transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ula_multiplicador.vho}

vcom -93 -work work {C:/Users/edupe/OneDrive/?rea de Trabalho/TP1_FINAL/projetos-sd/ula_multiplicador/testbench_TP1.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=ula_multiplicador_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  testbench_TP1

add wave *
view structure
view signals
run -all
