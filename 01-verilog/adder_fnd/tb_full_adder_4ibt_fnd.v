`timescale 1ns / 1ps


module tb_full_adder_4ibt_fnd(  );

reg [3:0] a,b;
wire [7:0] fnd_font;
wire [3:0] fnd_com;
wire led;

integer i,j;


initial begin
    for( i=0; i<16; i=i+1)begin
        for( j=0; j<16; j=j+1)begin
            a = i;
            b = j;
            #10;
        end
    end

    $finish;
end


full_adder_4bit_fnd DUT(
    .a(a),
    .b(b),
    .fnd_font(fnd_font),
    .fnd_com(fnd_com),
    .led(led)
    );

endmodule
