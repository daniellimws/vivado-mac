`timescale 1ns / 1ps

module main(input a, b, output c);
    wire o1, o2;
    ketchup d1(a, b, o1);
    noobman d2(a, b, o2);
    assign c = o1 ^ o2;
endmodule