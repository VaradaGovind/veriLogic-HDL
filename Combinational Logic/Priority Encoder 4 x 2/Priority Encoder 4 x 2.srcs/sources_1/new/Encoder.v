`timescale 1ns / 1ps

module Encoder(
    input [3:0] Input,
    output [1:0] Y,
    output V
    );
    
    assign {V,Y} = Input[0] ? 3'b100 : Input[1] ? 3'b101 : Input[2] ? 3'b110 : Input[3] ? 3'b111 : 3'b0000;
    
endmodule
