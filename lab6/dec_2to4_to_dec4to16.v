module dec_2to4(w, y, en);
input [1:0] w; 
input en; 
output reg [3:0] y; 

always@(w or en)
case({en,w})
4:y =4'b1110;
5:y =4'b1101;
6:y =4'b1011;
7:y =4'b0111;
default:y=15;
endcase

endmodule

module dec_4to16(w, y, en);
input[3:0] w; 
input en; 
output[15:0] y; 
wire [3:0]inter;
dec_2to4 dec0(w[3:2], inter, en);
dec_2to4 dec1(w[1:0], y[3:0], ~inter[0]);
dec_2to4 dec2(w[1:0], y[7:4], ~inter[1]);
dec_2to4 dec3(w[1:0], y[11:8], ~inter[2]);
dec_2to4 dec4(w[1:0], y[15:12], ~inter[3]);

endmodule
