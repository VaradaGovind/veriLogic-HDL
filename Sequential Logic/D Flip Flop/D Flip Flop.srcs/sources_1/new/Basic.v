`timescale 1ns / 1ps

module Basic(
    input D,
    input Clk,
    output reg Q
    );
    
    always @(posedge Clk)
        Q <= D;
    
endmodule
