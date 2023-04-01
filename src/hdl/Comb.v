`timescale 1ns/1ns
module Comb(input clk, rst, start, input[3:0] n, m, output done, output[12:0] result);
  
  wire push, pop, ld_n_in_reg, ld_m_in_reg, ld_n, ld_m, ld_cnt, en_cnt, en_acc, sel_stack, sel_n_reg, sel_m_reg, sel_m_stack, is_empty, eq1, eq2, cout;
  Datapath dp(clk, rst, push, pop, ld_n_in_reg, ld_m_in_reg, ld_n, ld_m, ld_cnt, en_cnt, en_acc, sel_stack, sel_n_reg, sel_m_reg, sel_m_stack,
    n, m, is_empty, eq1, eq2, cout, result);
  
  Controller cu(clk, rst, start, is_empty, eq1, eq2, cout, push, pop, ld_n_in_reg, ld_m_in_reg, ld_n, ld_m, ld_cnt, en_cnt, en_acc,
    sel_stack, sel_n_reg, sel_m_reg, sel_m_stack, rst_dp, done);
endmodule
