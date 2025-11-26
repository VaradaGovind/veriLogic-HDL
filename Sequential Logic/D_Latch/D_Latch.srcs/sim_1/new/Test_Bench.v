`timescale 1ns / 1ps

module Test_Bench;

reg En;
reg D;
wire Q;

Behavioural uut (
    .En(En),
    .D(D),
    .Q(Q)
);

initial begin

    En = 0; 
    D = 0;


    #10 D = 1; En = 1; 
    #10 D = 0;         
    #10 En = 0;       
    #10 D = 1;          
    #10 En = 1;       
    #10 En = 0;       
    #20 $finish;       
end

initial begin
    $monitor("Time=%0t | En=%b | D=%b | Q=%b", $time, En, D, Q);
end

endmodule
