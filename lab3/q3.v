module q3(a, b, c, d, f, f1);

input a, b, c, d;
output f, f1;

//gate level primitives
nand(a_not, a, a);
nand(c_not, c,c);
nand(e, a_not, d);
nand(g, c_not, d);
nand(f1, e, g);

assign f=((~a)&d)|((~c)&d);
endmodule
