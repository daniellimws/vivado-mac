`timescale 1ns / 1ps

module simy();
    reg a, b; wire c;

    assign c = a & b;

    initial
    begin
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;
    end
endmodule