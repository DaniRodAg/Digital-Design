`timescale 1ns/1ps


module FA_2b
(
	input wire A0,A1,B0,B1,Cin,
	output wire S0,S1,Cout1
);

wire carry;

FA1 bit1
(
	.A(A0),
	.B(B0),
	.Cin(Cin),
	.S(S0),
	.Cout(carry)
);

FA1 bit2
(
	.A(A1),
	.B(B1),
	.Cin(carry),
	.S(S1),
	.Cout(Cout1)
);






endmodule