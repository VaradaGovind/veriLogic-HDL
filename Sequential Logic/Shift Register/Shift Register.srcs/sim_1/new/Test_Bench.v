`timescale 1ns / 1ps

module Test_Bench;

reg [1:0] Select;
reg [4:0] PI;
reg Clk;
reg Reset;
reg SI;
wire [4:0] PO;
wire SO;

Universal_Register uut (
    .Select(Select),
    .PI(PI),
    .Clk(Clk),
    .Reset(Reset),
    .SI(SI),
    .PO(PO),
    .SO(SO)
);

initial begin
    Clk = 0;
    forever #5 Clk = ~Clk;
end

initial begin
    Select = 2'b00; PI = 5'b00000; SI = 0; Reset = 1;
    #10 Reset = 0; Select = 2'b11; PI = 5'b10101;
    #10 Select = 2'b01; SI = 1;
    #10 SI = 0;
    #10 Select = 2'b10; SI = 1;
    #10 Select = 2'b00;
    #20 $finish;
end

initial begin
    $monitor("T=%0t | Sel=%b | PI=%b | SI=%b | PO=%b | SO=%b", 
              $time, Select, PI, SI, PO, SO);
end

endmodule
