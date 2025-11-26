`timescale 1ns / 1ps

module Test_Bench;
    reg [3:0] A,B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
Full_Adder_4bit uut (
        .Sum(Sum),
        .Cout(Cout),
        .A(A),
        .B(B),
        .Cin(Cin)
        );
    
    initial begin
        A = 4'b0011; B = 4'b0101; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1010; B = 4'b1010; Cin = 1; #10;
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;

        $finish;

    end
    
endmodule
