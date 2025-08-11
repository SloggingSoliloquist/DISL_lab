`timescale 1ns/1ns
`include "q4.v"

module q4_tb();
reg a, b, c, d;
wire f,f1;

q4 q4_instance(a, b, c, d, f, f1);

initial
begin

$dumpfile("q4_tb.vcd");
$dumpvars(0, q4_tb);

a=1'b0; b=1'b0; c=1'b0; d=1'b0;
#10;
a=1'b0; b=1'b0; c=1'b0; d=1'b1;
#10;
a=1'b0; b=1'b0; c=1'b1; d=1'b0;
#10;
a=1'b0; b=1'b0; c=1'b1; d=1'b1;
#10;
a=1'b0; b=1'b1; c=1'b0; d=1'b0;
#10;
a=1'b0; b=1'b1; c=1'b0; d=1'b1;
#10;
a=1'b0; b=1'b1; c=1'b1; d=1'b0;
#10;
a=1'b0; b=1'b1; c=1'b1; d=1'b1;
#10;
a=1'b1; b=1'b0; c=1'b0; d=1'b0;
#10;
a=1'b1; b=1'b0; c=1'b0; d=1'b1;
#10;
a=1'b1; b=1'b0; c=1'b1; d=1'b0;
#10;
a=1'b1; b=1'b0; c=1'b1; d=1'b1;
#10;
a=1'b1; b=1'b1; c=1'b0; d=1'b0;
#10;
a=1'b1; b=1'b1; c=1'b0; d=1'b1;
#10;
a=1'b1; b=1'b1; c=1'b1; d=1'b0;
#10;
a=1'b1; b=1'b1; c=1'b1; d=1'b1;
#10;

$display("Done");
end
endmodule
