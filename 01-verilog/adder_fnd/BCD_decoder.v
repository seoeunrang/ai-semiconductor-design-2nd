`timescale 1ns / 1ps



module BCD_decoder(
    input      [3:0]  bin,
    output reg [15:0] fnd_font

    );

    always @ (*) begin
        case(bin)
            4'b0000 : fnd_font = 8'hC0;
            4'b0001 : fnd_font = 8'hF9;
            4'b0010 : fnd_font = 8'hA4;
            4'b0011 : fnd_font = 8'hB0;
            4'b0100 : fnd_font = 8'h99;
            4'b0101 : fnd_font = 8'h92;
            4'b0110 : fnd_font = 8'h82;
            4'b0111 : fnd_font = 8'hF8;
            4'b1000 : fnd_font = 8'h80;
            4'b1001 : fnd_font = 8'h90;
            4'b1010 : fnd_font = 8'h88;
            4'b1011 : fnd_font = 8'h83;
            4'b1100 : fnd_font = 8'hC6;
            4'b1101 : fnd_font = 8'hA1;
            4'b1110 : fnd_font = 8'h86;
            4'b1111 : fnd_font = 8'h8E;
            default : fnd_font = 8'hff;

        endcase

    end

endmodule
