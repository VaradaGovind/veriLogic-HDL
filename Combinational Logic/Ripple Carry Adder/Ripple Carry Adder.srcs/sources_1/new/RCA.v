`timescale 1ns / 1ps

module RCA(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    wire W1, W2, W3;
    
    FA FA0(
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Sum(Sum[0]),
        .Cout(W1)
        );
    
    FA FA1(
        .A(A[1]),
        .B(B[1]),
        .Cin(W1),
        .Sum(Sum[1]),
        .Cout(W2)
        );
        
    FA FA2(
        .A(A[2]),
        .B(B[2]),
        .Cin(W2),
        .Sum(Sum[2]),
        .Cout(W3)
        );
     
    FA FA3(
        .A(A[3]),
        .B(B[3]),
        .Cin(W3),
        .Sum(Sum[3]),
        .Cout(Cout)
        );
        
endmodule
