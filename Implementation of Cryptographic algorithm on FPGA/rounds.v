`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2018 08:33:31 AM
// Design Name: 
// Module Name: rounds
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


module rounds(
clk,roundcount,data,keyin,keyout,rndout
    );
    
    input clk;
    input [3:0]roundcount;
    input [127:0]data;
    input [127:0]keyin;
    output [127:0]keyout;
    output [127:0]rndout;
    
    wire [127:0] sb,sr,mcl;
    
    KeyGeneration t0(roundcount,keyin,keyout);
    subbytes t1(data,sb);
    shiftrow t2(sb,sr);
    mixcolumn t3(sr,mcl);
    assign rndout= keyout^mcl;
    
endmodule
