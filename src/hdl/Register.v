`timescale 1ns/1ns
module Register(input clk, rst, ld,input [3:0] in, output reg [3:0] out);
  always@(posedge clk)begin
    if(rst) out <= 4'd0;
    else if(ld)
      out <= in;
  end
endmodule
