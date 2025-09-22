`timescale 1ns/1ns
`include "priority_enc_16to4.v" 

module priority_enc_16to4_tb();
reg[15:0] w; 
wire[3:0] y;
wire z;

priority_enc_16to4 pri(w, y, z);
initial
begin

$dumpfile("priority_enc_16to4_tb.vcd");
$dumpvars(0,priority_enc_16to4_tb);

w =15;
#10;
w =16;
#10;
w =20;
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
