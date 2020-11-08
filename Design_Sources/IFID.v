`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2020 17:41:16
// Design Name: 
// Module Name: IFID
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


module IFID(
    input clk,
    input reset,
    input [7:0] ins_in,
    output reg [7:0] instruction_code
    );
    
    always@ (posedge clk, posedge reset)
    begin
        if (reset == 0)
            instruction_code <= 0;
        else
            instruction_code <= ins_in;
    end
    
endmodule
