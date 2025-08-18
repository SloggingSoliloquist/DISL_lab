`timescale 1ns/1ns
`include "full_adder.v"

module full_adder_tb();
reg x,y, cin;
wire sum, cout;

full_adder full_adder_instance(x, y, cin, sum, cout);
initial
begin

$dumpfile("full_adder_tb.vcd");
$dumpvars(0, full_adder_tb);

cin=1'b0;x =1'b0;y=1'b0;
#10;
cin=1'b0;x =1'b0;y=1'b1;
#10;
cin=1'b0;x =1'b1;y=1'b0;
#10;
cin=1'b0;x =1'b1;y=1'b1;
#10;
cin=1'b1;x =1'b0;y=1'b0;
#10;
cin=1'b1;x =1'b0;y=1'b1;
#10;
cin=1'b1;x =1'b1;y=1'b0;
#10;
cin=1'b1;x =1'b1;y=1'b1;
#10;

$display("Test complete");
end
endmodule
