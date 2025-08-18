`include "four_bit_adder.v"

module four_bit_adder_subtractor(x0, x1, x2, x3, y0, y1, y2, y3, add_sub, s0, s1, s2, s3, carry_out);
input x0, x1, x2, x3, y0, y1, y2, y3, add_sub;
output s0, s1, s2, s3, carry_out;

four_bit_adder four_bit_adder_instance(x0, x1, x2, x3, y0^add_sub, y1^add_sub, y2^add_sub, y3^add_sub, add_sub, s0, s1, s2, s3, carry_out);

endmodule
