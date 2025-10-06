`timescale 1ns/1ns
`include "johnson_counter_5_bit.v"

module johnson_counter_5_bit_tb();
reg clk, Resetn;
wire [4:0] q;

johnson_counter_5_bit johnson(clk,Resetn, q);
initial
begin
clk=0;
forever #20 clk=~clk;
end
initial
begin
$dumpfile("johnson_counter_5_bit_tb.vcd");
$dumpvars(0, johnson_counter_5_bit_tb);
Resetn=0;
#40;
Resetn=1;
end
endmodule

