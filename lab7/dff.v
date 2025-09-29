module dff(D, clk, Q, Resetn);
input D, clk, Resetn; 
output Q; 
reg Q;
always@(posedge clk, posedge Resetn)
if(Resetn)
Q<=0;
else
Q<=D; 
endmodule
