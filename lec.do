read library ./lib/fast.lib -library
read library ./lib/fast.lib -liberty -both
read design ./dadda.v -verilog -golden
read design ./dadda_netlist.v -verilog -revised
set system mode lec
set system mode setup
set system mode lec
add compared points -all
compare
