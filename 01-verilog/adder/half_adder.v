`timescale 1ns / 1ps

module half_adder(
    input a,
    input b,
    input cin,
    output s,
    output c
);

    assign s = a ^ b;
    assign c = a & b;

endmodule
 