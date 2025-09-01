module four_bit_comparator(a, b, i, a_eq_b, a_gt_b, a_lt_b);
input [3:0] a, b;
output [3:0] i;
output a_eq_b, a_gt_b, a_lt_b;
wire c1, c2, c3, c4;
xnor(i[3], a[3], b[3]);
xnor(i[2], a[2], b[2]);
xnor(i[1], a[1], b[1]);
xnor(i[0], a[0], b[0]);


assign c1 =(a[3]&(~b[3]));
assign c2 = (i[3]&a[2]&(~b[2]));
assign c3 = (i[2]&i[3]&a[1]&(~b[1]));
assign c4 = (i[1]&i[2]&i[3]&a[0]&(~b[0]));
assign a_eq_b = i[3]&i[2]&i[1]&i[0];
assign a_gt_b = c1|c2|c3|c4;
assign a_lt_b = ~(a_eq_b|a_gt_b);

endmodule
