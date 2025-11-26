`timescale 1ns / 1ps

module Multiplexer_Behavioural(
    input [1:0] Inputs,
    input Select,
    output reg Output
    );
    
    always @ (*)
    if (Select)
        Output = Inputs[1];
    else
        Output = Inputs[0];
    
endmodule
