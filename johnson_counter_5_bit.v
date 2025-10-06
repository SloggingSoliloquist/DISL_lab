`include "dff.v"
module johnson_counter_5_bit(clk, Resetn, q);
input clk, Resetn;
output [4:0] q;
dff ff0(~q[4], clk, q[0], Resetn);
dff ff1(q[0], clk, q[1], Resetn);
dff ff2(q[1], clk, q[2], Resetn);
dff ff3(q[2], clk, q[3], Resetn);
dff ff4(q[3], clk, q[4], Resetn);
endmodule
