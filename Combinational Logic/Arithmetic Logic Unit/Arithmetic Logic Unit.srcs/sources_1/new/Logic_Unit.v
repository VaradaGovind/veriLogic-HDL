`timescale 1ns / 1ps

module Logic_Unit(
    input  [3:0] a,
    input  [3:0] b,
    input  [3:0] opcode,
    output reg [3:0] x,
    output reg [3:0] y,
    output reg Z,   // Zero flag
    output reg C,   // Carry flag
    output reg V,   // Overflow flag
    output reg N    // Sign Bit
);

    reg [4:0] temp;

    always @(*) begin

        x = 4'b0000;
        y = 4'b0000;
        Z = 0;
        C = 0;
        V = 0;
        N = 0;

        case (opcode)
            4'b0000: x[0] = |a;                         
            4'b0001: x[0] = &a;                         
            4'b0010: x[0] = ^a;                         
            4'b0011: x = a & b;
            4'b0100: x = a | b;
            4'b0101: x = a ^ b;
            4'b0110: x[0] = (a > b);                    
            4'b0111: x[0] = (a < b);                    
            4'b1000: x = ~a;
            4'b1001: x[0] = (a == b);                   
            4'b1010: begin                              
                temp = a + b;
                x = temp[3:0];
                C = temp[4];                            
                V = (~(a[3] ^ b[3])) & (a[3] ^ x[3]);   
            end
            4'b1011: x = a * b;                         
            4'b1100: {y, x} = a * b;                    
            4'b1101: {y, x} = {4'b0000, a} >> b;        
            4'b1110: {y, x} = {4'b0000, a} << b;        
            4'b1111: x = ~a;
            default: begin
                x = 4'b0000;
                y = 4'b0000;
                $display("Invalid opcode: %b", opcode);
            end
        endcase

        
        Z = (x == 4'b0000);   
        N = x[3];             
    end

endmodule

