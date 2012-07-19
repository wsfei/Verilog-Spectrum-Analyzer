`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:58 04/30/2012 
// Design Name: 
// Module Name:    bitRevRam 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bitRevRam(Clk, addr, DoutA, DoutB);

	input Clk;
	input [8:0] addr;
	
	output [9:0] DoutA, DoutB;
	
	reg [19:0] Dout;
	
	assign DoutA = Dout[19:10];
	assign DoutB = Dout[9:0];
	
	always @ (posedge Clk) begin
		case (addr)
			9'b000000000: Dout <= 20'b00000000011000000000;
			9'b000000001: Dout <= 20'b00000000100100000000;
			9'b000000010: Dout <= 20'b00000000111100000000;
			9'b000000011: Dout <= 20'b00000001000010000000;
			9'b000000100: Dout <= 20'b00000001011010000000;
			9'b000000101: Dout <= 20'b00000001100110000000;
			9'b000000110: Dout <= 20'b00000001111110000000;
			9'b000000111: Dout <= 20'b00000010000001000000;
			9'b000001000: Dout <= 20'b00000010011001000000;
			9'b000001001: Dout <= 20'b00000010100101000000;
			9'b000001010: Dout <= 20'b00000010111101000000;
			9'b000001011: Dout <= 20'b00000011000011000000;
			9'b000001100: Dout <= 20'b00000011011011000000;
			9'b000001101: Dout <= 20'b00000011100111000000;
			9'b000001110: Dout <= 20'b00000011111111000000;
			9'b000001111: Dout <= 20'b00000100000000100000;
			9'b000010000: Dout <= 20'b00000100011000100000;
			9'b000010001: Dout <= 20'b00000100100100100000;
			9'b000010010: Dout <= 20'b00000100111100100000;
			9'b000010011: Dout <= 20'b00000101000010100000;
			9'b000010100: Dout <= 20'b00000101011010100000;
			9'b000010101: Dout <= 20'b00000101100110100000;
			9'b000010110: Dout <= 20'b00000101111110100000;
			9'b000010111: Dout <= 20'b00000110000001100000;
			9'b000011000: Dout <= 20'b00000110011001100000;
			9'b000011001: Dout <= 20'b00000110100101100000;
			9'b000011010: Dout <= 20'b00000110111101100000;
			9'b000011011: Dout <= 20'b00000111000011100000;
			9'b000011100: Dout <= 20'b00000111011011100000;
			9'b000011101: Dout <= 20'b00000111100111100000;
			9'b000011110: Dout <= 20'b00000111111111100000;
			9'b000011111: Dout <= 20'b00001000011000010000;
			9'b000100000: Dout <= 20'b00001000100100010000;
			9'b000100001: Dout <= 20'b00001000111100010000;
			9'b000100010: Dout <= 20'b00001001000010010000;
			9'b000100011: Dout <= 20'b00001001011010010000;
			9'b000100100: Dout <= 20'b00001001100110010000;
			9'b000100101: Dout <= 20'b00001001111110010000;
			9'b000100110: Dout <= 20'b00001010000001010000;
			9'b000100111: Dout <= 20'b00001010011001010000;
			9'b000101000: Dout <= 20'b00001010100101010000;
			9'b000101001: Dout <= 20'b00001010111101010000;
			9'b000101010: Dout <= 20'b00001011000011010000;
			9'b000101011: Dout <= 20'b00001011011011010000;
			9'b000101100: Dout <= 20'b00001011100111010000;
			9'b000101101: Dout <= 20'b00001011111111010000;
			9'b000101110: Dout <= 20'b00001100011000110000;
			9'b000101111: Dout <= 20'b00001100100100110000;
			9'b000110000: Dout <= 20'b00001100111100110000;
			9'b000110001: Dout <= 20'b00001101000010110000;
			9'b000110010: Dout <= 20'b00001101011010110000;
			9'b000110011: Dout <= 20'b00001101100110110000;
			9'b000110100: Dout <= 20'b00001101111110110000;
			9'b000110101: Dout <= 20'b00001110000001110000;
			9'b000110110: Dout <= 20'b00001110011001110000;
			9'b000110111: Dout <= 20'b00001110100101110000;
			9'b000111000: Dout <= 20'b00001110111101110000;
			9'b000111001: Dout <= 20'b00001111000011110000;
			9'b000111010: Dout <= 20'b00001111011011110000;
			9'b000111011: Dout <= 20'b00001111100111110000;
			9'b000111100: Dout <= 20'b00001111111111110000;
			9'b000111101: Dout <= 20'b00010000011000001000;
			9'b000111110: Dout <= 20'b00010000100100001000;
			9'b000111111: Dout <= 20'b00010000111100001000;
			9'b001000000: Dout <= 20'b00010001000010001000;
			9'b001000001: Dout <= 20'b00010001011010001000;
			9'b001000010: Dout <= 20'b00010001100110001000;
			9'b001000011: Dout <= 20'b00010001111110001000;
			9'b001000100: Dout <= 20'b00010010011001001000;
			9'b001000101: Dout <= 20'b00010010100101001000;
			9'b001000110: Dout <= 20'b00010010111101001000;
			9'b001000111: Dout <= 20'b00010011000011001000;
			9'b001001000: Dout <= 20'b00010011011011001000;
			9'b001001001: Dout <= 20'b00010011100111001000;
			9'b001001010: Dout <= 20'b00010011111111001000;
			9'b001001011: Dout <= 20'b00010100011000101000;
			9'b001001100: Dout <= 20'b00010100100100101000;
			9'b001001101: Dout <= 20'b00010100111100101000;
			9'b001001110: Dout <= 20'b00010101000010101000;
			9'b001001111: Dout <= 20'b00010101011010101000;
			9'b001010000: Dout <= 20'b00010101100110101000;
			9'b001010001: Dout <= 20'b00010101111110101000;
			9'b001010010: Dout <= 20'b00010110000001101000;
			9'b001010011: Dout <= 20'b00010110011001101000;
			9'b001010100: Dout <= 20'b00010110100101101000;
			9'b001010101: Dout <= 20'b00010110111101101000;
			9'b001010110: Dout <= 20'b00010111000011101000;
			9'b001010111: Dout <= 20'b00010111011011101000;
			9'b001011000: Dout <= 20'b00010111100111101000;
			9'b001011001: Dout <= 20'b00010111111111101000;
			9'b001011010: Dout <= 20'b00011000011000011000;
			9'b001011011: Dout <= 20'b00011000100100011000;
			9'b001011100: Dout <= 20'b00011000111100011000;
			9'b001011101: Dout <= 20'b00011001000010011000;
			9'b001011110: Dout <= 20'b00011001011010011000;
			9'b001011111: Dout <= 20'b00011001100110011000;
			9'b001100000: Dout <= 20'b00011001111110011000;
			9'b001100001: Dout <= 20'b00011010011001011000;
			9'b001100010: Dout <= 20'b00011010100101011000;
			9'b001100011: Dout <= 20'b00011010111101011000;
			9'b001100100: Dout <= 20'b00011011000011011000;
			9'b001100101: Dout <= 20'b00011011011011011000;
			9'b001100110: Dout <= 20'b00011011100111011000;
			9'b001100111: Dout <= 20'b00011011111111011000;
			9'b001101000: Dout <= 20'b00011100011000111000;
			9'b001101001: Dout <= 20'b00011100100100111000;
			9'b001101010: Dout <= 20'b00011100111100111000;
			9'b001101011: Dout <= 20'b00011101000010111000;
			9'b001101100: Dout <= 20'b00011101011010111000;
			9'b001101101: Dout <= 20'b00011101100110111000;
			9'b001101110: Dout <= 20'b00011101111110111000;
			9'b001101111: Dout <= 20'b00011110011001111000;
			9'b001110000: Dout <= 20'b00011110100101111000;
			9'b001110001: Dout <= 20'b00011110111101111000;
			9'b001110010: Dout <= 20'b00011111000011111000;
			9'b001110011: Dout <= 20'b00011111011011111000;
			9'b001110100: Dout <= 20'b00011111100111111000;
			9'b001110101: Dout <= 20'b00011111111111111000;
			9'b001110110: Dout <= 20'b00100000011000000100;
			9'b001110111: Dout <= 20'b00100000100100000100;
			9'b001111000: Dout <= 20'b00100000111100000100;
			9'b001111001: Dout <= 20'b00100001011010000100;
			9'b001111010: Dout <= 20'b00100001100110000100;
			9'b001111011: Dout <= 20'b00100001111110000100;
			9'b001111100: Dout <= 20'b00100010011001000100;
			9'b001111101: Dout <= 20'b00100010100101000100;
			9'b001111110: Dout <= 20'b00100010111101000100;
			9'b001111111: Dout <= 20'b00100011000011000100;
			9'b010000000: Dout <= 20'b00100011011011000100;
			9'b010000001: Dout <= 20'b00100011100111000100;
			9'b010000010: Dout <= 20'b00100011111111000100;
			9'b010000011: Dout <= 20'b00100100011000100100;
			9'b010000100: Dout <= 20'b00100100100100100100;
			9'b010000101: Dout <= 20'b00100100111100100100;
			9'b010000110: Dout <= 20'b00100101000010100100;
			9'b010000111: Dout <= 20'b00100101011010100100;
			9'b010001000: Dout <= 20'b00100101100110100100;
			9'b010001001: Dout <= 20'b00100101111110100100;
			9'b010001010: Dout <= 20'b00100110011001100100;
			9'b010001011: Dout <= 20'b00100110100101100100;
			9'b010001100: Dout <= 20'b00100110111101100100;
			9'b010001101: Dout <= 20'b00100111000011100100;
			9'b010001110: Dout <= 20'b00100111011011100100;
			9'b010001111: Dout <= 20'b00100111100111100100;
			9'b010010000: Dout <= 20'b00100111111111100100;
			9'b010010001: Dout <= 20'b00101000011000010100;
			9'b010010010: Dout <= 20'b00101000100100010100;
			9'b010010011: Dout <= 20'b00101000111100010100;
			9'b010010100: Dout <= 20'b00101001011010010100;
			9'b010010101: Dout <= 20'b00101001100110010100;
			9'b010010110: Dout <= 20'b00101001111110010100;
			9'b010010111: Dout <= 20'b00101010011001010100;
			9'b010011000: Dout <= 20'b00101010100101010100;
			9'b010011001: Dout <= 20'b00101010111101010100;
			9'b010011010: Dout <= 20'b00101011000011010100;
			9'b010011011: Dout <= 20'b00101011011011010100;
			9'b010011100: Dout <= 20'b00101011100111010100;
			9'b010011101: Dout <= 20'b00101011111111010100;
			9'b010011110: Dout <= 20'b00101100011000110100;
			9'b010011111: Dout <= 20'b00101100100100110100;
			9'b010100000: Dout <= 20'b00101100111100110100;
			9'b010100001: Dout <= 20'b00101101011010110100;
			9'b010100010: Dout <= 20'b00101101100110110100;
			9'b010100011: Dout <= 20'b00101101111110110100;
			9'b010100100: Dout <= 20'b00101110011001110100;
			9'b010100101: Dout <= 20'b00101110100101110100;
			9'b010100110: Dout <= 20'b00101110111101110100;
			9'b010100111: Dout <= 20'b00101111000011110100;
			9'b010101000: Dout <= 20'b00101111011011110100;
			9'b010101001: Dout <= 20'b00101111100111110100;
			9'b010101010: Dout <= 20'b00101111111111110100;
			9'b010101011: Dout <= 20'b00110000011000001100;
			9'b010101100: Dout <= 20'b00110000100100001100;
			9'b010101101: Dout <= 20'b00110000111100001100;
			9'b010101110: Dout <= 20'b00110001011010001100;
			9'b010101111: Dout <= 20'b00110001100110001100;
			9'b010110000: Dout <= 20'b00110001111110001100;
			9'b010110001: Dout <= 20'b00110010011001001100;
			9'b010110010: Dout <= 20'b00110010100101001100;
			9'b010110011: Dout <= 20'b00110010111101001100;
			9'b010110100: Dout <= 20'b00110011011011001100;
			9'b010110101: Dout <= 20'b00110011100111001100;
			9'b010110110: Dout <= 20'b00110011111111001100;
			9'b010110111: Dout <= 20'b00110100011000101100;
			9'b010111000: Dout <= 20'b00110100100100101100;
			9'b010111001: Dout <= 20'b00110100111100101100;
			9'b010111010: Dout <= 20'b00110101011010101100;
			9'b010111011: Dout <= 20'b00110101100110101100;
			9'b010111100: Dout <= 20'b00110101111110101100;
			9'b010111101: Dout <= 20'b00110110011001101100;
			9'b010111110: Dout <= 20'b00110110100101101100;
			9'b010111111: Dout <= 20'b00110110111101101100;
			9'b011000000: Dout <= 20'b00110111000011101100;
			9'b011000001: Dout <= 20'b00110111011011101100;
			9'b011000010: Dout <= 20'b00110111100111101100;
			9'b011000011: Dout <= 20'b00110111111111101100;
			9'b011000100: Dout <= 20'b00111000011000011100;
			9'b011000101: Dout <= 20'b00111000100100011100;
			9'b011000110: Dout <= 20'b00111000111100011100;
			9'b011000111: Dout <= 20'b00111001011010011100;
			9'b011001000: Dout <= 20'b00111001100110011100;
			9'b011001001: Dout <= 20'b00111001111110011100;
			9'b011001010: Dout <= 20'b00111010011001011100;
			9'b011001011: Dout <= 20'b00111010100101011100;
			9'b011001100: Dout <= 20'b00111010111101011100;
			9'b011001101: Dout <= 20'b00111011011011011100;
			9'b011001110: Dout <= 20'b00111011100111011100;
			9'b011001111: Dout <= 20'b00111011111111011100;
			9'b011010000: Dout <= 20'b00111100011000111100;
			9'b011010001: Dout <= 20'b00111100100100111100;
			9'b011010010: Dout <= 20'b00111100111100111100;
			9'b011010011: Dout <= 20'b00111101011010111100;
			9'b011010100: Dout <= 20'b00111101100110111100;
			9'b011010101: Dout <= 20'b00111101111110111100;
			9'b011010110: Dout <= 20'b00111110011001111100;
			9'b011010111: Dout <= 20'b00111110100101111100;
			9'b011011000: Dout <= 20'b00111110111101111100;
			9'b011011001: Dout <= 20'b00111111011011111100;
			9'b011011010: Dout <= 20'b00111111100111111100;
			9'b011011011: Dout <= 20'b00111111111111111100;
			9'b011011100: Dout <= 20'b01000000011000000010;
			9'b011011101: Dout <= 20'b01000000111100000010;
			9'b011011110: Dout <= 20'b01000001011010000010;
			9'b011011111: Dout <= 20'b01000001100110000010;
			9'b011100000: Dout <= 20'b01000001111110000010;
			9'b011100001: Dout <= 20'b01000010011001000010;
			9'b011100010: Dout <= 20'b01000010100101000010;
			9'b011100011: Dout <= 20'b01000010111101000010;
			9'b011100100: Dout <= 20'b01000011011011000010;
			9'b011100101: Dout <= 20'b01000011100111000010;
			9'b011100110: Dout <= 20'b01000011111111000010;
			9'b011100111: Dout <= 20'b01000100011000100010;
			9'b011101000: Dout <= 20'b01000100100100100010;
			9'b011101001: Dout <= 20'b01000100111100100010;
			9'b011101010: Dout <= 20'b01000101011010100010;
			9'b011101011: Dout <= 20'b01000101100110100010;
			9'b011101100: Dout <= 20'b01000101111110100010;
			9'b011101101: Dout <= 20'b01000110011001100010;
			9'b011101110: Dout <= 20'b01000110100101100010;
			9'b011101111: Dout <= 20'b01000110111101100010;
			9'b011110000: Dout <= 20'b01000111011011100010;
			9'b011110001: Dout <= 20'b01000111100111100010;
			9'b011110010: Dout <= 20'b01000111111111100010;
			9'b011110011: Dout <= 20'b01001000011000010010;
			9'b011110100: Dout <= 20'b01001000111100010010;
			9'b011110101: Dout <= 20'b01001001011010010010;
			9'b011110110: Dout <= 20'b01001001100110010010;
			9'b011110111: Dout <= 20'b01001001111110010010;
			9'b011111000: Dout <= 20'b01001010011001010010;
			9'b011111001: Dout <= 20'b01001010100101010010;
			9'b011111010: Dout <= 20'b01001010111101010010;
			9'b011111011: Dout <= 20'b01001011011011010010;
			9'b011111100: Dout <= 20'b01001011100111010010;
			9'b011111101: Dout <= 20'b01001011111111010010;
			9'b011111110: Dout <= 20'b01001100011000110010;
			9'b011111111: Dout <= 20'b01001100111100110010;
			9'b100000000: Dout <= 20'b01001101011010110010;
			9'b100000001: Dout <= 20'b01001101100110110010;
			9'b100000010: Dout <= 20'b01001101111110110010;
			9'b100000011: Dout <= 20'b01001110011001110010;
			9'b100000100: Dout <= 20'b01001110100101110010;
			9'b100000101: Dout <= 20'b01001110111101110010;
			9'b100000110: Dout <= 20'b01001111011011110010;
			9'b100000111: Dout <= 20'b01001111100111110010;
			9'b100001000: Dout <= 20'b01001111111111110010;
			9'b100001001: Dout <= 20'b01010000011000001010;
			9'b100001010: Dout <= 20'b01010000111100001010;
			9'b100001011: Dout <= 20'b01010001011010001010;
			9'b100001100: Dout <= 20'b01010001100110001010;
			9'b100001101: Dout <= 20'b01010001111110001010;
			9'b100001110: Dout <= 20'b01010010011001001010;
			9'b100001111: Dout <= 20'b01010010111101001010;
			9'b100010000: Dout <= 20'b01010011011011001010;
			9'b100010001: Dout <= 20'b01010011100111001010;
			9'b100010010: Dout <= 20'b01010011111111001010;
			9'b100010011: Dout <= 20'b01010100011000101010;
			9'b100010100: Dout <= 20'b01010100111100101010;
			9'b100010101: Dout <= 20'b01010101011010101010;
			9'b100010110: Dout <= 20'b01010101100110101010;
			9'b100010111: Dout <= 20'b01010101111110101010;
			9'b100011000: Dout <= 20'b01010110011001101010;
			9'b100011001: Dout <= 20'b01010110100101101010;
			9'b100011010: Dout <= 20'b01010110111101101010;
			9'b100011011: Dout <= 20'b01010111011011101010;
			9'b100011100: Dout <= 20'b01010111100111101010;
			9'b100011101: Dout <= 20'b01010111111111101010;
			9'b100011110: Dout <= 20'b01011000011000011010;
			9'b100011111: Dout <= 20'b01011000111100011010;
			9'b100100000: Dout <= 20'b01011001011010011010;
			9'b100100001: Dout <= 20'b01011001100110011010;
			9'b100100010: Dout <= 20'b01011001111110011010;
			9'b100100011: Dout <= 20'b01011010011001011010;
			9'b100100100: Dout <= 20'b01011010111101011010;
			9'b100100101: Dout <= 20'b01011011011011011010;
			9'b100100110: Dout <= 20'b01011011100111011010;
			9'b100100111: Dout <= 20'b01011011111111011010;
			9'b100101000: Dout <= 20'b01011100011000111010;
			9'b100101001: Dout <= 20'b01011100111100111010;
			9'b100101010: Dout <= 20'b01011101011010111010;
			9'b100101011: Dout <= 20'b01011101100110111010;
			9'b100101100: Dout <= 20'b01011101111110111010;
			9'b100101101: Dout <= 20'b01011110011001111010;
			9'b100101110: Dout <= 20'b01011110111101111010;
			9'b100101111: Dout <= 20'b01011111011011111010;
			9'b100110000: Dout <= 20'b01011111100111111010;
			9'b100110001: Dout <= 20'b01011111111111111010;
			9'b100110010: Dout <= 20'b01100000011000000110;
			9'b100110011: Dout <= 20'b01100000111100000110;
			9'b100110100: Dout <= 20'b01100001011010000110;
			9'b100110101: Dout <= 20'b01100001111110000110;
			9'b100110110: Dout <= 20'b01100010011001000110;
			9'b100110111: Dout <= 20'b01100010111101000110;
			9'b100111000: Dout <= 20'b01100011011011000110;
			9'b100111001: Dout <= 20'b01100011100111000110;
			9'b100111010: Dout <= 20'b01100011111111000110;
			9'b100111011: Dout <= 20'b01100100011000100110;
			9'b100111100: Dout <= 20'b01100100111100100110;
			9'b100111101: Dout <= 20'b01100101011010100110;
			9'b100111110: Dout <= 20'b01100101100110100110;
			9'b100111111: Dout <= 20'b01100101111110100110;
			9'b101000000: Dout <= 20'b01100110011001100110;
			9'b101000001: Dout <= 20'b01100110111101100110;
			9'b101000010: Dout <= 20'b01100111011011100110;
			9'b101000011: Dout <= 20'b01100111100111100110;
			9'b101000100: Dout <= 20'b01100111111111100110;
			9'b101000101: Dout <= 20'b01101000011000010110;
			9'b101000110: Dout <= 20'b01101000111100010110;
			9'b101000111: Dout <= 20'b01101001011010010110;
			9'b101001000: Dout <= 20'b01101001111110010110;
			9'b101001001: Dout <= 20'b01101010011001010110;
			9'b101001010: Dout <= 20'b01101010111101010110;
			9'b101001011: Dout <= 20'b01101011011011010110;
			9'b101001100: Dout <= 20'b01101011100111010110;
			9'b101001101: Dout <= 20'b01101011111111010110;
			9'b101001110: Dout <= 20'b01101100011000110110;
			9'b101001111: Dout <= 20'b01101100111100110110;
			9'b101010000: Dout <= 20'b01101101011010110110;
			9'b101010001: Dout <= 20'b01101101111110110110;
			9'b101010010: Dout <= 20'b01101110011001110110;
			9'b101010011: Dout <= 20'b01101110111101110110;
			9'b101010100: Dout <= 20'b01101111011011110110;
			9'b101010101: Dout <= 20'b01101111100111110110;
			9'b101010110: Dout <= 20'b01101111111111110110;
			9'b101010111: Dout <= 20'b01110000011000001110;
			9'b101011000: Dout <= 20'b01110000111100001110;
			9'b101011001: Dout <= 20'b01110001011010001110;
			9'b101011010: Dout <= 20'b01110001111110001110;
			9'b101011011: Dout <= 20'b01110010011001001110;
			9'b101011100: Dout <= 20'b01110010111101001110;
			9'b101011101: Dout <= 20'b01110011011011001110;
			9'b101011110: Dout <= 20'b01110011111111001110;
			9'b101011111: Dout <= 20'b01110100011000101110;
			9'b101100000: Dout <= 20'b01110100111100101110;
			9'b101100001: Dout <= 20'b01110101011010101110;
			9'b101100010: Dout <= 20'b01110101111110101110;
			9'b101100011: Dout <= 20'b01110110011001101110;
			9'b101100100: Dout <= 20'b01110110111101101110;
			9'b101100101: Dout <= 20'b01110111011011101110;
			9'b101100110: Dout <= 20'b01110111100111101110;
			9'b101100111: Dout <= 20'b01110111111111101110;
			9'b101101000: Dout <= 20'b01111000011000011110;
			9'b101101001: Dout <= 20'b01111000111100011110;
			9'b101101010: Dout <= 20'b01111001011010011110;
			9'b101101011: Dout <= 20'b01111001111110011110;
			9'b101101100: Dout <= 20'b01111010011001011110;
			9'b101101101: Dout <= 20'b01111010111101011110;
			9'b101101110: Dout <= 20'b01111011011011011110;
			9'b101101111: Dout <= 20'b01111011111111011110;
			9'b101110000: Dout <= 20'b01111100011000111110;
			9'b101110001: Dout <= 20'b01111100111100111110;
			9'b101110010: Dout <= 20'b01111101011010111110;
			9'b101110011: Dout <= 20'b01111101111110111110;
			9'b101110100: Dout <= 20'b01111110011001111110;
			9'b101110101: Dout <= 20'b01111110111101111110;
			9'b101110110: Dout <= 20'b01111111011011111110;
			9'b101110111: Dout <= 20'b01111111111111111110;
			9'b101111000: Dout <= 20'b10000000111100000001;
			9'b101111001: Dout <= 20'b10000001011010000001;
			9'b101111010: Dout <= 20'b10000001111110000001;
			9'b101111011: Dout <= 20'b10000010011001000001;
			9'b101111100: Dout <= 20'b10000010111101000001;
			9'b101111101: Dout <= 20'b10000011011011000001;
			9'b101111110: Dout <= 20'b10000011111111000001;
			9'b101111111: Dout <= 20'b10000100011000100001;
			9'b110000000: Dout <= 20'b10000100111100100001;
			9'b110000001: Dout <= 20'b10000101011010100001;
			9'b110000010: Dout <= 20'b10000101111110100001;
			9'b110000011: Dout <= 20'b10000110011001100001;
			9'b110000100: Dout <= 20'b10000110111101100001;
			9'b110000101: Dout <= 20'b10000111011011100001;
			9'b110000110: Dout <= 20'b10000111111111100001;
			9'b110000111: Dout <= 20'b10001000111100010001;
			9'b110001000: Dout <= 20'b10001001011010010001;
			9'b110001001: Dout <= 20'b10001001111110010001;
			9'b110001010: Dout <= 20'b10001010011001010001;
			9'b110001011: Dout <= 20'b10001010111101010001;
			9'b110001100: Dout <= 20'b10001011011011010001;
			9'b110001101: Dout <= 20'b10001011111111010001;
			9'b110001110: Dout <= 20'b10001100111100110001;
			9'b110001111: Dout <= 20'b10001101011010110001;
			9'b110010000: Dout <= 20'b10001101111110110001;
			9'b110010001: Dout <= 20'b10001110011001110001;
			9'b110010010: Dout <= 20'b10001110111101110001;
			9'b110010011: Dout <= 20'b10001111011011110001;
			9'b110010100: Dout <= 20'b10001111111111110001;
			9'b110010101: Dout <= 20'b10010000111100001001;
			9'b110010110: Dout <= 20'b10010001011010001001;
			9'b110010111: Dout <= 20'b10010001111110001001;
			9'b110011000: Dout <= 20'b10010010111101001001;
			9'b110011001: Dout <= 20'b10010011011011001001;
			9'b110011010: Dout <= 20'b10010011111111001001;
			9'b110011011: Dout <= 20'b10010100111100101001;
			9'b110011100: Dout <= 20'b10010101011010101001;
			9'b110011101: Dout <= 20'b10010101111110101001;
			9'b110011110: Dout <= 20'b10010110011001101001;
			9'b110011111: Dout <= 20'b10010110111101101001;
			9'b110100000: Dout <= 20'b10010111011011101001;
			9'b110100001: Dout <= 20'b10010111111111101001;
			9'b110100010: Dout <= 20'b10011000111100011001;
			9'b110100011: Dout <= 20'b10011001011010011001;
			9'b110100100: Dout <= 20'b10011001111110011001;
			9'b110100101: Dout <= 20'b10011010111101011001;
			9'b110100110: Dout <= 20'b10011011011011011001;
			9'b110100111: Dout <= 20'b10011011111111011001;
			9'b110101000: Dout <= 20'b10011100111100111001;
			9'b110101001: Dout <= 20'b10011101011010111001;
			9'b110101010: Dout <= 20'b10011101111110111001;
			9'b110101011: Dout <= 20'b10011110111101111001;
			9'b110101100: Dout <= 20'b10011111011011111001;
			9'b110101101: Dout <= 20'b10011111111111111001;
			9'b110101110: Dout <= 20'b10100000111100000101;
			9'b110101111: Dout <= 20'b10100001111110000101;
			9'b110110000: Dout <= 20'b10100010111101000101;
			9'b110110001: Dout <= 20'b10100011011011000101;
			9'b110110010: Dout <= 20'b10100011111111000101;
			9'b110110011: Dout <= 20'b10100100111100100101;
			9'b110110100: Dout <= 20'b10100101011010100101;
			9'b110110101: Dout <= 20'b10100101111110100101;
			9'b110110110: Dout <= 20'b10100110111101100101;
			9'b110110111: Dout <= 20'b10100111011011100101;
			9'b110111000: Dout <= 20'b10100111111111100101;
			9'b110111001: Dout <= 20'b10101000111100010101;
			9'b110111010: Dout <= 20'b10101001111110010101;
			9'b110111011: Dout <= 20'b10101010111101010101;
			9'b110111100: Dout <= 20'b10101011011011010101;
			9'b110111101: Dout <= 20'b10101011111111010101;
			9'b110111110: Dout <= 20'b10101100111100110101;
			9'b110111111: Dout <= 20'b10101101111110110101;
			9'b111000000: Dout <= 20'b10101110111101110101;
			9'b111000001: Dout <= 20'b10101111011011110101;
			9'b111000010: Dout <= 20'b10101111111111110101;
			9'b111000011: Dout <= 20'b10110000111100001101;
			9'b111000100: Dout <= 20'b10110001111110001101;
			9'b111000101: Dout <= 20'b10110010111101001101;
			9'b111000110: Dout <= 20'b10110011111111001101;
			9'b111000111: Dout <= 20'b10110100111100101101;
			9'b111001000: Dout <= 20'b10110101111110101101;
			9'b111001001: Dout <= 20'b10110110111101101101;
			9'b111001010: Dout <= 20'b10110111011011101101;
			9'b111001011: Dout <= 20'b10110111111111101101;
			9'b111001100: Dout <= 20'b10111000111100011101;
			9'b111001101: Dout <= 20'b10111001111110011101;
			9'b111001110: Dout <= 20'b10111010111101011101;
			9'b111001111: Dout <= 20'b10111011111111011101;
			9'b111010000: Dout <= 20'b10111100111100111101;
			9'b111010001: Dout <= 20'b10111101111110111101;
			9'b111010010: Dout <= 20'b10111110111101111101;
			9'b111010011: Dout <= 20'b10111111111111111101;
			9'b111010100: Dout <= 20'b11000001111110000011;
			9'b111010101: Dout <= 20'b11000010111101000011;
			9'b111010110: Dout <= 20'b11000011111111000011;
			9'b111010111: Dout <= 20'b11000100111100100011;
			9'b111011000: Dout <= 20'b11000101111110100011;
			9'b111011001: Dout <= 20'b11000110111101100011;
			9'b111011010: Dout <= 20'b11000111111111100011;
			9'b111011011: Dout <= 20'b11001001111110010011;
			9'b111011100: Dout <= 20'b11001010111101010011;
			9'b111011101: Dout <= 20'b11001011111111010011;
			9'b111011110: Dout <= 20'b11001101111110110011;
			9'b111011111: Dout <= 20'b11001110111101110011;
			9'b111100000: Dout <= 20'b11001111111111110011;
			9'b111100001: Dout <= 20'b11010001111110001011;
			9'b111100010: Dout <= 20'b11010011111111001011;
			9'b111100011: Dout <= 20'b11010101111110101011;
			9'b111100100: Dout <= 20'b11010110111101101011;
			9'b111100101: Dout <= 20'b11010111111111101011;
			9'b111100110: Dout <= 20'b11011001111110011011;
			9'b111100111: Dout <= 20'b11011011111111011011;
			9'b111101000: Dout <= 20'b11011101111110111011;
			9'b111101001: Dout <= 20'b11011111111111111011;
			9'b111101010: Dout <= 20'b11100011111111000111;
			9'b111101011: Dout <= 20'b11100101111110100111;
			9'b111101100: Dout <= 20'b11100111111111100111;
			9'b111101101: Dout <= 20'b11101011111111010111;
			9'b111101110: Dout <= 20'b11101111111111110111;
			9'b111101111: Dout <= 20'b11110111111111101111;
			default: Dout <= 20'bxxxxxxxxxxxxxxxxxxxx;
		endcase
	end
endmodule