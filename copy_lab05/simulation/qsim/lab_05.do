onerror {exit -code 1}
vlib work
vcom -work work lab_05.vho
vcom -work work Waveform5.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.sync_9_count_vhd_vec_tst
vcd file -direction lab_05.msim.vcd
vcd add -internal sync_9_count_vhd_vec_tst/*
vcd add -internal sync_9_count_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
