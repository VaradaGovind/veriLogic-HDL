`timescale 1ns / 1ps

module Posedge_LowReset(
    input D,
    input Clk,
    input Reset,
    output reg Q
    );
    
    always @(posedge Clk, negedge Reset)
        if (!Reset)
            Q <= 1'b0;
        else    
            Q <= D;    
    
endmodule
