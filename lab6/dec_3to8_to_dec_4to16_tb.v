`timescale 1ns/1ns
`include "dec_3to8_to_dec_4to16.v" 

module dec_3to8_to_dec_4to16_tb();
reg [3:0] w; 
wire [15:0] y; 
reg en; 

dec_4to16 dec(w, y, en);
initial
begin
$dumpfile("dec_3to8_to_dec_4to16_tb.vcd");
$dumpvars(0, dec_3to8_to_dec_4to16_tb);
w = 0; en = 1; 
#10;
w = 2; en = 1; 
#10;
w = 4; en = 1; 
#10;
w = 7; en = 1; 
#10;
w = 14; en = 1; 
#10;
w = 13; en = 1; 
#10;
w = 12; en = 1; 
#10;
w = 10; en = 1; 
#10;
$display("done");
end
endmodule
