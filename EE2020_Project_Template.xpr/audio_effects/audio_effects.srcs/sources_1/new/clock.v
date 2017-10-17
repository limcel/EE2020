`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2017 14:05:40
// Design Name: 
// Module Name: clock
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


module clock(
    input CLK,
    input [23:0] freq_input,
    output outputpulse
    );
    
    wire [20:0] m;
   
    freq_to_m freq_to_m_instant(freq_input, m);
    general_clock general_clock_instant(CLK, m, pulse);

    assign outputpulse = pulse;
    
endmodule
