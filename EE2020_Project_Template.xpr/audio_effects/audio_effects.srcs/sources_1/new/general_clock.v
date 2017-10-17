`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2017 13:27:53
// Design Name: 
// Module Name: general_clock
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


module general_clock(
    input CLOCK,
    input [20:0] m,
    output reg pulse = 1'b0
    );
    
    reg [20:0] COUNT = 21'b0000;
    
    always @ (posedge CLOCK) begin
    COUNT <= (COUNT == m)? 0 : COUNT + 1;
    pulse <= (COUNT == 21'b0000) ? ~pulse : pulse;
    end
    
endmodule
