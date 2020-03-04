`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2020 06:23:22 AM
// Design Name: 
// Module Name: two_bit_adder
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


module two_bit_adder(
    input [1:0] A,
    input [1:0] B,
    input CIN,
    output [1:0] S,
    output COUT
    );
    
    wire C1;
    one_bit_adder d0(.A(A[0]), .B(B[0]), .CIN(CIN), .S(S[0]), .COUT(C1));
    one_bit_adder d1(.A(A[1]), .B(B[1]), .CIN(C1), .S(S[1]), .COUT(COUT));

endmodule
