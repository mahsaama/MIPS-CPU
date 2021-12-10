onerror {quit -f}
vlib work
vlog -work work RegisterFile.vo
vlog -work work RegisterFile.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RegisterFile_vlg_vec_tst
vcd file -direction RegisterFile.msim.vcd
vcd add -internal RegisterFile_vlg_vec_tst/*
vcd add -internal RegisterFile_vlg_vec_tst/i1/*
add wave /*
run -all
