`timescale 1ns / 1ps

module Basic_Counter(
    input Clk,
    input Reset,
    output [7:0] Count
    );
    
    reg [7:0] count_temp;
    
    always @(posedge Clk)
        if(!Reset)
            count_temp <= 8'd0;
        else
            count_temp <= count_temp + 1;    
    
    assign Count = count_temp;
    
endmodule
