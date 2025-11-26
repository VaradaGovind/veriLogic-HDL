`timescale 1ns / 1ps

module Dataflow(
    input En,
    input D,
    output Q
    );
    
    assign Q = En ? D : Q;
    
endmodule
