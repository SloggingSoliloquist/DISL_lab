module dec_2to4(w, y, en);
input [1:0] w; 
input en; 
output reg [3:0] y;
 

always@(w, en)
if(en!=0)
begin
if(w==0)
y=1;
else if(w==1)
y = 2;
else if(w==2)
y=4;
else if(w==3)
y =8;
end
else
y =0;
endmodule

module dec_4to_8(w, y, en);
input[2:0] w; 
input en;
output[7:0] y; 

dec_2to4 dec0(w[1:0], y[3:0], (~w[2]&en));
dec_2to4 dec1(w[1:0], y[7:4], (w[2]&en));

endmodule
