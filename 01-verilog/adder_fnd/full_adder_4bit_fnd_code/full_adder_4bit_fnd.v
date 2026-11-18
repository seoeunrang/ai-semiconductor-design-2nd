`timescale 1ns / 1ps


module full_adder_4bit_fnd(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] fnd_font,
    output [3:0] fnd_com
    );
    
    wire [3:0] w_bin;
    assign fnd_com = 4'b1110;


    BCD_decoder U_BCD(
    .bin(w_bin),
    .fnd_font(fnd_font)
    );

    full_adder_4bit U_FA_4BIT(
    .a(a),
    .b(b),
    .cin(1'b0),
    .s(w_bin),
    .c(c)
);
endmodule


