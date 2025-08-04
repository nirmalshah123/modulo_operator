`timescale 1ns / 1ps

module top_level(
    input clk,
    input reset,
    input [299:0] x,
    output [255:0] o
    );
    
    reg [299:0] inp=0;
    wire [260:0] temp;
    
    mac i0(.clk(clk), .reset(reset), .x(inp), .o(temp));
    binary_search i1(.clk(clk), .reset(reset), .x(temp), .o(o));
    
    always@(posedge clk)
    begin
        inp<=x;
    end
    
endmodule
