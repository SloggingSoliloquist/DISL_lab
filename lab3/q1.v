module q1(a, b, c, d, f, f1);

input a, b, c, d;
output f, f1;


assign f=((~a)|b)&((~c)|d);
assign f1=((a~|a)~|b)~|((c~|c)~|d);

endmodule
