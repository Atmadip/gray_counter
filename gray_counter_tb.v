`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2024 11:21:24 AM
// Design Name: 
// Module Name: gray_counter_tb
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


module gray_counter_tb #(parameter data_width = 4);

   reg clk;
   reg resetn;
   wire [data_width-1:0] out;
   
   gray_counter UUT(.clk(clk), .resetn(resetn), .out(out));
  
   always #5 clk = ~clk;
   
   initial begin 
   
endmodule
