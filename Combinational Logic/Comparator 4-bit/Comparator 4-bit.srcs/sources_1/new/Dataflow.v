`timescale 1ns / 1ps

module Dataflow(
    input [3:0]A,
    input [3:0]B,
    output Eq,
    output Gt,
    output Sm
    );
    
    assign Eq = (A==B);
    assign Gt = (A>B);
    assign Sm = (A<B);
    
endmodule
