module jkff(Q,Clk, J, K, Resetn);
input J, K, Clk, Resetn; 
output reg Q;
 always@(posedge Clk)
 if(Resetn)
 Q<=0;
 else
 begin
 case({J,K})
 0:Q<=Q;
 1:Q<=0;
 2:Q<=1;
 3:Q<=~Q;
 endcase
 end
 endmodule
