`timescale 1ns / 1ps

module Behavioral(
    input [3:0]A,
    input [3:0]B,
    output reg Eq,
    output reg Gt,
    output reg Sm
    );
    
    always @(*) begin
        Eq = (A==B);
        Gt = (A>B);
        Sm = (A<B);
    end
        
endmodule
