set_db init_lib_search_path ./lib

set_db library ./lib/slow.lib
set_db library ./lib/typical.lib
set_db library ./lib/fast.lib

read_hdl {./dadda.v}

elaborate dadda

read_sdc ./dadda.sdc

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

write_hdl > dadda_netlist.v
write_sdc > dadda_output.sdc

gui_show

report timing -unconstrained > dadda_timing.rpt
report timing > dadda_timing.rpt
report power > dadda_power.rpt
report area > dadda_area.rpt
report gates > dadda_gates.rpt

