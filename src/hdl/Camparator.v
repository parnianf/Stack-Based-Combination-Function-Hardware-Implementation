`timescale 1ns/1ns
module ComparatorEqual(input[3:0] in0, in1, output eq);
  assign eq = (in0 == in1) ? 1 : 0;
endmodule