module N_bit_register(D, clk, Resetn, Q);
parameter n =5;
input [n-1:0] D; 
input clk, Resetn;
output reg [n-1:0] Q;
always@(posedge clk, negedge Resetn)
if(!Resetn)
Q<=0;
else
Q<=D;
endmodule
