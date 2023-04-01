library verilog;
use verilog.vl_types.all;
entity ComparatorEqual is
    port(
        in0             : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector(3 downto 0);
        eq              : out    vl_logic
    );
end ComparatorEqual;
