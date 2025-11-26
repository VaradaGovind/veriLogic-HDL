`timescale 1ns / 1ps

module Barrel_Shifter(
    input [7:0]In,
    input [2:0]n,
    input LR,
    output reg [7:0]Out
    );
    
    always @(*)begin
        if(LR)
            Out = In << n;
        else 
            Out = In >> n;
    end            
    
endmodule
