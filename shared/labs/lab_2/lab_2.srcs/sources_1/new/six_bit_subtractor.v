`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2020 06:37:04 AM
// Design Name: 
// Module Name: six_bit_subtractor
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


module six_bit_subtractor(
    input [5:0] A,
    input [5:0] B,
    output [5:0] S,
    output COUT
    );
    
    wire C;
    four_bit_adder lsb(.A(A[3:0]), .B(~B[3:0]), .CIN(1), .S(S[3:0]), .COUT(C));
    two_bit_adder msb(.A(A[5:4]), .B(~B[5:4]), .CIN(C), .S(S[5:4]), .COUT(COUT));
    
endmodule
