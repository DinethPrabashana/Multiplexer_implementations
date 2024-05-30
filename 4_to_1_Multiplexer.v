module MUX_4to1(out, in0,in1,in2,in3,s0,s1);
input in0,in1,in2,in3 ;
input s0,s1 ;
output out ;
reg out ; // no nets can be assigned with a value inside the behavioral block
//behavioral block 
/*always@(in0 or in1 or in2 or in3 or s0 or s1)
begin : selection_bits // block name is selection bits 
    case({s1,s0})
    2'd0: out = in0 ;
    2'd1: out = in1 ;
    2'd2: out = in2 ;
    2'd3: out = in3 ;
    default: out = 1'bx ;
    endcase 
end*/ 

// condition statement behavioral block 
always @(in0 or in1 or in2 or in3 or s0 or s1)
begin 
    if ({s1,s0}==00) out = in0 ;
    else if ( {s1,s0}==01) out = in1 ;
    else if ({s1,s0}==10 ) out = in2 ;
    else if ({s1,s0}==11 ) out = in3 ;
    else $display("invalid selection");
end 

endmodule 

//top level module 
module stimulus ;
//declaring the ports 
//remember to use heirarchicle naming
reg SEL1,SEL0;
reg I0,I1,I2,I3 ;
wire OUT ;

//instantiating the MUX_4to1 module 
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

