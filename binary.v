// Implement binary state machine
module binary(
input  wire clk,
input  wire reset,   
input  wire w,
output wire z,
output wire [2:0] state
);
wire [2:0]state_r;
wire [2:0]state_next;
assign state_next[0] = (~w & ~state_r[1] & state_r[0])|(~w & state_r[1] & state_r[0])|(w & ~state_r[2] & ~state_r[1])|(w & state_r[1]&~state_r[0]);
assign state_next[1] = (~state_r[1]& state_r[0])|(state_r[1]&~state_r[0])|(w  &state_r[1] & ~state_r[0]);
assign state_next[2] =w &(state_r[2] |state_r[1] & state_r[0]);
assign z = (state_r == 3'b010) | (state_r == 3'b100);
assign state = state_r;
dff ff0(.Default(1'b0), .D(state_next[0]), .clk(clk), .reset(reset), .Q(state_r[0]));
dff ff1(.Default(1'b0), .D(state_next[1]), .clk(clk), .reset(reset), .Q(state_r[1]));
dff ff2(.Default(1'b0), .D(state_next[2]), .clk(clk), .reset(reset), .Q(state_r[2]));
endmodule
