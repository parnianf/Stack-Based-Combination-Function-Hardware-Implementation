`timescale 1ns/1ns
module Mux2to1(input [3:0] in0, in1, input sel, output [3:0] out);
  assign out = sel ? in1 : in0;
endmodule

