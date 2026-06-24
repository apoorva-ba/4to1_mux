module mux4to1_tb;

reg a, b, c, d;
reg [1:0] sel;
wire y;

// Instantiate DUT
mux4to1 dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    
    $dumpfile("mux4to1.vcd");
    $dumpvars(0, mux4to1_tb);

    
    $monitor("Time=%0t | sel=%b | a=%b b=%b c=%b d=%b | y=%b",
              $time, sel, a, b, c, d, y);

   
    a = 0; b = 0; c = 0; d = 0; sel = 2'b00;

    // Test cases
    #10 a = 1; b = 0; c = 0; d = 0; sel = 2'b00; // y = a
    #10 a = 0; b = 1; c = 0; d = 0; sel = 2'b01; // y = b
    #10 a = 0; b = 0; c = 1; d = 0; sel = 2'b10; // y = c
    #10 a = 0; b = 0; c = 0; d = 1; sel = 2'b11; // y = d

    #10 $finish;
end

endmodule