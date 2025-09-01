`timescale 1ns/1ns
`include "two_one_to_four_one_mux.v"

module two_one_to_four_one_mux_tb();
reg [3:0] w;
reg [1:0]s;
wire op;

two_one_to_four_one_mux mux(w, s, op);
initial
begin

$dumpfile("two_one_to_four_one_mux_tb.vcd");
$dumpvars(0, two_one_to_four_one_mux_tb);

w=4'b1010;s=0;
#10;
w=4'b1010;s=1;
#10;
w=4'b1010;s=2;
#10;
w=4'b1010;s=3;
#10;


end
endmodule

