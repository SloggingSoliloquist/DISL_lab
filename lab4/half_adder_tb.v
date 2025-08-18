`timescale 1ns/1ns
`include "half_adder.v"

module half_adder_tb();
reg x,y;
wire sum, carry;

half_adder half_adder_instance(x, y, sum, carry);
initial
begin

$dumpfile("half_adder_tb.vcd");
$dumpvars(0, half_adder_tb);

x =1'b0;y=1'b0;
#10;
x =1'b0;y=1'b1;
#10;
x =1'b1;y=1'b0;
#10;
x =1'b1;y=1'b1;
#10;

$display("Test complete");
end
endmodule
