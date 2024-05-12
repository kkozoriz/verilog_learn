`timescale 1ns/100ps
`include "counter.v"

module testbench();
    reg clk = 1'b0;

    always begin
        #1 clk = ~clk;
    end

    counter counter(.clk(clk));

    initial begin
        $dumpvars;      /* Open for dump of signals */
        $display("Test started...");   /* Write to console */
        #50 $finish;    /* Stop simulation after 10ns */
    end
endmodule