`timescale 1ns / 1ps

module Posedge_HighSet(
    input D,
    input Clk,
    input Reset,
    input Set,
    output reg Q
    );
    
    always @ (posedge Clk, negedge Reset, posedge Set)
        if (!Reset)
            Q <= 1'b0;
        else if (Set)
            Q <= 1'b1;
        else
            Q <= D;         
    
endmodule
