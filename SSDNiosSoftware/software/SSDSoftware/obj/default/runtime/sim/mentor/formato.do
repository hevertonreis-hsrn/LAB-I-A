onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider MedidorDesempenho
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/clk
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/reset_n
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/write
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/read
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/writedata
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/clk_count
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/readdata
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/medidordesempenho/data
add wave -noupdate -divider SaidaImagem
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/out_port
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/readdata
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/address
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/chipselect
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/clk
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/reset_n
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/write_n
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/writedata
add wave -noupdate -radix binary /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/clk_en
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/data_out
add wave -noupdate -radix unsigned /SSDNiosSoftwareEmbarcado_tb/ssdniossoftwareembarcado_inst/saidaimagem/read_mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 250
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
WaveRestoreZoom {97329050 ps} {97329875 ps}
