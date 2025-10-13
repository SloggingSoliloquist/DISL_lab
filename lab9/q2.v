`include "tff.v"

module q2(A, B, x, clk, Resetn);
input x, clk, Resetn;
output A, B; 
wire TA, TB; 

assign TA=((~A)&B)|(B&(~x));
assign TB= (A&(~x))|((~B)&(~x))|((~A)&B&x);
tff tffa(A, TA, Resetn,clk);
tff tffb(B, TB, Resetn, clk);

endmodule
