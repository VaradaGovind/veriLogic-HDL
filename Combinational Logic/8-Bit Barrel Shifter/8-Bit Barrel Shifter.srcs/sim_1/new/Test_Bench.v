`timescale 1ns/1ps

module Test_Bench;

    reg [7:0] In;
    reg [2:0] n;
    reg LR;
    wire [7:0] Out;

    Barrel_Shifter dut (
        .In(In),
        .n(n),
        .LR(LR),
        .Out(Out)
    );

    initial begin

        $monitor("Time=%0t | In=%b | n=%d | LR=%b | Out=%b", $time, In, n, LR, Out);

        In = 8'b10101010; n = 3'b001; LR = 1'b1; #10;

        In = 8'b11001100; n = 3'b011; LR = 1'b1; #10;

        In = 8'b11110000; n = 3'b010; LR = 1'b0; #10;

        In = 8'b10000001; n = 3'b101; LR = 1'b0; #10;

        In = 8'b00011100; n = 3'b000; LR = 1'b1; #10;

        $finish;
    end

endmodule