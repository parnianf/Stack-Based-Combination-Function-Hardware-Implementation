`timescale 1ns/1ns
module Accumulator(input clk, rst, en, output reg [12:0] result);
  always @(posedge clk) begin
      if (rst) result <= 13'd0;
      else if (en) result <= result + 1;
    end
endmodule

