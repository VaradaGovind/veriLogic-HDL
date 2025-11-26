`timescale 1ns / 1ps

module Full_Adder_4bit_Structural(
     input [3:0]A,
    input [3:0]B,
    input Cin,
    output [3:0]Sum,
    output Cout
    );
    
    wire N1,N2,N3;
    
    Full_Adder_1bit FA1(Sum[0],N1,A[0],B[0],Cin);
    Full_Adder_1bit FA2(Sum[1],N2,A[1],B[1],N1);
    Full_Adder_1bit FA3(Sum[2],N3,A[2],B[2],N2);
    Full_Adder_1bit FA4(Sum[3],Cout,A[3],B[3],N3);
    
endmodule
