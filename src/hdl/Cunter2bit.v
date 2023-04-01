`timescale 1ns/1ns
module Counter2bit(input [1:0]in_load, input clk, en, ld, output reg [1:0]cnt, output co);
    always @(posedge clk) begin
      if (ld) cnt <= in_load;
      else if (en) cnt <= cnt + 1;
    end
    assign co = &{cnt, ~ld};
endmodule
