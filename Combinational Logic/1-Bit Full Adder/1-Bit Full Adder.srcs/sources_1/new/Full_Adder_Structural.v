`timescale 1ns / 1ps

module Full_Adder_Structural(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    wire N1,N2,N3;
    
    Half_Adder HA1(
        .A(A),
        .B(B),
        .Sum(N1),
        .Carry(N2)
        );
    Half_Adder HA2(
        .A(N1),
        .B(Cin),
        .Sum(Sum),
        .Carry(N3)
        );
    assign Cout = N3|N2;
            
endmodule
