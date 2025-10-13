`include "q1.v"


module q1_tb();
wire A, B;
reg E, x, clk, Resetn;

q1 q1_inst(A, B, E, x, clk, Resetn);
initial
begin
clk=0;
forever #20 clk=~clk;
end
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0, q1_tb);
Resetn=0;
#40;
E=0;x=0;Resetn=1;
#40;
E=0;x=1;Resetn=1;
#40;
E=1;x=0;Resetn=1;
#40;
E=1;x=0;Resetn=1;
#40;
E=1;x=0;Resetn=1;
#40;
E=1;x=0;Resetn=1;
#40;
E=1;x=0;Resetn=1;
#40;
E=1;x=1;Resetn=1;
#40;
end
endmodule


