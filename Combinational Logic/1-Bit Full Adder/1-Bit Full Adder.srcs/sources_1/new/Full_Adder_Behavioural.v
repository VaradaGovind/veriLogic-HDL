`timescale 1ns / 1ps

module Full_Adder_Behavioural(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Cout
    );
    
    always @ (A,B,Cin)
    begin
        Sum = A ^ B ^ Cin;
        Cout = (A & B)|(B & Cin)|(Cin & A);
    end
    
endmodule
