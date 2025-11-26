`timescale 1ns / 1ps

module Test_Bench();

    reg [1:0] Input;
    reg En;
    wire [3:0] Y;

    Dataflow uut (
        .Input(Input),
        .En(En),
        .Y(Y)
    );

    initial begin

        $display("Time\tEn\tInput\tY");
        $monitor("%0dns\t%b\t%2b\t%4b", $time, En, Input, Y);

        En = 0; Input = 2'b00; #10;
        En = 1; Input = 2'b00; #10;
        En = 1; Input = 2'b01; #10;
        En = 1; Input = 2'b10; #10;
        En = 1; Input = 2'b11; #10;
        En = 0; Input = 2'b11; #10;

        $finish;
    end

endmodule
