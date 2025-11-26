`timescale 1ns / 1ps

module Negedge_and_reset(
    input D,
    input Clk,
    input Reset,
    output reg Q
    );
    
    always @(negedge Clk or posedge Reset)
        if (Reset)
            Q <= 1'b0;
        else
            Q <= D;    
    
endmodule
