onerror {exit -code 1}
vlib work
vcom -work work lab_02_01.vho
vcom -work work Waveform9.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.twoDigcountDecComp_vhd_vec_tst
vcd file -direction lab_02_01.msim.vcd
vcd add -internal twoDigcountDecComp_vhd_vec_tst/*
vcd add -internal twoDigcountDecComp_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
