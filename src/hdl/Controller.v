`timescale 1ns/1ns
module Controller(input clk, rst, start, is_empty, eq1, eq2, cout, output reg push, pop, ld_n_in_reg, ld_m_in_reg, ld_n, ld_m, ld_cnt, en_cnt, en_acc,
  sel_stack, sel_n_reg, sel_m_reg, sel_m_stack, rst_dp, done);         
  reg [3:0] ns, ps;
  parameter [3:0] q0 = 0, q1 = 1, q2 = 2, q3 = 3, q4 = 4, q5 = 5, q6 = 6, q7 = 7, q8 = 8, q9 = 9;                
  always @(ps) begin
    ns = 4'b0000;
    {push, pop, ld_n_in_reg, ld_m_in_reg, ld_n, ld_m, ld_cnt, en_cnt, en_acc, sel_stack, sel_n_reg, sel_m_reg, sel_m_stack, rst_dp, done} = 15'b000000000000000;
    case(ps)
      q0: begin ns = start==1'b1 ? q1 : q0; {ld_n, ld_m, sel_n_reg, sel_m_reg, rst_dp, ld_cnt} = 6'b111111; end
      q1: begin 
            if( (eq1==1'b1) || (eq2==1'b1)) ns = q8;
            else ns = q2;
      end
      q2: begin ns = q3; {push, en_cnt} = 2'b11; sel_stack = 1'b0; end
      q3: begin ns = cout == 1 ? q4 : q2; {sel_stack, push, en_cnt} = 3'b111; sel_m_stack = cout == 1? 1 : 0; end
      q4: begin ns = q5; {pop, ld_cnt} = 2'b11; end
      q5: begin ns = q6; {pop, ld_m} = 2'b11; end
      q6: begin ld_n = 1'b1; ns = q7; end
      q7: begin
                if( (eq1==1'b1) || (eq2==1'b1)) ns = q8;
                else if ({eq1, eq2} == 2'b00) ns = q2;
        end
      q8: begin ns = is_empty == 1 ? q9 : q4; en_acc = 1'b1; end 
      q9: begin ns = q0; done=1; end
    endcase
  end       
                    
  always@(posedge clk, posedge rst)begin
    if(rst)
      ps <= q0;
    else
      ps <= ns;
  end         
endmodule