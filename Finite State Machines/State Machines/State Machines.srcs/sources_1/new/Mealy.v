`timescale 1ns / 1ps

module Mealy(
    input Clk,
    input Reset,
    input In,
    output reg Out
    );

    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10;

    reg [1:0] current_state, next_state;

    always @(posedge Clk) begin
        if (Reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    always @(In,current_state) begin
        case (current_state)
            S0: begin
                if (In) begin
                    next_state = S1;
                    Out = 0;
                end else begin
                    next_state = S0;
                    Out = 0;
                end
            end

            S1: begin
                if (In) begin
                    next_state = S1;
                    Out = 0;
                end else begin
                    next_state = S2;
                    Out = 1;
                end
            end

            S2: begin
                if (In) begin
                    next_state = S1;
                    Out = 0;
                end else begin
                    next_state = S0;
                    Out = 0;
                end
            end
        endcase
    end

endmodule
