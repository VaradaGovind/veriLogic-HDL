`timescale 1ns / 1ps

module Right_Left(
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
            SR <= {SR[3:0],SI};
    
    assign SO = SR[4];
    
endmodule
