
module SSDNiosSoftwareEmbarcado (
	clk_clk,
	medidordesempenho_conduit_readdata,
	reset_reset_n,
	saidaimagem_external_connection_export);	

	input		clk_clk;
	output	[31:0]	medidordesempenho_conduit_readdata;
	input		reset_reset_n;
	output	[7:0]	saidaimagem_external_connection_export;
endmodule
