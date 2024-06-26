//this is a 4 to 1 multiplexer 
//module should have 4 input lines i0,i1,i2,i3 and 2 selection lines s0,s1 and one output port
module MUX_4to1(out, i0, i1, i2, i3, s0, s1);
//declaring the ports 
input i0, i1, i2, i3 ;
input s0, s1;
output out ;

//declaring the internal nets, s1n , s0n, y0, y1, y2, y3
//which are corresponding external ports of not and AND gates
wire s1n,s0n;
wire y0, y1, y2, y3 ;
//instantiating AND, NOT gates 
not n1(s1n, s1);
not n2(s0n, s0);

// 3 input and gates 
and (y0, i0, s1n, s0n);
and (y1, i1, s1n, s0);
and (y2, i2, s1, s0n);
and (y3, i3, s1, s0);

// 4 input OR gate 
or (out, y0, y1, y2, y3);

endmodule

