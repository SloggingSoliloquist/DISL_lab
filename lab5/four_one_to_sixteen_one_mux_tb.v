`timescale 1ns/1ns
`include "four_one_to_sixteen_one_mux.v"

module four_one_to_sixteen_one_mux_tb();
reg [15:0] w;
reg [3:0] s;
wire op;
four_one_to_sixteen_one_mux mux(w, s, op);
initial
begin

$dumpfile("four_one_to_sixteen_one_mux_tb.vcd");
$dumpvars(0, four_one_to_sixteen_one_mux_tb);

w=16'b1010101010101010;s=0;
#10;
w=16'b1010101010101010;s=1;
#10;
w=16'b1010101010101010;s=3;
#10;
w=16'b1010101010101010;s=4;
#10;
w=16'b1010101010101010;s=5;
#10;
w=16'b1010101010101010;s=6;
#10;
w=16'b1010101010101010;s=8;
#10;

$display("Hi");
end
endmodule

