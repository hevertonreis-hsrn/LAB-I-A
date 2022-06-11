onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Medidor
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/clk
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/reset_n
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/write
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/read
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/writedata
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/clk_count
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/readdata
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
