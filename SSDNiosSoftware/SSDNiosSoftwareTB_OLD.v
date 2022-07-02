`timescale 1ns/1ns

module SSDNiosSoftwareTB; 

SSDNiosSoftware (CLOCK_50, KEY, SW, LEDR);

reg	CLOCK_50;
reg	[0:0] KEY;
reg	[1:0] SW;
wire	[15:0] LEDR;

always #10 CLOCK_50 = ~CLOCK_50;

initial
begin
	CLOCK_50 = 0;
	KEY[0] = 0;
	SW[0] = 0;
	#102 KEY[0] = 1;
end

endmodule
