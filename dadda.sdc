set_load -pin_load 0.5 [get_ports p]


create_clock [get_ports clk] -period 2 -waveform {0 1}
#set_clock_uncertainity 0,01 [get_clock clock]
set_input_delay -clock clk 2 [get_ports a]
set_input_delay -clock clk 2 [get_ports b]
set_input_delay -clock clk 2 [get_ports clk]
set_output_delay -clock clk 2 [get_ports p]
set_clock_latency -source 0.5 [get_ports clk]
