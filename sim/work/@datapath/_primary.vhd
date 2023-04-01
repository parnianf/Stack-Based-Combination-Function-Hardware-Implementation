library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        push            : in     vl_logic;
        pop             : in     vl_logic;
        ld_n_in_reg     : in     vl_logic;
        ld_m_in_reg     : in     vl_logic;
        ld_n            : in     vl_logic;
        ld_m            : in     vl_logic;
        ld_cnt          : in     vl_logic;
        en_cnt          : in     vl_logic;
        en_acc          : in     vl_logic;
        sel_stack       : in     vl_logic;
        sel_n_reg       : in     vl_logic;
        sel_m_reg       : in     vl_logic;
        sel_m_stack     : in     vl_logic;
        n               : in     vl_logic_vector(3 downto 0);
        m               : in     vl_logic_vector(3 downto 0);
        is_empty        : out    vl_logic;
        eq1             : out    vl_logic;
        eq2             : out    vl_logic;
        cout            : out    vl_logic;
        res             : out    vl_logic_vector(12 downto 0)
    );
end Datapath;
