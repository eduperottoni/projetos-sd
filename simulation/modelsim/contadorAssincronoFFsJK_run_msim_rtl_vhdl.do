transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/fernanda/SistemasDigitais/grupo01/projetos-sd/fliflopjk.vhd}
vcom -93 -work work {/home/fernanda/SistemasDigitais/grupo01/projetos-sd/contadorAssincronoFFsJK.vhd}

