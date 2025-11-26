`timescale 1ns / 1ps

module Test_Bench;

reg D;
reg Clk;
wire Q;

Basic uut (
    .D(D),
    .Clk(Clk),
    .Q(Q)
);

initial begin
    Clk = 0;
    forever #5 Clk = ~Clk;
end

initial begin

    D = 0;

    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;
    #20 D = 1;

    #20 $finish;
end

initial begin
    $monitor("Time=%0t | Clk=%b | D=%b | Q=%b", $time, Clk, D, Q);
end

endmodule
