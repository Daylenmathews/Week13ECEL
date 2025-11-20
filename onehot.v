// Implement one-hot state machine
module oneshot(
input  wire w,
input  wire clk,
input  wire reset,
output wire z,
output wire A,B,C, D,E
);

wire A_r, B_r, C_r, D_r, E_r;
wire anext, bnext, cnext, dnext, enext;

assign anext = 1'b0;
assign bnext = (~w) & (A_r | D_r | E_r);
assign cnext = (~w) & (B_r | C_r);
assign dnext =  w  & (A_r | B_r | C_r);
assign enext =  w  & (D_r | E_r);


assign z = C_r | E_r;    
assign A = A_r;
assign B = B_r;
assign C = C_r;
assign D = D_r;
assign E = E_r;


dff ff0(.Default(1'b1), .D(anext), .clk(clk), .reset(reset), .Q(A_r));
dff ff1(.Default(1'b0), .D(bnext), .clk(clk), .reset(reset), .Q(B_r));
dff ff2(.Default(1'b0), .D(cnext), .clk(clk), .reset(reset), .Q(C_r));
dff ff3(.Default(1'b0), .D(dnext), .clk(clk), .reset(reset), .Q(D_r));
dff ff4(.Default(1'b0), .D(enext), .clk(clk), .reset(reset), .Q(E_r));
endmodule
