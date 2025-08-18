`include "four_bit_adder.v"

module bcd_adder(a0, a1, a2, a3, b0, b1, b2, b3, z1, z2, z4, z8, k, c, s1, s2, s4, s8);
input a0, a1, a2, a3, b0, b1, b2, b3;
output z1, z2, z4, z8, k, c, s1, s2, s4, s8;

four_bit_adder adder0(a0, a1, a2, a3, b0, b1, b2, b3, 0, z1, z2, z4, z8, k);
assign c = k|(z8&z4)|(z8&z2);
four_bit_adder adder0(z1, z2, z4, z8, 0, c, c, 0, 0, s1, s2, s4, s8, k);

endmodule

