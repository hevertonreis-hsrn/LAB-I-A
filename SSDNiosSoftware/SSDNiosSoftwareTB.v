`timescale 1ns/1ns

module SSDNiosSoftwareTB;

reg	CLOCK_50;
reg	[0:0] KEY;
wire	[7:0] GPIO;
wire	[0:0] LEDR;

integer i;
integer fd;
reg 	[7:0] data[57599:0];

SSDNiosSoftware( CLOCK_50, KEY, GPIO, LEDR );

always #10 CLOCK_50 = ~CLOCK_50;

initial begin

	CLOCK_50 = 0;
	KEY[0] = 0;
	
	#102 KEY[0] = 1;
	
	fd = $fopen("picture_data.txt", "w");
	
	@(posedge LEDR[0]);
	
	for (i = 0; i < 57600; i = i + 1) begin
		data[i] <= GPIO[7:0];
		@(posedge LEDR[0]);
	end
	
	$fwriteh(fd,data);
	
	$fclose(fd);
end
	
endmodule
