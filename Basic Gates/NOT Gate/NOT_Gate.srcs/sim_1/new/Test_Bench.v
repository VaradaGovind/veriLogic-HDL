`timescale 1ns / 1ps

module Test_Bench;
    reg A;
    wire Y;
    
    NOT_Gate uut (
        .Y(Y),
        .A(A)
    );

    initial begin
        A = 0;#1;
        A = 1;#1;
        
        $finish;
    end
    
endmodule
