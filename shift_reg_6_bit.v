module shift_reg_6_bit(I, clk, Q);
input I;
input clk; 
output reg [5:0]Q; 

always@(posedge clk)
begin
Q[0]<=I;
Q[1]<=Q[0];
Q[2]<=Q[1];
Q[3]<=Q[2];
Q[4]<=Q[3];
Q[5]<=Q[4];
end
endmodule
