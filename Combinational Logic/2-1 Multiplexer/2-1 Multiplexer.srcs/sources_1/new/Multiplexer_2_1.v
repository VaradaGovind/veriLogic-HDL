`timescale 1ns / 1ps

module Multiplexer_2_1(
    input [1:0] Inputs,
    input Select,
    output Output
    );
    
    assign Output = Select ? Inputs[1] : Inputs[0];
    
endmodule
