`timescale 1ns/1ns
`include "jkff.v"

module jkff_tb();
reg J, K, Clk, Resetn; 
wire Q;

jkff ff(Q,Clk, J, K, Resetn);
initial
begin
$dumpfile("jkff_tb.vcd");
$dumpvars(0, jkff_tb);
Clk=0;
forever#20 Clk = ~Clk; 
end
initial
begin
J = 0; K =0; Resetn = 1;
#40;
J = 0; K =0; Resetn = 0;
#40;
J = 1; K =1; Resetn = 0;
#40;
J = 0; K =1; Resetn = 0;
#40;
J = 0; K =1; Resetn = 0;
#40;
J = 0; K =0; Resetn = 0;
#20;

end
endmodule

