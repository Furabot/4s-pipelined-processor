`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2020 19:25:22
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] a,
    input [7:0] b,
    input sel,
    output reg [7:0] out,
    output zero
    );
    
    always@(a, b, sel)
    begin
    case(sel)
    1'b0:out = a+b;
    1'b1:out = a<<b;
    endcase
    end
    
    assign zero = (out==0)? 1 : 0;
    
endmodule