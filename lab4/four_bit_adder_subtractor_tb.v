`timescale 1ns/1ns
`include "four_bit_adder_subtractor.v"

module four_bit_adder_subtractor_tb();
reg x0, x1, x2, x3, y0, y1, y2, y3, add_sub;
wire  s0, s1, s2, s3, carry_out;

four_bit_adder_subtractor four_bit_adder_subtractor_instance(x0, x1, x2, x3, y0, y1, y2, y3, add_sub, s0, s1, s2, s3, carry_out);

initial
begin

$dumpfile("four_bit_adder_subtractor.vcd");
$dumpvars(0, four_bit_adder_subtractor_tb);

add_sub=1'b0;
x0=1'b1; x1=1'b1; x2=1'b0; x3=1'b1;
y0=1'b1; y1=1'b0; y2=1'b1; y3=1'b1; 
#20;
add_sub=1'b1;
x0=1'b1; x1=1'b1; x2=1'b0; x3=1'b1;
y0=1'b1; y1=1'b1; y2=1'b1; y3=1'b1; 
#20;
$display("Test complete");
end
endmodule

