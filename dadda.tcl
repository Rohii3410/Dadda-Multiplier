set_db information_level 9

set_db optimize_constant_0_flops true

set_db optimize_constant_1_flop false

set_db delete_unloaded_seqs true

set_db lib_search_path ./lib


#set_db library ./lib/slow.lib
#set_db library ./lib/typical.lib
set_db library ./lib/fast.lib

read_hdl ./dadda.v

elaborate dadda

set_db lp_multi_vt_optimization_effort high

check_design -all

read_sdc ./dadda.sdc

synthesize -to_generic -effort medium

synthesize -to_mapped -effort medium



write_hdl > dadda1_netlist.v
write_sdc > dadda1_output.sdc



report timing -unconstrained > dadda1_timing.rpt
report timing > dadda1_timing.rpt
report power > dadda1_power.rpt
report area > dadda1_area.rpt
report gates > dadda1_gates.rpt


gui_show
