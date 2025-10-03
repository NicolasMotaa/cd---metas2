module soma8 (S, Co, A, B, Cin);

	input [7:0] A, B; 
	input Cin; 

	output [7:0] S;
	output Co;

	wire [6:0] C;

	somabase s0 (.A(A[0]), .B(B[0]), .Cin(Cin),    .S(S[0]), .Co(C[0]));
	somabase s1 (.A(A[1]), .B(B[1]), .Cin(C[0]),   .S(S[1]), .Co(C[1]));
	somabase s2 (.A(A[2]), .B(B[2]), .Cin(C[1]),   .S(S[2]), .Co(C[2]));
	somabase s3 (.A(A[3]), .B(B[3]), .Cin(C[2]),   .S(S[3]), .Co(C[3]));
	somabase s4 (.A(A[4]), .B(B[4]), .Cin(C[3]),   .S(S[4]), .Co(C[4]));
	somabase s5 (.A(A[5]), .B(B[5]), .Cin(C[4]),   .S(S[5]), .Co(C[5]));
	somabase s6 (.A(A[6]), .B(B[6]), .Cin(C[5]),   .S(S[6]), .Co(C[6]));
	somabase s7 (.A(A[7]), .B(B[7]), .Cin(C[6]),   .S(S[7]), .Co(Co));

endmodule
	
