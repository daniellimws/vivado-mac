`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2020 06:33:08 AM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input CIN,
    output [3:0] S,
    output COUT
    );
    
    wire [2:0]C;
    one_bit_adder d0(.A(A[0]), .B(B[0]), .CIN(CIN), .S(S[0]), .COUT(C[0]));
    one_bit_adder d1(.A(A[1]), .B(B[1]), .CIN(C[0]), .S(S[1]), .COUT(C[1]));
    one_bit_adder d2(.A(A[2]), .B(B[2]), .CIN(C[1]), .S(S[2]), .COUT(C[2]));
    one_bit_adder d3(.A(A[3]), .B(B[3]), .CIN(C[2]), .S(S[3]), .COUT(COUT));
endmodule
