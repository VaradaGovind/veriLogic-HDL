`timescale 1ns / 1ps

module FS_Data(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );
    
    assign Diff = A ^ B ^ Bin;
    
    assign Bout = (~A & B) | (Bin & ~A) | (Bin & B);

endmodule
