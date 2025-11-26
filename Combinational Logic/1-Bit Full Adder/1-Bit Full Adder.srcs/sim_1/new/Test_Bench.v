`timescale 1ns / 1ps

module Test_Bench;
    reg A,B,Cin;
    wire Sum,Cout;
    
Full_Adder_1bit uut (
        .Sum(Sum),
        .Cout(Cout),
        .A(A),
        .B(B),
        .Cin(Cin)
        );
    
    initial begin
        A = 0; B = 0; Cin = 0;
     #1 A = 0; B = 0; Cin = 1;
     #1 A = 0; B = 1; Cin = 0;
     #1 A = 0; B = 1; Cin = 1;
     #1 A = 1; B = 0; Cin = 0;
     #1 A = 1; B = 0; Cin = 1;
     #1 A = 1; B = 1; Cin = 0;
     #1 A = 1; B = 1; Cin = 1;
 
        $finish;

    end
    
endmodule

