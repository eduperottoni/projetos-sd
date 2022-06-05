transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {contadorAssincronoFFsJK.vho}

vcom -93 -work work {/home/fernanda/SistemasDigitais/grupo01/projetos-sd/testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /test=contadorAssincronoFFsJK_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
