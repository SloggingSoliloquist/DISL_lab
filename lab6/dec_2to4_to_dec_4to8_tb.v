`timescale 1ns/1ns
`include "dec_2to4_to_dec_4to8.v" 

module dec_2to4_to_dec_4to8_tb();
reg[2:0] w; 
reg en;
wire[7:0] y; 

dec_4to_8 dec(w, y, en);
initial
begin
$dumpfile("dec_2to4_to_dec_4to8_tb.vcd");
$dumpvars(0, dec_2to4_to_dec_4to8_tb);

w=0; en = 1;
#10;
w=1; en = 1;
#10;
w=2; en = 1;
#10;
w=3; en = 1;
#10;
w=4; en = 1;
#10;
w=5; en = 1;
#10;
w=6; en = 1;
#10;
w=7; en = 1;
#10;

$display("done");
end
endmodule
