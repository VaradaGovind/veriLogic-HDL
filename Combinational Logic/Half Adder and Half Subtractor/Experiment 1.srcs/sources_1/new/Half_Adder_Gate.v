`timescale 1ns / 1ps

module Half_Adder_Gate(
    input A,
    input B,
    output Sum,
    output Carry
    );
    
    xor g1(Sum,A,B);
    and g2 (Carry,A,B);
    
endmodule
