module tb_mux_4to1;

// Inputs
reg in0, in1, in2, in3, s0, s1;

// Output
wire out;

// Instantiate the module
MUX_4to1 mux_inst(.out(out), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .s0(s0), .s1(s1));

// Stimulus
initial begin
    $dumpfile("tb_mux_4to1.vcd");
    $dumpvars(0, tb_mux_4to1);

    // Test case 1: s0=0, s1=0
    in0 = 1; in1 = 0; in2 = 0; in3 = 0;
    s0 = 0; s1 = 0;
    #10;

    // Test case 2: s0=0, s1=1
    in0 = 0; in1 = 1; in2 = 0; in3 = 0;
    s0 = 0; s1 = 1;
    #10;

    // Test case 3: s0=1, s1=0
    in0 = 0; in1 = 0; in2 = 1; in3 = 0;
    s0 = 1; s1 = 0;
    #10;

    // Test case 4: s0=1, s1=1
    in0 = 0; in1 = 0; in2 = 0; in3 = 1;
    s0 = 1; s1 = 1;
    #10;

    // Test case 5: invalid selection
    in0 = 0; in1 = 0; in2 = 0; in3 = 0;
    s0 = 1; s1 = 1;
    #10;

    // Add more test cases as needed

    $finish; // End simulation
end

endmodule
