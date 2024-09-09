`timescale 1ns / 1ns

`include "incrementer.v"


module incrementer_tb;

reg I0, I1, I2;

wire O0, O1, O2;

incrementer uut(I2, I1, I0, O2, O1, O0);

initial begin
	$dumpfile("incrementer.vcd");
	$dumpvars(0, incrementer_tb);

	I0 = 0; I1 = 0; I2 = 0;
	#10
	I0 = 0; I1 = 0; I2 = 1;
	#10
	I0 = 0; I1 = 1; I2 = 0;
	#10
	I0 = 0; I1 = 1; I2 = 1;
	#10
	I0 = 1; I1 = 0; I2 = 0;
	#10
	I0 = 1; I1 = 0; I2 = 1;
	#10
	I0 = 1; I1 = 1; I2 = 0;
	#10
	I0 = 1; I1 = 1; I2 = 1;
	#10

	$display("test complete!");

end

endmodule
