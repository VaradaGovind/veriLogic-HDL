`timescale 1ns / 1ps

module NAND_Gate(
    input A,
    input B,
    output Y
    );
    assign Y = ~(A&B);
endmodule
