onerror {exit -code 1}
vlib work
vcom -work work lab_02_02.vho
vcom -work work Waveform14.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.lab_02_02_vhd_vec_tst
vcd file -direction lab_02_02.msim.vcd
vcd add -internal lab_02_02_vhd_vec_tst/*
vcd add -internal lab_02_02_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
