create_clock -period 40.000 -name clk -waveform {0.000 20.000} [get_ports -filter { NAME =~  "*clk*" && DIRECTION == "IN" }]
