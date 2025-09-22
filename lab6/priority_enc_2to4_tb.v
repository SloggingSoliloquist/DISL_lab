`timescale 1ns/1ns
`include "priority_enc_2to4.v" 

module priority_enc_2to4_tb();
reg [3:0] w; 
wire [1:0] y; 
wire z; 

priority_enc_2to4 priority(w, y, z);
initial
begin

$dumpfile("priority_enc_2to4_tb.vcd");
$dumpvars(0,priority_enc_2to4_tb);

w =8;
#10;
w =9;
#10;
w =10;
#10;
w =4;
#10;
w =5;
#10;
w =7;
#10;
w =2;
#10;
w =3;
#10;
w =10;
#10;
w =1;
#10;
w =0;
#10;

end
endmodule
