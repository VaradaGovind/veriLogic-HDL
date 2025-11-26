`timescale 1ns / 1ps

module Test_Bench;

    reg [3:0] Input;
    wire [1:0] Y;
    wire V;
    
    Dataflow uut (
        .Input(Input),
        .Y(Y),
        .V(V)
    );

    initial begin
        $display("Time\tInput\tY\tV");
        $monitor("%0dns\t%b\t%b\t%b", $time, Input, Y, V);

        Input = 4'b0000; #10;
        Input = 4'b0001; #10;
        Input = 4'b0010; #10;
        Input = 4'b0100; #10;
        Input = 4'b1000; #10;
        Input = 4'b1100; #10;
        Input = 4'b1010; #10;
        Input = 4'b1111; #10;

        $finish;
    end

endmodule
