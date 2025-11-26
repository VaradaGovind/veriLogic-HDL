`timescale 1ns / 1ps

module Test_Bench;

    reg [3:0] a, b, opcode;
    wire [3:0] x, y;
    wire Z, C, V, N;   


    Logic_Unit uut (
        .a(a),
        .b(b),
        .opcode(opcode),
        .x(x),
        .y(y),
        .Z(Z),
        .C(C),
        .V(V),
        .N(N)
    );

    initial begin
        $display("Time\tOpcode\tA\tB\tX\tY\tZ C V N");
        $monitor("%0t\t%b\t%h\t%h\t%h\t%h\t%b %b %b %b", 
                 $time, opcode, a, b, x, y, Z, C, V, N);

        // OR reduction
        a = 4'b0001; b = 4'b0000; opcode = 4'b0000; #10;
        a = 4'b0000; opcode = 4'b0000; #10;

        // AND reduction
        a = 4'b1111; opcode = 4'b0001; #10;

        // XOR reduction
        a = 4'b1010; opcode = 4'b0010; #10;

        // AND
        a = 4'b1100; b = 4'b1010; opcode = 4'b0011; #10;

        // OR
        opcode = 4'b0100; #10;

        // XOR
        opcode = 4'b0101; #10;

        // Greater Than
        a = 4'd10; b = 4'd5; opcode = 4'b0110; #10;

        // Less Than
        a = 4'd3; b = 4'd7; opcode = 4'b0111; #10;

        // NOT
        a = 4'b1010; opcode = 4'b1000; #10;

        // Equality
        a = 4'd7; b = 4'd7; opcode = 4'b1001; #10;
        b = 4'd5; opcode = 4'b1001; #10;

        // Addition
        a = 4'd9; b = 4'd6; opcode = 4'b1010; #10;

        // Multiplication (lower 4 bits only)
        a = 4'd3; b = 4'd4; opcode = 4'b1011; #10;

        // Full 8-bit multiplication
        opcode = 4'b1100; #10;

        // Right Shift
        a = 4'b1000; b = 4'b0010; opcode = 4'b1101; #10;

        // Left Shift
        opcode = 4'b1110; #10;

        // Bitwise NOT (duplicate opcode)
        a = 4'b1100; opcode = 4'b1111; #10;

        // Invalid opcode
        opcode = 4'bxxxx; #10;

        $finish;
    end

endmodule
