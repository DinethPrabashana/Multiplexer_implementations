module stimulus ;
//declaring the ports 
//remember to use heirarchicle naming
reg SEL1,SEL0;
reg I0,I1,I2,I3 ;
wire OUT ;

//instantiating the MUX_4to1 module , note this is in_order instantiation 
MUX_4to1 mx(OUT, I0, I1, I2, I3, SEL0, SEL1);

//behavioural block 
initial 
begin 
    I0 = 1; I1 = 0; I2 = 1; I3 = 0;
    $monitor($time , " S0 = %b  S1 = %b  OUTPUT = %b ", SEL0, SEL1, OUT);

    // selecting I0
    #1 SEL0 = 0 ; SEL1 = 0 ;

    // selecting I1
    #1 SEL0 = 1 ; SEL1 = 0 ;
end 
endmodule 
