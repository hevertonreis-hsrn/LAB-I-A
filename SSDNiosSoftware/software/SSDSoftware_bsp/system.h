/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'Processador' in SOPC Builder design 'SSDNiosSoftwareEmbarcado'
 * SOPC Builder design path: ../../SSDNiosSoftwareEmbarcado.sopcinfo
 *
 * Generated: Mon Jul 04 22:08:27 BRT 2022
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00050820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x13
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00040020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x13
#define ALT_CPU_NAME "Processador"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00040000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00050820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x13
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00040020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x13
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00040000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_GEN2
#define __MEDIDORDESEMPENHO


/*
 * ImagemA configuration
 *
 */

#define ALT_MODULE_CLASS_ImagemA altera_avalon_onchip_memory2
#define IMAGEMA_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 1
#define IMAGEMA_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define IMAGEMA_BASE 0x0
#define IMAGEMA_CONTENTS_INFO ""
#define IMAGEMA_DUAL_PORT 0
#define IMAGEMA_GUI_RAM_BLOCK_TYPE "AUTO"
#define IMAGEMA_INIT_CONTENTS_FILE "ImagemA"
#define IMAGEMA_INIT_MEM_CONTENT 1
#define IMAGEMA_INSTANCE_ID "DATA"
#define IMAGEMA_IRQ -1
#define IMAGEMA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IMAGEMA_NAME "/dev/ImagemA"
#define IMAGEMA_NON_DEFAULT_INIT_FILE_ENABLED 1
#define IMAGEMA_RAM_BLOCK_TYPE "AUTO"
#define IMAGEMA_READ_DURING_WRITE_MODE "DONT_CARE"
#define IMAGEMA_SINGLE_CLOCK_OP 0
#define IMAGEMA_SIZE_MULTIPLE 1
#define IMAGEMA_SIZE_VALUE 65536
#define IMAGEMA_SPAN 65536
#define IMAGEMA_TYPE "altera_avalon_onchip_memory2"
#define IMAGEMA_WRITABLE 0


/*
 * ImagemB configuration
 *
 */

#define ALT_MODULE_CLASS_ImagemB altera_avalon_onchip_memory2
#define IMAGEMB_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 1
#define IMAGEMB_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define IMAGEMB_BASE 0x30000
#define IMAGEMB_CONTENTS_INFO ""
#define IMAGEMB_DUAL_PORT 0
#define IMAGEMB_GUI_RAM_BLOCK_TYPE "AUTO"
#define IMAGEMB_INIT_CONTENTS_FILE "ImagemB"
#define IMAGEMB_INIT_MEM_CONTENT 1
#define IMAGEMB_INSTANCE_ID "DATA"
#define IMAGEMB_IRQ -1
#define IMAGEMB_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IMAGEMB_NAME "/dev/ImagemB"
#define IMAGEMB_NON_DEFAULT_INIT_FILE_ENABLED 1
#define IMAGEMB_RAM_BLOCK_TYPE "AUTO"
#define IMAGEMB_READ_DURING_WRITE_MODE "DONT_CARE"
#define IMAGEMB_SINGLE_CLOCK_OP 0
#define IMAGEMB_SIZE_MULTIPLE 1
#define IMAGEMB_SIZE_VALUE 65536
#define IMAGEMB_SPAN 65536
#define IMAGEMB_TYPE "altera_avalon_onchip_memory2"
#define IMAGEMB_WRITABLE 0


/*
 * ImagemC configuration
 *
 */

#define ALT_MODULE_CLASS_ImagemC altera_avalon_onchip_memory2
#define IMAGEMC_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define IMAGEMC_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define IMAGEMC_BASE 0x20000
#define IMAGEMC_CONTENTS_INFO ""
#define IMAGEMC_DUAL_PORT 0
#define IMAGEMC_GUI_RAM_BLOCK_TYPE "AUTO"
#define IMAGEMC_INIT_CONTENTS_FILE "SSDNiosSoftwareEmbarcado_ImagemC"
#define IMAGEMC_INIT_MEM_CONTENT 1
#define IMAGEMC_INSTANCE_ID "NONE"
#define IMAGEMC_IRQ -1
#define IMAGEMC_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IMAGEMC_NAME "/dev/ImagemC"
#define IMAGEMC_NON_DEFAULT_INIT_FILE_ENABLED 0
#define IMAGEMC_RAM_BLOCK_TYPE "AUTO"
#define IMAGEMC_READ_DURING_WRITE_MODE "DONT_CARE"
#define IMAGEMC_SINGLE_CLOCK_OP 0
#define IMAGEMC_SIZE_MULTIPLE 1
#define IMAGEMC_SIZE_VALUE 65536
#define IMAGEMC_SPAN 65536
#define IMAGEMC_TYPE "altera_avalon_onchip_memory2"
#define IMAGEMC_WRITABLE 1


/*
 * MedidorDesempenho_Escrita configuration
 *
 */

#define ALT_MODULE_CLASS_MedidorDesempenho_Escrita MedidorDesempenho
#define MEDIDORDESEMPENHO_ESCRITA_BASE 0x5102c
#define MEDIDORDESEMPENHO_ESCRITA_IRQ -1
#define MEDIDORDESEMPENHO_ESCRITA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEDIDORDESEMPENHO_ESCRITA_NAME "/dev/MedidorDesempenho_Escrita"
#define MEDIDORDESEMPENHO_ESCRITA_SPAN 4
#define MEDIDORDESEMPENHO_ESCRITA_TYPE "MedidorDesempenho"


/*
 * MedidorDesempenho_Leitura configuration
 *
 */

#define ALT_MODULE_CLASS_MedidorDesempenho_Leitura MedidorDesempenho
#define MEDIDORDESEMPENHO_LEITURA_BASE 0x51028
#define MEDIDORDESEMPENHO_LEITURA_IRQ -1
#define MEDIDORDESEMPENHO_LEITURA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEDIDORDESEMPENHO_LEITURA_NAME "/dev/MedidorDesempenho_Leitura"
#define MEDIDORDESEMPENHO_LEITURA_SPAN 4
#define MEDIDORDESEMPENHO_LEITURA_TYPE "MedidorDesempenho"


/*
 * MemoriaPrograma configuration
 *
 */

#define ALT_MODULE_CLASS_MemoriaPrograma altera_avalon_onchip_memory2
#define MEMORIAPROGRAMA_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define MEMORIAPROGRAMA_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MEMORIAPROGRAMA_BASE 0x40000
#define MEMORIAPROGRAMA_CONTENTS_INFO ""
#define MEMORIAPROGRAMA_DUAL_PORT 0
#define MEMORIAPROGRAMA_GUI_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAPROGRAMA_INIT_CONTENTS_FILE "SSDNiosSoftwareEmbarcado_MemoriaPrograma"
#define MEMORIAPROGRAMA_INIT_MEM_CONTENT 1
#define MEMORIAPROGRAMA_INSTANCE_ID "NONE"
#define MEMORIAPROGRAMA_IRQ -1
#define MEMORIAPROGRAMA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MEMORIAPROGRAMA_NAME "/dev/MemoriaPrograma"
#define MEMORIAPROGRAMA_NON_DEFAULT_INIT_FILE_ENABLED 0
#define MEMORIAPROGRAMA_RAM_BLOCK_TYPE "AUTO"
#define MEMORIAPROGRAMA_READ_DURING_WRITE_MODE "DONT_CARE"
#define MEMORIAPROGRAMA_SINGLE_CLOCK_OP 0
#define MEMORIAPROGRAMA_SIZE_MULTIPLE 1
#define MEMORIAPROGRAMA_SIZE_VALUE 65536
#define MEMORIAPROGRAMA_SPAN 65536
#define MEMORIAPROGRAMA_TYPE "altera_avalon_onchip_memory2"
#define MEMORIAPROGRAMA_WRITABLE 1


/*
 * PixelFlag configuration
 *
 */

#define ALT_MODULE_CLASS_PixelFlag altera_avalon_pio
#define PIXELFLAG_BASE 0x51000
#define PIXELFLAG_BIT_CLEARING_EDGE_REGISTER 0
#define PIXELFLAG_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIXELFLAG_CAPTURE 0
#define PIXELFLAG_DATA_WIDTH 1
#define PIXELFLAG_DO_TEST_BENCH_WIRING 0
#define PIXELFLAG_DRIVEN_SIM_VALUE 0
#define PIXELFLAG_EDGE_TYPE "NONE"
#define PIXELFLAG_FREQ 50000000
#define PIXELFLAG_HAS_IN 0
#define PIXELFLAG_HAS_OUT 1
#define PIXELFLAG_HAS_TRI 0
#define PIXELFLAG_IRQ -1
#define PIXELFLAG_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIXELFLAG_IRQ_TYPE "NONE"
#define PIXELFLAG_NAME "/dev/PixelFlag"
#define PIXELFLAG_RESET_VALUE 0
#define PIXELFLAG_SPAN 16
#define PIXELFLAG_TYPE "altera_avalon_pio"


/*
 * SaidaImagem configuration
 *
 */

#define ALT_MODULE_CLASS_SaidaImagem altera_avalon_pio
#define SAIDAIMAGEM_BASE 0x51010
#define SAIDAIMAGEM_BIT_CLEARING_EDGE_REGISTER 0
#define SAIDAIMAGEM_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SAIDAIMAGEM_CAPTURE 0
#define SAIDAIMAGEM_DATA_WIDTH 8
#define SAIDAIMAGEM_DO_TEST_BENCH_WIRING 0
#define SAIDAIMAGEM_DRIVEN_SIM_VALUE 0
#define SAIDAIMAGEM_EDGE_TYPE "NONE"
#define SAIDAIMAGEM_FREQ 50000000
#define SAIDAIMAGEM_HAS_IN 0
#define SAIDAIMAGEM_HAS_OUT 1
#define SAIDAIMAGEM_HAS_TRI 0
#define SAIDAIMAGEM_IRQ -1
#define SAIDAIMAGEM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SAIDAIMAGEM_IRQ_TYPE "NONE"
#define SAIDAIMAGEM_NAME "/dev/SaidaImagem"
#define SAIDAIMAGEM_RESET_VALUE 0
#define SAIDAIMAGEM_SPAN 16
#define SAIDAIMAGEM_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x51020
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x51020
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x51020
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "SSDNiosSoftwareEmbarcado"


/*
 * altera_hostfs configuration
 *
 */

#define ALTERA_HOSTFS_NAME "/mnt/host"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x51020
#define JTAG_UART_IRQ 8
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8

#endif /* __SYSTEM_H_ */
