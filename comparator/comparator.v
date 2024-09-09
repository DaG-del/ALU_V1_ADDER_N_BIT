module comparator(A, B, C, D, E, F, G);

	input A, B, C, D, E, F;
	output G;

	wire W0, W1, W2, W3, W4, W6;

	and(W0, ~A, D);
	and(W1, ~A, ~B, E);
	and(W2, ~B, D, E);
	and(W3, ~A, ~B, ~C, F);
	and(W4, ~A, ~C, E, F);
	and(W5, ~B, ~C, D, F);
	and(W6, ~C, D, E, F);

	or(G, W0, W1, W2, W3, W4, W6);

endmodule;
