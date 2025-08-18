`include "half_adder.v"

module two_bit_multiplier(x0, x1, y0, y1, p0, p1, p2, c_out);
input x0, x1, y0, y1;
output p0, p1, p2, c_out;
assign p0 = x0&y0;
half_adder adder0(x1&y0, x0&y1, p1, c1);
half_adder adder1(c1, x1&y1, p2, c_out);
endmodule


