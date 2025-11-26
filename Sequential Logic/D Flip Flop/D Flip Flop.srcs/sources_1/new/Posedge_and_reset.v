`timescale 1ns / 1ps

module Posedge_and_reset(
    input D,
    input Clk,
    input Reset,
    output reg Q
    );
    
    always @(posedge Clk or posedge Reset)
        if (Reset)
            Q <= 1'b0;
        else
            Q <= D; 
    
endmodule
