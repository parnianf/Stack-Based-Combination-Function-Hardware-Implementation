library verilog;
use verilog.vl_types.all;
entity Controller is
    generic(
        q0              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        q1              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        q2              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        q3              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        q4              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        q5              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        q6              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        q7              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        q8              : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0);
        q9              : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        is_empty        : in     vl_logic;
        eq1             : in     vl_logic;
        eq2             : in     vl_logic;
        cout            : in     vl_logic;
        push            : out    vl_logic;
        pop             : out    vl_logic;
        ld_n_in_reg     : out    vl_logic;
        ld_m_in_reg     : out    vl_logic;
        ld_n            : out    vl_logic;
        ld_m            : out    vl_logic;
        ld_cnt          : out    vl_logic;
        en_cnt          : out    vl_logic;
        en_acc          : out    vl_logic;
        sel_stack       : out    vl_logic;
        sel_n_reg       : out    vl_logic;
        sel_m_reg       : out    vl_logic;
        sel_m_stack     : out    vl_logic;
        rst_dp          : out    vl_logic;
        done            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of q0 : constant is 2;
    attribute mti_svvh_generic_type of q1 : constant is 2;
    attribute mti_svvh_generic_type of q2 : constant is 2;
    attribute mti_svvh_generic_type of q3 : constant is 2;
    attribute mti_svvh_generic_type of q4 : constant is 2;
    attribute mti_svvh_generic_type of q5 : constant is 2;
    attribute mti_svvh_generic_type of q6 : constant is 2;
    attribute mti_svvh_generic_type of q7 : constant is 2;
    attribute mti_svvh_generic_type of q8 : constant is 2;
    attribute mti_svvh_generic_type of q9 : constant is 2;
end Controller;
