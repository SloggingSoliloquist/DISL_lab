`timescale 1ns/1ns
`include "shift_reg_6_bit.v"

module shift_reg_6_bit_tb();
reg I;
reg clk; 
wire [5:0]Q; 

shift_reg_6_bit shift_reg(I, clk, Q);
initial
begin
clk=0;
forever #20 clk=~clk;
end
initial
begin
$dumpfile("shift_reg_6_bit_tb.vcd");
$dumpvars(0, shift_reg_6_bit_tb);

I=1; #40;
I=0; #40;
I=0; #40;
I=1; #40;
I=0; #40;
I=1; #40;
#40;

end
endmodule

