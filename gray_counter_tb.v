`timescale 1ns / 1ps

module gray_counter_tb #(parameter data_width = 4);

   reg clk;
   reg resetn;
   wire [data_width-1:0] out;
   
   gray_counter UUT(.clk(clk), .resetn(resetn), .out(out));
  
   always #5 clk = ~clk;
   
   initial begin 
   
endmodule
