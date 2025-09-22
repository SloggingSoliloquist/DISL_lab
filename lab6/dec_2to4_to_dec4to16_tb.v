`timescale 1ns/1ns
`include "dec_2to4_to_dec4to16.v"

module dec_2to4_to_dec4to16_tb();
reg[3:0] w; 
reg en; 
wire[15:0] y; 

dec_4to16 dec(w, y, en);
initial
begin
$dumpfile("dec_2to4_to_dec4to16_tb.vcd");
$dumpvars(0, dec_2to4_to_dec4to16_tb);

w=15; en= 1; 
#10;
w=11; en= 1; 
#10;
w=10; en= 1; 
#10;
w=9; en= 1; 
#10;
w=8; en= 1; 
#10;
w=4; en= 1; 
#10;
w=3; en= 1; 
#10;
w=1; en= 1; 
#10;

end
endmodule

