`timescale 1ns / 1ps

module With_Reset(
    input En,
    input D,
    input Reset,
    output reg Q
    );
    
    always @(En,Q,Reset)
        if(Reset)
            Q = 1'b0;
        else if(En)
            Q = D;
    
endmodule
