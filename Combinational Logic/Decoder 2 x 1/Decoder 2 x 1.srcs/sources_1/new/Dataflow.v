`timescale 1ns / 1ps

module Dataflow(
    input [1:0]Input,
    input En,
    output [3:0]Y
    );
    
    assign Y = {En & Input[1] & Input[0],
                En & Input[1] & ~Input[0],
                En & ~Input[1] & Input[0],
                En & ~Input[1] & ~Input[0]};
    
endmodule
