library verilog;
use verilog.vl_types.all;
entity Comb is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        n               : in     vl_logic_vector(3 downto 0);
        m               : in     vl_logic_vector(3 downto 0);
        done            : out    vl_logic;
        result          : out    vl_logic_vector(12 downto 0)
    );
end Comb;
