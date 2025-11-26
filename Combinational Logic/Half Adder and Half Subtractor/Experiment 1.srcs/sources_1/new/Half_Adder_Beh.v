`timescale 1ns / 1ps

module Half_Adder_Beh(
    input A,
    input B,
    output reg Sum,
    output reg Carry
    );
    
    always @(A or B)begin
        Sum = A ^ B;
        Carry = A & B;
    end
            
endmodule
