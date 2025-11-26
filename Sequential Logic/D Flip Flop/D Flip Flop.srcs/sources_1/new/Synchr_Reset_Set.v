`timescale 1ns / 1ps

module Synchr_Reset_Set(
    input D,
    input Clk,
    input Reset,
    input Set,
    output reg Q
    );
    
    always @(posedge Clk)
        if (!Reset)
            Q <= 1'b0;
        else if (Set)
            Q <= 1'b1;
        else 
            Q <= D;    
    
endmodule
