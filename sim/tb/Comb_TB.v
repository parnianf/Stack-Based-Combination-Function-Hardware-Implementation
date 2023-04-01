`timescale 1ns/1ns
module Comb_TB();
  reg clk = 1'b0, rst = 1'b1, start=1'b1;
  reg[3:0] n = 4'd4;
  reg[3:0] m = 4'd0;
  wire done;
  wire[12:0] result;
  always #10 clk = ~clk;
  Comb CUT(clk, rst, start, n, m, done, result);
  initial begin
    #20 rst = 1'b0;
    #20 start = 1'b1;
    #20 start = 1'b0;
    #12000 $stop;
    
  end 

endmodule
