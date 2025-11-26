`timescale 1ns / 1ps

module Left_Right(
    input SI,
    input Clk,
    input Reset,
    output SO
    );
    
    reg [4:0]SR;
    
    always @(posedge Clk,negedge Reset)
        if(!Reset)
            SR <= 5'd0;
        else 
            SR <= {SI,SR[4:1]};
    
    assign SO = SR[0];
    
endmodule
