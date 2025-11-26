`timescale 1ns / 1ps

module Test_Bench;

    reg [3:0] Inputs;
    reg [1:0] Select;
    wire Output;

    Multiplexer_4_1 dut (
        .Inputs(Inputs),
        .Select(Select),
        .Output(Output)
    );

    initial begin
        
        $display("Time\tSelect\tInputs\tOutput");
        $monitor("%0dns\t%b\t%b\t%b", $time, Select, Inputs, Output);

        Inputs = 4'b1010; Select = 2'b00; #10;
        Select = 2'b01; #10;                  
        Select = 2'b10; #10;                  
        Select = 2'b11; #10;                  

        Inputs = 4'b1100; Select = 2'b00; #10; 
        Select = 2'b01; #10;                  
        Select = 2'b10; #10;                  
        Select = 2'b11; #10;                  

        $finish;
    end

endmodule

