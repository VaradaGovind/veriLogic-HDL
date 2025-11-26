`timescale 1ns / 1ps

module Test_Bench;

    reg [1:0] Inputs;
    reg Select;
    wire Output;

    Multiplexer_2_1 uut (
        .Inputs(Inputs),
        .Select(Select),
        .Output(Output)
    );
    
 initial begin

        Inputs = 2'b00; Select = 0; #10;
        
        Inputs = 2'b01; Select = 0; #10;
        
        Inputs = 2'b00; Select = 1; #10;
        
        Inputs = 2'b01; Select = 1; #10;

        $finish;
    end

endmodule
