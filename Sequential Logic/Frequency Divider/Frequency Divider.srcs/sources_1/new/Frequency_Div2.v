`timescale 1ns / 1ps

module Frequency_Div2(
    input Clk,
    input Reset,
    output reg Clk_Out
    );
    
    always @(posedge Clk)
        if(!Reset)
            Clk_Out <= 0;
        else
            Clk_Out <= ~ Clk_Out;    
    
endmodule
