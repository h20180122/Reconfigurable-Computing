`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2018 08:06:02 AM
// Design Name: 
// Module Name: AES_Top
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


module AES_Top(clk,finaldataout);

input clk;
output [7:0] finaldataout;

wire [127:0] tempout;

Cipher_text u1(.clk(clk),.datain(128'h 3243f6a8885a308d313198a2e0370734),.key(128'h 2b7e151628aed2a6abf7158809cf4f3c),.dataout(tempout));

assign finaldataout = tempout[127:120];

endmodule
