`timescale 1ns/1ns

module SSDNiosSoftwareTB;

reg	CLOCK_50;
reg	[0:0] KEY;
wire	[7:0] GPIO;

integer i;
reg 	[7:0] tmp[57599:0];

SSDNiosSoftware( CLOCK_50, KEY, GPIO );

always #10 CLOCK_50 = ~CLOCK_50;

initial begin
	CLOCK_50 = 0;
	KEY[0] = 0;
	
	for (i = 0; i < 57600; i = i + 1) begin
		tmp[i] <= GPIO;
	end
	$writememh("C:\\Projetos\\Quartus\\SSDNiosSoftware\\picture_data.txt", tmp);
	#102 KEY[0] = 1;
end
	
endmodule
