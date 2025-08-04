// Performing a Binary search
`timescale 1ns / 1ps

module binary_search(
    input clk,
    input [260:0] x,
    input reset,
    output[255:0] o
    );
    
    localparam [259:0] p12 = 260'd1258799147304473683171742845629015808868944675004201205600721618939329699469404;
    localparam [258:0] p6 = 259'd629399573652236841585871422814507904434472337502100602800360809469664849734702;
    localparam [257:0] p3 = 258'd314699786826118420792935711407253952217236168751050301400180404734832424867351;
    localparam [256:0] p2 = 257'd209799857884078947195290474271502634811490779167366867600120269823221616578234;
    localparam [255:0] p1 = 256'd104899928942039473597645237135751317405745389583683433800060134911610808289117;       
    
    reg [259:0] temp0;
    reg [258:0] temp1;
    reg [257:0] temp2;
    reg [256:0] temp3;
    reg [255:0] temp4;
      
    always@(posedge clk)
    begin
        if(reset == 1'b1)
        begin
            temp0<=0;
            temp1<=0;
            temp2<=0;
            temp3<=0;
            temp4<=0;
        end
        else
        begin
           temp0 <= (x>=p12)?(x-p12):x;
           temp1 <= (temp0>=p6)?(temp0-p6):temp0;
           temp2 <= (temp1>=p3)?(temp1-p3):temp1;
           temp3 <= (temp2>=p2)?(temp2-p2):temp2;
           temp4 <= (temp3>=p1)?(temp3-p1):temp3;
       end
    end
    assign o = temp4;
    
endmodule
