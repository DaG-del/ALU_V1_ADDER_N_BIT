module multiplexer(I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, O0);

	input I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
	output O0;

	wire W0, W1, W2, W3, W4, W5, W6, W7;

	and(W0, I0, ~S0, ~S1, ~S2);
	and(W1, I1, ~S0, ~S1, S2);
	and(W2, I2, ~S0, S1, ~S2);
	and(W3, I3, ~S0, S1, S2);
	and(W4, I4, S0, ~S1, ~S2);
	and(W5, I5, S0, ~S1, S2);
	and(W6, I6, S0, S1, ~S2);
	and(W7, I7, S0, S1, S2);
	
	or(O0, W0, W1, W2, W3, W4, W5, W6, W7);

endmodule
