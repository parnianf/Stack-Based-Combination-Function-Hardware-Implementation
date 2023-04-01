library verilog;
use verilog.vl_types.all;
entity Counter2bit is
    port(
        in_load         : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        en              : in     vl_logic;
        ld              : in     vl_logic;
        cnt             : out    vl_logic_vector(1 downto 0);
        co              : out    vl_logic
    );
end Counter2bit;
