`timescale 1ns/1ns
`include "dff.v" 

module dff_tb(); 
reg D, clk, Resetn; 
wire Q; 

dff f(D, clk, Q, Resetn);
initial
begin
$dumpfile("dff_tb.vcd");
$dumpvars(0, dff_tb); 

clk=0; 
forever#20 clk = ~clk; 
end
initial
begin
D=1;Resetn = 0; 
#20;
D=1;Resetn = 0; 
#20;
D=1;Resetn = 0; 
#20;
D=0;Resetn = 0; 
#20;
D=1;Resetn = 1; 
#20;
D=0;Resetn = 1; 
#20;

end
endmodule
