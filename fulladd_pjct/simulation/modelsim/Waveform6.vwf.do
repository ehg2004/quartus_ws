vcom -work work Waveform6.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.four_bit_add_sub_b_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
