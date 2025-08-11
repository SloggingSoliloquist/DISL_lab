module q4(a, b, c, d, f, f1);

input a, b, c, d;
output f, f1;

//gate level primitives
nor(a_not, a, a);
nor(b_not,b,b);
nor(d_not,d,d);
nor(e, b_not, c);
nor(g, a_not, b_not);
nor(h, a_not, d_not);
nor(f1, e, g, h);

assign f=((~b)|c)&((~a)|(~b))&((~a)|(~d));

endmodule
