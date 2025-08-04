// Using a pure combinational circuit
`timescale 1ns / 1ps

module mod
#(parameter input_size = 300,
parameter output_size = 256,
parameter p = 256'd104899928942039473597645237135751317405745389583683433800060134911610808289117)
    (input clk,
    input reset,
    input [input_size-1:0] x,
    output [output_size-1:0] o);
    
    reg[output_size-1:0] ans;
    
    always@(posedge clk)
        begin
            if(reset == 1)
                ans<=0;
            else
                ans<=(x%p);
        end
    assign o = ans;
endmodule

