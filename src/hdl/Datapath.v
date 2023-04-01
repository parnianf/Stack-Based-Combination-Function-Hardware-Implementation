`timescale 1ns/1ns
module Datapath(input clk, rst, push, pop, ld_n_in_reg, ld_m_in_reg, ld_n, ld_m, ld_cnt, en_cnt, en_acc, sel_stack, sel_n_reg, sel_m_reg, sel_m_stack,
  input[3:0] n, m, output is_empty, eq1, eq2, cout, output[12:0] res);
  
  wire[3:0] n_in_reg_out, stack_in, stack_out, n_reg_in, n_reg_out, n_sub_out, m_in_reg_out, m_reg_in, m_reg_out, m_sub_out, m_stack;
  wire[1:0] cnt_out;
  Register n_in_reg(clk, rst, ld_n_in_reg, n, n_in_reg_out);
  
  Stack stack(clk, rst, push, pop, stack_in, is_empty, stack_out);
  Mux2to1 n_reg_mux(stack_out, n, sel_n_reg, n_reg_in);
  Register n_reg(clk, rst, ld_n, n_reg_in, n_reg_out);
  Subtractor sub_n(n_reg_out, 4'd1, n_sub_out);

  Register m_in_reg(clk, rst, ld_m_in_reg, m, m_in_reg_out);
  Mux2to1 m_reg_mux(stack_out, m, sel_m_reg, m_reg_in);
  Register m_reg(clk, rst, ld_m, m_reg_in, m_reg_out);
  Subtractor sub_m(m_reg_out, 4'd1, m_sub_out);
  
  ComparatorEqual cmp1(n_reg_out, m_reg_out, eq1);
  ComparatorEqual cmp2(m_reg_out, 4'd0, eq2);
  
  Mux2to1 m_stack_mux(m_sub_out, m_reg_out, sel_m_stack, m_stack);
  Mux2to1 stack_mux(n_sub_out, m_stack, sel_stack, stack_in);
  
  Counter2bit counter(2'd0, clk, en_cnt, ld_cnt, cnt_out, cout);
  Accumulator accumulator(clk, rst, en_acc, res);
  
endmodule 