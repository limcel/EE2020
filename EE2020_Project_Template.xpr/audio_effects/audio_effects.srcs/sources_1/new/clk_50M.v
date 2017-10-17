`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 16:19:34
// Design Name: 
// Module Name: clk_50M
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


module clk_50M(
    input CLOCK,
    output reg pulse = 1'b0
    );
    
      reg [11:0] COUNT = 11'b0000;
      reg [11:0] m = 0;
      
      always @ (posedge CLOCK) begin
      COUNT <= (COUNT == m)? 0 : COUNT + 1;
      pulse <= (COUNT == 11'b0000) ? ~pulse : pulse;
      end
endmodule
