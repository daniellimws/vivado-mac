`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2020 06:59:01 AM
// Design Name: 
// Module Name: sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim(

    );
    
    reg [5:0]A, B;
    wire [5:0]S;
    wire COUT;
    
    six_bit_subtractor sim(.A(A), .B(B), .S(S), .COUT(COUT));

    initial
    begin
    
    A = 6'b000000; B = 6'b010101; #20;
    A = 6'b010100; B = 6'b000001; #20;
    A = 6'b101010; B = 6'b110101; #20;
    A = 6'b010101; B = 6'b011101; #20;
    A = 6'b010101; B = 6'b010101; #20;
    A = 6'b011110; B = 6'b011101; #20;
    A = 6'b000011; B = 6'b000111; #20;
    A = 6'b111000; B = 6'b111101; #20;
    A = 6'b110100; B = 6'b010101; #20;
    A = 6'b001001; B = 6'b111111; #20;
    A = 6'b000000; B = 6'b010101; #20;

    end
endmodule
