`timescale 1ns / 1ps

module FS_Beh(
    input A,
    input B,
    input Bin,
    output reg Diff,
    output reg Bout
    );
    
    always @(*) begin
        
        Diff = A ^ B ^ Bin;
        
        Bout = (~A & B) | (Bin & ~A) | (Bin & B);
    end

endmodule
