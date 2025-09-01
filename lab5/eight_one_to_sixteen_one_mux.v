module eight_one_mux(w, s, op);
input [7:0] w;
input [2:0] s;
output op;
reg op;
always @(w, s)
case (s)
0:op = w[0];
1: op = w[1];
2: op = w[2];
3: op = w[3];
4: op = w[4];
5: op = w[5];
6: op = w[6];
7: op = w[7];

endcase
endmodule

module two_one_mux(w, s, op_2);
input [1:0] w;
input s;
output op_2;
reg op_2;
always @(s, w)
if(s==0)
op_2 = w[0];
else
op_2 = w[1];
endmodule

module eight_one_to_sixteen_one_mux(w, s, op);
input [15:0] w;
input [3:0] s;
output op;
wire mux0_op, mux_op1;

eight_one_mux mux0(w[7:0], s[2:0], mux0_op);
eight_one_mux mux1(w[15:8], s[2:0], mux1_op);
two_one_mux mux({mux1_op, mux0_op}, s[3], op);

endmodule




