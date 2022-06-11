module Separador (seletor_HighLow, seletor_entrada, entrada_0, entrada_1, saida_16);
input seletor_HighLow, seletor_entrada;
input [31:0] entrada_0, entrada_1;
output reg [15:0] saida_16;

always @ (*)
begin
	case (seletor_entrada)
		0: if (seletor_HighLow)
				saida_16 = entrada_0[31:16];
		   else saida_16 = entrada_0[15:0];
			
		1: if (seletor_HighLow)
				saida_16 = entrada_1[31:16];
		   else saida_16 = entrada_1[15:0];
	endcase
end

endmodule