`timescale 1ns / 1ps

module Half_Sub_Gate(
    input A,
    input B,
    output Difference,
    output Borrow
    );
    
    xor g1(Difference,A,B);
    and g2(Borrow,~A,B);
    
endmodule
