`include "jkff.v"

module q1(A, B, E, x, clk, Resetn);
output A, B;
input E, x, clk, Resetn;
wire JA, KA, JB, KB;

assign JA=(B&E&x)|((~B)&E&(~x));
assign KA=(B&E&x)|((~B)&E&(~x));
assign JB=E;
assign KB=E;

jkff ff0(A, clk, JA, KA, Resetn);
jkff ff1(B, clk, JB, KB, Resetn);

endmodule
