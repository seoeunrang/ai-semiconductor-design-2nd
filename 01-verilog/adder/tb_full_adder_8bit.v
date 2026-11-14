`timescale 1ns / 1ps



module tb_full_adder_8bit(  );

    reg [7:0] a,b;
    wire [7:0] s;
    wire c;
    
    integer i,j;

    initial begin
        
        for( i = 0; i < 256; i = i + 1)begin
            for( j = 0; j < 256; j = j +1 )begin
                a = i;
                b = j;
                #10;
            end
        end

        $finish;

    end

    full_adder_8bit DUT(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
    );

endmodule
