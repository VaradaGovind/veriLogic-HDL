`timescale 1ns / 1ps

module Test_Bench;
    reg A,B;
    wire Y;
    
AND_Gate uut (
        .Y(Y),
        .A(A),
        .B(B)
        );
    
    initial begin
        A = 0; B = 0;
     #1 A = 0; B = 1;
     #1 A = 1; B = 0;
     #1 A = 1; B = 1;
     #1
 
        $finish;

    end
    
endmodule
