module tff(Q, T, Resetn, Clk);
input T, Clk, Resetn; 
output Q; 
reg Q; 

always@(posedge Clk, negedge Resetn)
if(!Resetn)
Q<=0;
else if(T==1)
Q<=~Q;
endmodule
