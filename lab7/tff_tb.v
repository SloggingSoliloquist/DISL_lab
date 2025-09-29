`timescale 1ns/1ns
`include "tff.v" 

module tff_tb(); 
reg T, Clk, Resetn; 
wire Q; 

tff f(Q, T, Resetn, Clk);
initial
begin
$dumpfile("tff_tb.vcd");
$dumpvars(0, tff_tb); 

Clk=0; 
forever#20 Clk = ~Clk; 
end
initial
begin
T=0; Resetn = 0; 
#20; 
T=0; Resetn = 1; 
#20; 
T=1; Resetn = 1; 
#20; 
T=1; Resetn = 1; 
#20; 
T=0; Resetn = 1; 
#20; 
T=1; Resetn = 0; 
#20; 


end
endmodule
