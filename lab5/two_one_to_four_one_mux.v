module two_one_mux(w, s, op);
input [1:0] w;
input s;
output op;
reg op;
always @(s, w[0], w[1])
if(s==0)
op = w[0];
else
op = w[1];
//assign op = (w[0]&(~s))|(w[1]&s);
endmodule

module two_one_to_four_one_mux(w, s, op);
input [3:0] w;
input [1:0]s;
output op;
wire mux0_op, mux_1_op;

two_one_mux mux0(w[1:0], s[0], mux0_op);
two_one_mux mux1(w[3:2], s[0], mux1_op);
two_one_mux mux2({mux1_op,mux0_op},s[1], op);

endmodule



