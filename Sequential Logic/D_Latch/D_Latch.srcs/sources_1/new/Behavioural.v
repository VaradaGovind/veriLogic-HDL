`timescale 1ns / 1ps

module Behavioural(
    input En,
    input D,
    output reg Q
    );
    
    always @(En,Q)
        if (En) Q = D ;
    
endmodule
