`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2017 14:08:42
// Design Name: 
// Module Name: freq_to_m
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


module freq_to_m(
    input [23:0] freq,
    output [20:0] m
    );    
    
    assign m = (50000000 / freq) - 1;
   
endmodule
