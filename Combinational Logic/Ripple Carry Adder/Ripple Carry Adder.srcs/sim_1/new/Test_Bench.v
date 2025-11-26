`timescale 1ns / 1ps

module Test_Bench;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    RCA uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        A = 4'b0000; B = 4'b0000; Cin = 0; #10;   // 0 + 0
        A = 4'b0101; B = 4'b0011; Cin = 0; #10;   // 5 + 3
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;   // 15 + 1
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;   // 10 + 5 + Cin
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;   // Max case (15+15+1)

        $finish;
    end

endmodule
