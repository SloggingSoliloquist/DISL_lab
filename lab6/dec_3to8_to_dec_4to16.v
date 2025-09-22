module dec_3to8(w, y, en);
input[2:0] w; 
output reg [7:0] y; 
input en; 
integer k;
always@(w, en)

for( k=0; k<=7; k= k+1)
if((w==k) && (en==1))
y[k]=1; 
else
y[k]=0;
endmodule

module dec_4to16(w, y, en); 
input [3:0] w; 
output [15:0] y; 
input en; 
dec_3to8 dec0(w[2:0], y[7:0], ((~w[3])&&en));
dec_3to8 dec1(w[2:0], y[15:8], w[3]&&en);

endmodule
