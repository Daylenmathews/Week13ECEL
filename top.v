module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);
    // Hook up binary and one-hot state machines
   wire z_onehot, z_binary;
     
    wire [2:0] binary_state;
   //wire [2:0];
oneshot one(
.w(sw),
.clk(btnC),
.reset(btnU),
.z(z_onehot),
.A(led[2]),
.B(led[3]),
.C(led[4]),
.D(led[5]),
.E(led[6])
 ); 
binary bn(

.w(sw),
.clk(btnC),
.reset(btnU),
.z(z_binary),
.state(binary_state)
 );    
   //assign led[9:7] = ;
 assign led[9] = binary_state[2];
 assign led[8] = binary_state[1];
 assign led[7] = binary_state[0];

 assign led[1] = z_binary;
 assign led[0] = z_onehot;
endmodule
