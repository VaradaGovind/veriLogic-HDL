`timescale 1ns / 1ps

module Test_Bench;

    reg A, B, Bin;        
    wire Diff, Bout;      

    FS_Data FS (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin


        A=0; B=0; Bin=0; #10;

        A=0; B=0; Bin=1; #10;

        A=0; B=1; Bin=0; #10;

        A=0; B=1; Bin=1; #10;

        A=1; B=0; Bin=0; #10;

        A=1; B=0; Bin=1; #10;

        A=1; B=1; Bin=0; #10;

        A=1; B=1; Bin=1; #10;

        $finish;
    end

endmodule
