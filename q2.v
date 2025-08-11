module q2(a, b, c, d, f, f1);

input a, b, c, d;
output f, f1;

//gate level primitives
nand(b_not, b, b);
nand(d_not, d,d);
nand(a_not, a, a);
nand(c_not, c,c);
nand(e, b_not, d_not);
nand(g, a_not, c_not, d);
nand(h, b_not, c_not);
nand(f1, e, g,h);

assign f=((~b)&(~d))|((~b)&(~c))|((~a)&(~c)&d);
//assign f1=((b~&b)~&(d~&d))~&((a~&a)~&(c~&c)~&d)~&((b~&b)~&(c~&c));
endmodule
