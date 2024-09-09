`timescale 1ns / 1ns

module clock(output reg C);

initial begin
	C = 0;
end

always begin
	#1 C = ~C;
end

endmodule
