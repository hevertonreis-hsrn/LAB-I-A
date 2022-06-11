# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/hdl_sim/ImagemA.dat ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/hdl_sim/ImagemB.dat ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/hdl_sim/SSDNiosSoftwareEmbarcado_ImagemC.dat ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/hdl_sim/SSDNiosSoftwareEmbarcado_MemoriaPrograma.dat ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/ImagemA.hex ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/ImagemB.hex ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/SSDNiosSoftwareEmbarcado_ImagemC.hex ./ 
file copy -force C:/Projetos/Quartus/SSDNiosSoftware/software/SSDSoftware/mem_init/SSDNiosSoftwareEmbarcado_MemoriaPrograma.hex ./ 
