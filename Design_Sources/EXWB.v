`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2020 18:50:20
// Design Name: 
// Module Name: EXWB
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


module EXWB(
    input clk,
    input reset,
    input [7:0] alu_result_in,
    input regwrite_in,
    input [2:0] prev_dst_in,
    output reg [7:0] alu_result,
    output reg regwrite,
    output reg [2:0] prev_dst_out
    );
    
    always@ (posedge clk, posedge reset)
    begin
        if (reset == 0)
            {alu_result, regwrite} <= 0;
        else
        begin  
            alu_result <= alu_result_in;
            regwrite <= regwrite_in;
            prev_dst_out <= prev_dst_in;
        end
    end
endmodule
