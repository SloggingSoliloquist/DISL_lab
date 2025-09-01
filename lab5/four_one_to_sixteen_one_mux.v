module four_one_mux(w, s, op);
input[3:0] w;
input [1:0] s;
output op;

assign op = s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);

endmodule

module four_one_to_sixteen_one_mux(w, s, op);
input [15:0] w;
input [3:0] s;
wire [3:0] mux_op;
output op;
four_one_mux mux0(w[3:0], s[1:0], mux_op[0]);
four_one_mux mux1(w[7:4], s[1:0], mux_op[1]);
four_one_mux mux2(w[11:8], s[1:0], mux_op[2]);
four_one_mux mux3(w[15:12], s[1:0], mux_op[3]);
four_one_mux mux4({mux_op[3],mux_op[2], mux_op[1], mux_op[0]}, s[3:2], op);

endmodule

