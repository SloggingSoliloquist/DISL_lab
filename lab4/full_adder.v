module full_adder(x, y, cin, sum, cout);

input x, y, cin;
output sum, cout;

assign sum=cin^x^y;
assign cout=(x&y)|(x&cin)|(cin&y);

endmodule
