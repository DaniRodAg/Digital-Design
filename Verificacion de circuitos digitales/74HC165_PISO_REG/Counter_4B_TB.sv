`timescale 1ns/1ps


module Counter_4B
(
	input wire [15:0]A, B,
	input wire Cin,
	output wire [15:0]S,
	output wire Cout
);

wire carry;

FA_8B LSB
(
	.A(A[7:0]),
	.B(B[7:0]),
	.S(S[7:0]),

	.Cin(Cin),
	.Cout(carry)
);

FA_8B MSB
(
	.A(A[15:8]),
	.B(B[15:8]),
	.S(S[15:8]),

	.Cin(carry),
	.Cout(Cout)
);





endmodule
