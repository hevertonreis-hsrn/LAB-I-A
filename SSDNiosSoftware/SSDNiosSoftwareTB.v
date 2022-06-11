`timescale 1ns/1ns

module SSDNiosSoftwareTB;

reg	CLOCK_50;
reg	[31:0] entrada_1;
reg	[0:0] KEY;
reg	[1:0] SW;
wire	[15:0] LEDR;

SSDNiosSoftware DUV (CLOCK_50,entrada_1,KEY,SW,LEDR);

always #10 CLOCK_50 = ~CLOCK_50;

initial
begin
	CLOCK_50 = 0;
	entrada_1[0] = 0;
	KEY[0] = 0;
	SW[0] = 0;
	#102 KEY[0] = 1;
end 

endmodule
