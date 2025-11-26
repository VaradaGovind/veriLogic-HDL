`timescale 1ns / 1ps

module Multiplexer_4_1(
    input [3:0] Inputs,
    input [1:0] Select,
    output Output
    );
    
    assign Output = Inputs[Select];
    
endmodule
