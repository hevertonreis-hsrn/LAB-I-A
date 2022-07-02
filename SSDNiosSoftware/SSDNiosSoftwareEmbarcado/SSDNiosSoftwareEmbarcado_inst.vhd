	component SSDNiosSoftwareEmbarcado is
		port (
			clk_clk                                : in  std_logic                     := 'X'; -- clk
			medidordesempenho_conduit_readdata     : out std_logic_vector(31 downto 0);        -- readdata
			reset_reset_n                          : in  std_logic                     := 'X'; -- reset_n
			saidaimagem_external_connection_export : out std_logic_vector(7 downto 0)          -- export
		);
	end component SSDNiosSoftwareEmbarcado;

	u0 : component SSDNiosSoftwareEmbarcado
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                             clk.clk
			medidordesempenho_conduit_readdata     => CONNECTED_TO_medidordesempenho_conduit_readdata,     --       medidordesempenho_conduit.readdata
			reset_reset_n                          => CONNECTED_TO_reset_reset_n,                          --                           reset.reset_n
			saidaimagem_external_connection_export => CONNECTED_TO_saidaimagem_external_connection_export  -- saidaimagem_external_connection.export
		);

