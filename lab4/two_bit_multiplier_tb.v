`timescale 1ns/1ns
`include "two_bit_multiplier.v"

module two_bit_multiplier_tb();
reg x0, x1, y0, y1;
wire p0, p1, p2, c_out;

two_bit_multiplier two_bit_multiplier_instance(x0, x1, y0, y1, p0, p1, p2, c_out);
initial
begin

$dumpfile("two_bit_multiplier_tb.vcd");
$dumpvars(0, two_bit_multiplier_tb);

x0 =1'b0;x1=1'b1;y0 =1'b1;y1=1'b0;
#10;
x0 =1'b0;x1=1'b1;y0 =1'b1;y1=1'b1;
#10;
x0 =1'b1;x1=1'b1;y0 =1'b0;y1=1'b1;
#10;
x0 =1'b1;x1=1'b0;y0 =1'b0;y1=1'b1;
#10;

$display("Test complete");
end
endmodule
