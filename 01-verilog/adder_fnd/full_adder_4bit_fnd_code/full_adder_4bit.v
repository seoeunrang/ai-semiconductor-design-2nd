`timescale 1ns / 1ps

module full_adder_4bit(
    input   [3:0] a,
    input   [3:0] b,
    input         cin,
    output  [3:0] s,
    output        c
);

    wire w_c1, w_c2, w_c3 ;

full_adder U_FA1(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .s(s[0]),
    .c(w_c1)
);


full_adder U_FA2(
    .a(a[1]),
    .b(b[1]),
    .cin(w_c1),
    .s(s[1]),
    .c(w_c2)
);


full_adder U_FA3(
    .a(a[2]),
    .b(b[2]),
    .cin(w_c2),
    .s(s[2]),
    .c(w_c3)
);


full_adder U_FA4(
    .a(a[3]),
    .b(b[3]),
    .cin(w_c3),
    .s(s[3]),
    .c(c)
);


endmodule
