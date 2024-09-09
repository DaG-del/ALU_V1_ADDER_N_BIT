`timescale 1ns / 1ns

`include "clock.v"

module clock_tb;

wire clk;

clock uut(clk);

initial begin
	$dumpfile("clock.vcd");
	$dumpvars(0, clock_tb);
end

endmodule
