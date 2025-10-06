`timescale 1ns/1ns
`include "N_bit_register.v"

module N_bit_register_tb();
parameter n =5;
reg [n-1:0] D; 
reg clk, Resetn;
wire [n-1:0] Q;

N_bit_register register(D, clk, Resetn, Q);
initial
begin
clk=0;
forever #20 clk=~clk;
end
initial
begin
$dumpfile("N_bit_register_tb.vcd");
$dumpvars(0, N_bit_register_tb);
D=5'b10110;Resetn=0;
#40;
D=5'b10110;Resetn=1;
#40;
D=5'b01110;Resetn=1;
#40;
D=5'b10101;Resetn=1;
#40;
end
endmodule

