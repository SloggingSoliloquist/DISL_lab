`include "q2.v"


module q2_tb();
reg x, clk, Resetn;
wire A, B; 

q2 q2_inst(A, B, x, clk, Resetn);
initial
begin
clk=0;
forever #20 clk=~clk;
end
initial
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0, q2_tb);
Resetn=0;
#40;
x=0;Resetn=1;
#40;
x=1;Resetn=1;
#40;
x=1;Resetn=1;
#40;
x=0;Resetn=1;
#40;
end
endmodule


