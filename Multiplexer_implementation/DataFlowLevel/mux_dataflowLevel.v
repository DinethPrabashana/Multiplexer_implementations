/* this verilog code represent how we can implement 4 to 1 mux with 
Dataflow Level modeling. Here we have used conditional operators to implement 
the functionality of the 4 to 1 mux  */

//module declaration 
// ports list
module MUX4to1(out, i0, i1, i2, i3, s0, s1);
// ports declaration wether the ports are input or output 
input i0, i1, i2, i3 ;
input s0, s1 ;
output out ;
// conditional statment
assign out = s1?(s0?i3:i2):(s0?i1:i0);
endmodule 
// the stimulus block that we initially genarated wil not change 
//top level module 
