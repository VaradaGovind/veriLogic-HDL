`timescale 1ns / 1ps

module Half_Sub_Beh(
    input A,
    input B,
    output reg Difference,
    output reg Borrow
    );
    
    always @(A or B)begin
        assign Difference = A ^ B;
        assign Borrow = ~A & B;
    end
        
endmodule
