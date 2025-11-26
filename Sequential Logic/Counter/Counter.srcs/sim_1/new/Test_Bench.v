`timescale 1ns / 1ps

module Test_Bench;
    
    reg Clk,Reset;
    wire [7:0]Count;
    
    Basic_Counter c0(.Clk(Clk), .Reset(Reset), .Count(Count));
    
    always #5 Clk = ~Clk;
    
    initial begin
        Clk = 0;
        Reset = 1;
        
        #10 Reset = 0;
        #20 Reset = 1;
        #100 $stop;
    end
        
endmodule
