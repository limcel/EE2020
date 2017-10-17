`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 14:30:50
// Design Name: 
// Module Name: clk_20k
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


module clk_20k(
    input CLOCK,
    output reg pulse = 1'b0
    );
    
    reg [11:0] COUNT = 11'b0000;
    reg [11:0] m = 2499;
    
    always @ (posedge CLOCK) begin
    COUNT <= (COUNT == m)? 0 : COUNT + 1;
    pulse <= (COUNT == 11'b0000) ? ~pulse : pulse;
    end
    
endmodule
