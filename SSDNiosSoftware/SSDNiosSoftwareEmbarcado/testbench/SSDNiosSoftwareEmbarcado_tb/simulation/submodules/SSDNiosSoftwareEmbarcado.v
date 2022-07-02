// SSDNiosSoftwareEmbarcado.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module SSDNiosSoftwareEmbarcado (
		input  wire        clk_clk,                                //                             clk.clk
		output wire [31:0] medidordesempenho_conduit_readdata,     //       medidordesempenho_conduit.readdata
		input  wire        reset_reset_n,                          //                           reset.reset_n
		output wire [7:0]  saidaimagem_external_connection_export  // saidaimagem_external_connection.export
	);

	wire  [31:0] processador_data_master_readdata;                          // mm_interconnect_0:Processador_data_master_readdata -> Processador:d_readdata
	wire         processador_data_master_waitrequest;                       // mm_interconnect_0:Processador_data_master_waitrequest -> Processador:d_waitrequest
	wire         processador_data_master_debugaccess;                       // Processador:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:Processador_data_master_debugaccess
	wire  [18:0] processador_data_master_address;                           // Processador:d_address -> mm_interconnect_0:Processador_data_master_address
	wire   [3:0] processador_data_master_byteenable;                        // Processador:d_byteenable -> mm_interconnect_0:Processador_data_master_byteenable
	wire         processador_data_master_read;                              // Processador:d_read -> mm_interconnect_0:Processador_data_master_read
	wire         processador_data_master_write;                             // Processador:d_write -> mm_interconnect_0:Processador_data_master_write
	wire  [31:0] processador_data_master_writedata;                         // Processador:d_writedata -> mm_interconnect_0:Processador_data_master_writedata
	wire  [31:0] processador_instruction_master_readdata;                   // mm_interconnect_0:Processador_instruction_master_readdata -> Processador:i_readdata
	wire         processador_instruction_master_waitrequest;                // mm_interconnect_0:Processador_instruction_master_waitrequest -> Processador:i_waitrequest
	wire  [18:0] processador_instruction_master_address;                    // Processador:i_address -> mm_interconnect_0:Processador_instruction_master_address
	wire         processador_instruction_master_read;                       // Processador:i_read -> mm_interconnect_0:Processador_instruction_master_read
	wire         mm_interconnect_0_medidordesempenho_escrita_write;         // mm_interconnect_0:MedidorDesempenho_Escrita_write -> MedidorDesempenho:write
	wire  [31:0] mm_interconnect_0_medidordesempenho_escrita_writedata;     // mm_interconnect_0:MedidorDesempenho_Escrita_writedata -> MedidorDesempenho:writedata
	wire  [31:0] mm_interconnect_0_medidordesempenho_leitura_readdata;      // MedidorDesempenho:readdata -> mm_interconnect_0:MedidorDesempenho_Leitura_readdata
	wire         mm_interconnect_0_medidordesempenho_leitura_read;          // mm_interconnect_0:MedidorDesempenho_Leitura_read -> MedidorDesempenho:read
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_avalon_jtag_slave_chipselect -> jtag_uart:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata;    // jtag_uart:av_readdata -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest; // jtag_uart:av_waitrequest -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_avalon_jtag_slave_address -> jtag_uart:av_address
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_avalon_jtag_slave_read -> jtag_uart:av_read_n
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_avalon_jtag_slave_write -> jtag_uart:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_avalon_jtag_slave_writedata -> jtag_uart:av_writedata
	wire  [31:0] mm_interconnect_0_processador_debug_mem_slave_readdata;    // Processador:debug_mem_slave_readdata -> mm_interconnect_0:Processador_debug_mem_slave_readdata
	wire         mm_interconnect_0_processador_debug_mem_slave_waitrequest; // Processador:debug_mem_slave_waitrequest -> mm_interconnect_0:Processador_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_processador_debug_mem_slave_debugaccess; // mm_interconnect_0:Processador_debug_mem_slave_debugaccess -> Processador:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_processador_debug_mem_slave_address;     // mm_interconnect_0:Processador_debug_mem_slave_address -> Processador:debug_mem_slave_address
	wire         mm_interconnect_0_processador_debug_mem_slave_read;        // mm_interconnect_0:Processador_debug_mem_slave_read -> Processador:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_processador_debug_mem_slave_byteenable;  // mm_interconnect_0:Processador_debug_mem_slave_byteenable -> Processador:debug_mem_slave_byteenable
	wire         mm_interconnect_0_processador_debug_mem_slave_write;       // mm_interconnect_0:Processador_debug_mem_slave_write -> Processador:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_processador_debug_mem_slave_writedata;   // mm_interconnect_0:Processador_debug_mem_slave_writedata -> Processador:debug_mem_slave_writedata
	wire         mm_interconnect_0_memoriaprograma_s1_chipselect;           // mm_interconnect_0:MemoriaPrograma_s1_chipselect -> MemoriaPrograma:chipselect
	wire   [7:0] mm_interconnect_0_memoriaprograma_s1_readdata;             // MemoriaPrograma:readdata -> mm_interconnect_0:MemoriaPrograma_s1_readdata
	wire  [15:0] mm_interconnect_0_memoriaprograma_s1_address;              // mm_interconnect_0:MemoriaPrograma_s1_address -> MemoriaPrograma:address
	wire         mm_interconnect_0_memoriaprograma_s1_write;                // mm_interconnect_0:MemoriaPrograma_s1_write -> MemoriaPrograma:write
	wire   [7:0] mm_interconnect_0_memoriaprograma_s1_writedata;            // mm_interconnect_0:MemoriaPrograma_s1_writedata -> MemoriaPrograma:writedata
	wire         mm_interconnect_0_memoriaprograma_s1_clken;                // mm_interconnect_0:MemoriaPrograma_s1_clken -> MemoriaPrograma:clken
	wire         mm_interconnect_0_imagema_s1_chipselect;                   // mm_interconnect_0:ImagemA_s1_chipselect -> ImagemA:chipselect
	wire   [7:0] mm_interconnect_0_imagema_s1_readdata;                     // ImagemA:readdata -> mm_interconnect_0:ImagemA_s1_readdata
	wire         mm_interconnect_0_imagema_s1_debugaccess;                  // mm_interconnect_0:ImagemA_s1_debugaccess -> ImagemA:debugaccess
	wire  [15:0] mm_interconnect_0_imagema_s1_address;                      // mm_interconnect_0:ImagemA_s1_address -> ImagemA:address
	wire         mm_interconnect_0_imagema_s1_write;                        // mm_interconnect_0:ImagemA_s1_write -> ImagemA:write
	wire   [7:0] mm_interconnect_0_imagema_s1_writedata;                    // mm_interconnect_0:ImagemA_s1_writedata -> ImagemA:writedata
	wire         mm_interconnect_0_imagema_s1_clken;                        // mm_interconnect_0:ImagemA_s1_clken -> ImagemA:clken
	wire         mm_interconnect_0_imagemb_s1_chipselect;                   // mm_interconnect_0:ImagemB_s1_chipselect -> ImagemB:chipselect
	wire   [7:0] mm_interconnect_0_imagemb_s1_readdata;                     // ImagemB:readdata -> mm_interconnect_0:ImagemB_s1_readdata
	wire         mm_interconnect_0_imagemb_s1_debugaccess;                  // mm_interconnect_0:ImagemB_s1_debugaccess -> ImagemB:debugaccess
	wire  [15:0] mm_interconnect_0_imagemb_s1_address;                      // mm_interconnect_0:ImagemB_s1_address -> ImagemB:address
	wire         mm_interconnect_0_imagemb_s1_write;                        // mm_interconnect_0:ImagemB_s1_write -> ImagemB:write
	wire   [7:0] mm_interconnect_0_imagemb_s1_writedata;                    // mm_interconnect_0:ImagemB_s1_writedata -> ImagemB:writedata
	wire         mm_interconnect_0_imagemb_s1_clken;                        // mm_interconnect_0:ImagemB_s1_clken -> ImagemB:clken
	wire         mm_interconnect_0_imagemc_s1_chipselect;                   // mm_interconnect_0:ImagemC_s1_chipselect -> ImagemC:chipselect
	wire   [7:0] mm_interconnect_0_imagemc_s1_readdata;                     // ImagemC:readdata -> mm_interconnect_0:ImagemC_s1_readdata
	wire  [15:0] mm_interconnect_0_imagemc_s1_address;                      // mm_interconnect_0:ImagemC_s1_address -> ImagemC:address
	wire         mm_interconnect_0_imagemc_s1_write;                        // mm_interconnect_0:ImagemC_s1_write -> ImagemC:write
	wire   [7:0] mm_interconnect_0_imagemc_s1_writedata;                    // mm_interconnect_0:ImagemC_s1_writedata -> ImagemC:writedata
	wire         mm_interconnect_0_imagemc_s1_clken;                        // mm_interconnect_0:ImagemC_s1_clken -> ImagemC:clken
	wire         mm_interconnect_0_saidaimagem_s1_chipselect;               // mm_interconnect_0:SaidaImagem_s1_chipselect -> SaidaImagem:chipselect
	wire  [31:0] mm_interconnect_0_saidaimagem_s1_readdata;                 // SaidaImagem:readdata -> mm_interconnect_0:SaidaImagem_s1_readdata
	wire   [1:0] mm_interconnect_0_saidaimagem_s1_address;                  // mm_interconnect_0:SaidaImagem_s1_address -> SaidaImagem:address
	wire         mm_interconnect_0_saidaimagem_s1_write;                    // mm_interconnect_0:SaidaImagem_s1_write -> SaidaImagem:write_n
	wire  [31:0] mm_interconnect_0_saidaimagem_s1_writedata;                // mm_interconnect_0:SaidaImagem_s1_writedata -> SaidaImagem:writedata
	wire         irq_mapper_receiver0_irq;                                  // jtag_uart:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] processador_irq_irq;                                       // irq_mapper:sender_irq -> Processador:irq
	wire         rst_controller_reset_out_reset;                            // rst_controller:reset_out -> [ImagemA:reset, ImagemB:reset, ImagemC:reset, MemoriaPrograma:reset, Processador:reset_n, irq_mapper:reset, mm_interconnect_0:Processador_reset_reset_bridge_in_reset_reset]
	wire         rst_controller_reset_out_reset_req;                        // rst_controller:reset_req -> [ImagemA:reset_req, ImagemB:reset_req, ImagemC:reset_req, MemoriaPrograma:reset_req, Processador:reset_req, rst_translator:reset_req_in]
	wire         processador_debug_reset_request_reset;                     // Processador:debug_reset_request -> rst_controller:reset_in1
	wire         rst_controller_001_reset_out_reset;                        // rst_controller_001:reset_out -> [MedidorDesempenho:reset_n, SaidaImagem:reset_n, jtag_uart:rst_n, mm_interconnect_0:MedidorDesempenho_reset_reset_bridge_in_reset_reset]

	SSDNiosSoftwareEmbarcado_ImagemA imagema (
		.clk         (clk_clk),                                  //   clk1.clk
		.address     (mm_interconnect_0_imagema_s1_address),     //     s1.address
		.debugaccess (mm_interconnect_0_imagema_s1_debugaccess), //       .debugaccess
		.clken       (mm_interconnect_0_imagema_s1_clken),       //       .clken
		.chipselect  (mm_interconnect_0_imagema_s1_chipselect),  //       .chipselect
		.write       (mm_interconnect_0_imagema_s1_write),       //       .write
		.readdata    (mm_interconnect_0_imagema_s1_readdata),    //       .readdata
		.writedata   (mm_interconnect_0_imagema_s1_writedata),   //       .writedata
		.reset       (rst_controller_reset_out_reset),           // reset1.reset
		.reset_req   (rst_controller_reset_out_reset_req),       //       .reset_req
		.freeze      (1'b0)                                      // (terminated)
	);

	SSDNiosSoftwareEmbarcado_ImagemB imagemb (
		.clk         (clk_clk),                                  //   clk1.clk
		.address     (mm_interconnect_0_imagemb_s1_address),     //     s1.address
		.debugaccess (mm_interconnect_0_imagemb_s1_debugaccess), //       .debugaccess
		.clken       (mm_interconnect_0_imagemb_s1_clken),       //       .clken
		.chipselect  (mm_interconnect_0_imagemb_s1_chipselect),  //       .chipselect
		.write       (mm_interconnect_0_imagemb_s1_write),       //       .write
		.readdata    (mm_interconnect_0_imagemb_s1_readdata),    //       .readdata
		.writedata   (mm_interconnect_0_imagemb_s1_writedata),   //       .writedata
		.reset       (rst_controller_reset_out_reset),           // reset1.reset
		.reset_req   (rst_controller_reset_out_reset_req),       //       .reset_req
		.freeze      (1'b0)                                      // (terminated)
	);

	SSDNiosSoftwareEmbarcado_ImagemC imagemc (
		.clk        (clk_clk),                                 //   clk1.clk
		.address    (mm_interconnect_0_imagemc_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_imagemc_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_imagemc_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_imagemc_s1_write),      //       .write
		.readdata   (mm_interconnect_0_imagemc_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_imagemc_s1_writedata),  //       .writedata
		.reset      (rst_controller_reset_out_reset),          // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),      //       .reset_req
		.freeze     (1'b0)                                     // (terminated)
	);

	Clock_Counter_Interface medidordesempenho (
		.clk       (clk_clk),                                               //   clock.clk
		.reset_n   (~rst_controller_001_reset_out_reset),                   //   reset.reset_n
		.read      (mm_interconnect_0_medidordesempenho_leitura_read),      // Leitura.read
		.readdata  (mm_interconnect_0_medidordesempenho_leitura_readdata),  //        .readdata
		.write     (mm_interconnect_0_medidordesempenho_escrita_write),     // Escrita.write
		.writedata (mm_interconnect_0_medidordesempenho_escrita_writedata), //        .writedata
		.clk_count (medidordesempenho_conduit_readdata)                     // conduit.readdata
	);

	SSDNiosSoftwareEmbarcado_MemoriaPrograma memoriaprograma (
		.clk        (clk_clk),                                         //   clk1.clk
		.address    (mm_interconnect_0_memoriaprograma_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_memoriaprograma_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_memoriaprograma_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_memoriaprograma_s1_write),      //       .write
		.readdata   (mm_interconnect_0_memoriaprograma_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_memoriaprograma_s1_writedata),  //       .writedata
		.reset      (rst_controller_reset_out_reset),                  // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),              //       .reset_req
		.freeze     (1'b0)                                             // (terminated)
	);

	SSDNiosSoftwareEmbarcado_Processador processador (
		.clk                                 (clk_clk),                                                   //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                           //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                        //                          .reset_req
		.d_address                           (processador_data_master_address),                           //               data_master.address
		.d_byteenable                        (processador_data_master_byteenable),                        //                          .byteenable
		.d_read                              (processador_data_master_read),                              //                          .read
		.d_readdata                          (processador_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (processador_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (processador_data_master_write),                             //                          .write
		.d_writedata                         (processador_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (processador_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (processador_instruction_master_address),                    //        instruction_master.address
		.i_read                              (processador_instruction_master_read),                       //                          .read
		.i_readdata                          (processador_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (processador_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (processador_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (processador_debug_reset_request_reset),                     //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_processador_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_processador_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_processador_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_processador_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_processador_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_processador_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_processador_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_processador_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                           // custom_instruction_master.readra
	);

	SSDNiosSoftwareEmbarcado_SaidaImagem saidaimagem (
		.clk        (clk_clk),                                     //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),         //               reset.reset_n
		.address    (mm_interconnect_0_saidaimagem_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_saidaimagem_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_saidaimagem_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_saidaimagem_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_saidaimagem_s1_readdata),   //                    .readdata
		.out_port   (saidaimagem_external_connection_export)       // external_connection.export
	);

	SSDNiosSoftwareEmbarcado_jtag_uart jtag_uart (
		.clk            (clk_clk),                                                   //               clk.clk
		.rst_n          (~rst_controller_001_reset_out_reset),                       //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                   //               irq.irq
	);

	SSDNiosSoftwareEmbarcado_mm_interconnect_0 mm_interconnect_0 (
		.clock_clk_clk                                       (clk_clk),                                                   //                                     clock_clk.clk
		.MedidorDesempenho_reset_reset_bridge_in_reset_reset (rst_controller_001_reset_out_reset),                        // MedidorDesempenho_reset_reset_bridge_in_reset.reset
		.Processador_reset_reset_bridge_in_reset_reset       (rst_controller_reset_out_reset),                            //       Processador_reset_reset_bridge_in_reset.reset
		.Processador_data_master_address                     (processador_data_master_address),                           //                       Processador_data_master.address
		.Processador_data_master_waitrequest                 (processador_data_master_waitrequest),                       //                                              .waitrequest
		.Processador_data_master_byteenable                  (processador_data_master_byteenable),                        //                                              .byteenable
		.Processador_data_master_read                        (processador_data_master_read),                              //                                              .read
		.Processador_data_master_readdata                    (processador_data_master_readdata),                          //                                              .readdata
		.Processador_data_master_write                       (processador_data_master_write),                             //                                              .write
		.Processador_data_master_writedata                   (processador_data_master_writedata),                         //                                              .writedata
		.Processador_data_master_debugaccess                 (processador_data_master_debugaccess),                       //                                              .debugaccess
		.Processador_instruction_master_address              (processador_instruction_master_address),                    //                Processador_instruction_master.address
		.Processador_instruction_master_waitrequest          (processador_instruction_master_waitrequest),                //                                              .waitrequest
		.Processador_instruction_master_read                 (processador_instruction_master_read),                       //                                              .read
		.Processador_instruction_master_readdata             (processador_instruction_master_readdata),                   //                                              .readdata
		.ImagemA_s1_address                                  (mm_interconnect_0_imagema_s1_address),                      //                                    ImagemA_s1.address
		.ImagemA_s1_write                                    (mm_interconnect_0_imagema_s1_write),                        //                                              .write
		.ImagemA_s1_readdata                                 (mm_interconnect_0_imagema_s1_readdata),                     //                                              .readdata
		.ImagemA_s1_writedata                                (mm_interconnect_0_imagema_s1_writedata),                    //                                              .writedata
		.ImagemA_s1_chipselect                               (mm_interconnect_0_imagema_s1_chipselect),                   //                                              .chipselect
		.ImagemA_s1_clken                                    (mm_interconnect_0_imagema_s1_clken),                        //                                              .clken
		.ImagemA_s1_debugaccess                              (mm_interconnect_0_imagema_s1_debugaccess),                  //                                              .debugaccess
		.ImagemB_s1_address                                  (mm_interconnect_0_imagemb_s1_address),                      //                                    ImagemB_s1.address
		.ImagemB_s1_write                                    (mm_interconnect_0_imagemb_s1_write),                        //                                              .write
		.ImagemB_s1_readdata                                 (mm_interconnect_0_imagemb_s1_readdata),                     //                                              .readdata
		.ImagemB_s1_writedata                                (mm_interconnect_0_imagemb_s1_writedata),                    //                                              .writedata
		.ImagemB_s1_chipselect                               (mm_interconnect_0_imagemb_s1_chipselect),                   //                                              .chipselect
		.ImagemB_s1_clken                                    (mm_interconnect_0_imagemb_s1_clken),                        //                                              .clken
		.ImagemB_s1_debugaccess                              (mm_interconnect_0_imagemb_s1_debugaccess),                  //                                              .debugaccess
		.ImagemC_s1_address                                  (mm_interconnect_0_imagemc_s1_address),                      //                                    ImagemC_s1.address
		.ImagemC_s1_write                                    (mm_interconnect_0_imagemc_s1_write),                        //                                              .write
		.ImagemC_s1_readdata                                 (mm_interconnect_0_imagemc_s1_readdata),                     //                                              .readdata
		.ImagemC_s1_writedata                                (mm_interconnect_0_imagemc_s1_writedata),                    //                                              .writedata
		.ImagemC_s1_chipselect                               (mm_interconnect_0_imagemc_s1_chipselect),                   //                                              .chipselect
		.ImagemC_s1_clken                                    (mm_interconnect_0_imagemc_s1_clken),                        //                                              .clken
		.jtag_uart_avalon_jtag_slave_address                 (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //                   jtag_uart_avalon_jtag_slave.address
		.jtag_uart_avalon_jtag_slave_write                   (mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),       //                                              .write
		.jtag_uart_avalon_jtag_slave_read                    (mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),        //                                              .read
		.jtag_uart_avalon_jtag_slave_readdata                (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                                              .readdata
		.jtag_uart_avalon_jtag_slave_writedata               (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                                              .writedata
		.jtag_uart_avalon_jtag_slave_waitrequest             (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                                              .waitrequest
		.jtag_uart_avalon_jtag_slave_chipselect              (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  //                                              .chipselect
		.MedidorDesempenho_Escrita_write                     (mm_interconnect_0_medidordesempenho_escrita_write),         //                     MedidorDesempenho_Escrita.write
		.MedidorDesempenho_Escrita_writedata                 (mm_interconnect_0_medidordesempenho_escrita_writedata),     //                                              .writedata
		.MedidorDesempenho_Leitura_read                      (mm_interconnect_0_medidordesempenho_leitura_read),          //                     MedidorDesempenho_Leitura.read
		.MedidorDesempenho_Leitura_readdata                  (mm_interconnect_0_medidordesempenho_leitura_readdata),      //                                              .readdata
		.MemoriaPrograma_s1_address                          (mm_interconnect_0_memoriaprograma_s1_address),              //                            MemoriaPrograma_s1.address
		.MemoriaPrograma_s1_write                            (mm_interconnect_0_memoriaprograma_s1_write),                //                                              .write
		.MemoriaPrograma_s1_readdata                         (mm_interconnect_0_memoriaprograma_s1_readdata),             //                                              .readdata
		.MemoriaPrograma_s1_writedata                        (mm_interconnect_0_memoriaprograma_s1_writedata),            //                                              .writedata
		.MemoriaPrograma_s1_chipselect                       (mm_interconnect_0_memoriaprograma_s1_chipselect),           //                                              .chipselect
		.MemoriaPrograma_s1_clken                            (mm_interconnect_0_memoriaprograma_s1_clken),                //                                              .clken
		.Processador_debug_mem_slave_address                 (mm_interconnect_0_processador_debug_mem_slave_address),     //                   Processador_debug_mem_slave.address
		.Processador_debug_mem_slave_write                   (mm_interconnect_0_processador_debug_mem_slave_write),       //                                              .write
		.Processador_debug_mem_slave_read                    (mm_interconnect_0_processador_debug_mem_slave_read),        //                                              .read
		.Processador_debug_mem_slave_readdata                (mm_interconnect_0_processador_debug_mem_slave_readdata),    //                                              .readdata
		.Processador_debug_mem_slave_writedata               (mm_interconnect_0_processador_debug_mem_slave_writedata),   //                                              .writedata
		.Processador_debug_mem_slave_byteenable              (mm_interconnect_0_processador_debug_mem_slave_byteenable),  //                                              .byteenable
		.Processador_debug_mem_slave_waitrequest             (mm_interconnect_0_processador_debug_mem_slave_waitrequest), //                                              .waitrequest
		.Processador_debug_mem_slave_debugaccess             (mm_interconnect_0_processador_debug_mem_slave_debugaccess), //                                              .debugaccess
		.SaidaImagem_s1_address                              (mm_interconnect_0_saidaimagem_s1_address),                  //                                SaidaImagem_s1.address
		.SaidaImagem_s1_write                                (mm_interconnect_0_saidaimagem_s1_write),                    //                                              .write
		.SaidaImagem_s1_readdata                             (mm_interconnect_0_saidaimagem_s1_readdata),                 //                                              .readdata
		.SaidaImagem_s1_writedata                            (mm_interconnect_0_saidaimagem_s1_writedata),                //                                              .writedata
		.SaidaImagem_s1_chipselect                           (mm_interconnect_0_saidaimagem_s1_chipselect)                //                                              .chipselect
	);

	SSDNiosSoftwareEmbarcado_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (processador_irq_irq)             //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                        // reset_in0.reset
		.reset_in1      (processador_debug_reset_request_reset), // reset_in1.reset
		.clk            (clk_clk),                               //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),        // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req),    //          .reset_req
		.reset_req_in0  (1'b0),                                  // (terminated)
		.reset_req_in1  (1'b0),                                  // (terminated)
		.reset_in2      (1'b0),                                  // (terminated)
		.reset_req_in2  (1'b0),                                  // (terminated)
		.reset_in3      (1'b0),                                  // (terminated)
		.reset_req_in3  (1'b0),                                  // (terminated)
		.reset_in4      (1'b0),                                  // (terminated)
		.reset_req_in4  (1'b0),                                  // (terminated)
		.reset_in5      (1'b0),                                  // (terminated)
		.reset_req_in5  (1'b0),                                  // (terminated)
		.reset_in6      (1'b0),                                  // (terminated)
		.reset_req_in6  (1'b0),                                  // (terminated)
		.reset_in7      (1'b0),                                  // (terminated)
		.reset_req_in7  (1'b0),                                  // (terminated)
		.reset_in8      (1'b0),                                  // (terminated)
		.reset_req_in8  (1'b0),                                  // (terminated)
		.reset_in9      (1'b0),                                  // (terminated)
		.reset_req_in9  (1'b0),                                  // (terminated)
		.reset_in10     (1'b0),                                  // (terminated)
		.reset_req_in10 (1'b0),                                  // (terminated)
		.reset_in11     (1'b0),                                  // (terminated)
		.reset_req_in11 (1'b0),                                  // (terminated)
		.reset_in12     (1'b0),                                  // (terminated)
		.reset_req_in12 (1'b0),                                  // (terminated)
		.reset_in13     (1'b0),                                  // (terminated)
		.reset_req_in13 (1'b0),                                  // (terminated)
		.reset_in14     (1'b0),                                  // (terminated)
		.reset_req_in14 (1'b0),                                  // (terminated)
		.reset_in15     (1'b0),                                  // (terminated)
		.reset_req_in15 (1'b0)                                   // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
