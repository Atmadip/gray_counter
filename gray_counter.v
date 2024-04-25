`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2024 12:16:36 PM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter #(parameter data_width = 4)(
    input clk,
    input resetn,
    output [data_width-1:0] out);
    
    reg [data_width-1:0] temp;

always @(posedge clk) begin
  if (resetn)
    temp <= 4'b 0;
  else
    temp <= temp + 1'b 1;
    
end
assign out = temp ^ (temp >> 1);
endmodule
