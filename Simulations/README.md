### TESTBENCH
This is a slightly modfied testbench compared to the given one 
```
`timescale 10ns/1ns
module tb;
//declaring the ports 
//remember to use heirarchicle naming
reg SEL1,SEL0;
reg I0,I1,I2,I3 ;
wire OUT ;

//instantiating the MUX_4to1 module , note this is in_order instantiation 
MUX mx(OUT, I0, I1, I2, I3, SEL0, SEL1);

//behavioural block 
initial 
begin 
    I0 = 1'b1; I1 =1'b 0; I2 =1'b 1; I3 =1'b 0;
	 SEL0 = 1 ; SEL1 = 1 ;
    $monitor($time , " S0 = %b  S1 = %b  OUTPUT = %b ", SEL0, SEL1, OUT);

end 

always
begin 
	 #5 I0 = 1'b1; I1 =1'b 0; I2 =1'b 1; I3 =1'b 0;
	 #5 I0 = 1'b1; I1 =1'b 0; I2 =1'b 1; I3 =1'b 0;

    // selecting I0
    #5 SEL0 = 0 ; SEL1 = 0 ;

    // selecting I1
    #5 SEL0 = 1 ; SEL1 = 0 ;
	 
	 // selecting I1
    #5 SEL0 = 0 ; SEL1 = 1 ;
	 
	 // selecting I1
    #5 SEL0 = 1 ; SEL1 = 1 ;
end 
	 
endmodule 
