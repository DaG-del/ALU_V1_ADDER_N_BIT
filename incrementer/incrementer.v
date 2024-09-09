module incrementer(I0, I1, I2, O0, O1, O2);

	input I0, I1, I2;
	output O0, O1, O2;

	wire W1, W2, W3;
	
	and(W1, I2, ~I1);
	and(W2, I2, ~I0);
	and(W3, ~I2, I1, I0);

	or(O2, W1, W2, W3);
	
	xor(O1, I0, I1);

	or(O0, ~I0, 0);

endmodule
