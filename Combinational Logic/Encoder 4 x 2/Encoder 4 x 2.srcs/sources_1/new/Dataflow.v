`timescale 1ns / 1ps

module Dataflow(
    input [3:0]Input,
    output [1:0]Y,
    output V
    );
    
    assign Y = {Input[3]|Input[2],Input[3]|Input[1]};
    assign V = |Input;
    
endmodule
