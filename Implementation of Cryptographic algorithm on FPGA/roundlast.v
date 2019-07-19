`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2018 10:58:47 PM
// Design Name: 
// Module Name: roundlast
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module roundlast(
clk,rc,rin,keylastin,fout
    );
    input clk;
    input [3:0]rc;
    input [127:0]rin;
    input [127:0]keylastin;
    output [127:0]fout;
    
    wire [127:0] sb,sr,mcl,keyout;
    
    KeyGeneration t0(rc,keylastin,keyout);
    subbytes t1(rin,sb);
    shiftrow t2(sb,sr);
    assign fout= keyout^sr;
endmodule
