`timescale 1ns/1ns
`include "four_bit_comparator.v"

module four_bit_comparator_tb();
reg[3:0] a, b;
wire [3:0] i;
wire a_eq_b, a_gt_b, a_lt_b;

four_bit_comparator comp(a, b, i, a_eq_b, a_gt_b, a_lt_b);
initial
begin

$dumpfile("four_bit_comparator_tb.vcd");
$dumpvars(0, four_bit_comparator_tb);

a=4;b=4;
#10;
a=5;b=4;
#10;
a=4;b=5;
#10;

end
endmodule

