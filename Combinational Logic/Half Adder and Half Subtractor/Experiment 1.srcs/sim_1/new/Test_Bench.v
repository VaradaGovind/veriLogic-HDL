`timescale 1ns / 1ps

module Test_Bench;

    reg A, B;
    wire Sum, Carry;
    wire Difference, Borrow;

    Half_Adder HA (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    Half_Subtractor HS (
        .A(A),
        .B(B),
        .Difference(Difference),
        .Borrow(Borrow)
    );

    initial begin
        $display("A B | Sum Carry || Diff Borrow");
        $display("-------------------------------");

        A = 0; B = 0;
        #10;
        $display("%b %b |  %b    %b   ||  %b     %b", A, B, Sum, Carry, Difference, Borrow);

        A = 0; B = 1;
        #10;
        $display("%b %b |  %b    %b   ||  %b     %b", A, B, Sum, Carry, Difference, Borrow);

        A = 1; B = 0;
        #10;
        $display("%b %b |  %b    %b   ||  %b     %b", A, B, Sum, Carry, Difference, Borrow);

        A = 1; B = 1;
        #10;
        $display("%b %b |  %b    %b   ||  %b     %b", A, B, Sum, Carry, Difference, Borrow);

        $finish;
    end

endmodule


