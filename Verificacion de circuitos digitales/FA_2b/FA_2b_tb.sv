`timescale 1ns/1ps


module FA_2b_TB();

reg[1:0] A,B;
wire[1:0] S;
wire Cout1;
wire Cin = 1'b0;

FA_2b duv
(
	.A0(A[0]),
	.B0(B[0]),
	.A1(A[1]),
	.B1(B[1]),
	.S0(S[0]),
	.S1(S[1]),
	.Cin(Cin),
	.Cout1(Cout1)
);

initial
begin
	A = 2'b00;
	B = 2'b00;
	#100;
	A = 2'b01;
	B = 2'b00;
	#100;
	A = 2'b00;
	B = 2'b01;
	#100;
	A = 2'b01;
	B = 2'b01;
	#100;
	A = 2'b10;
	B = 2'b00;
	#100;
	A = 2'b11;
	B = 2'b00;
	#100;
	A = 2'b11;
	B = 2'b01;
	#100;
	A = 2'b11;
	B = 2'b10;
	#100;
	A = 2'b11;
	B = 2'b11;
	#100;
	$stop;
end


endmodule 