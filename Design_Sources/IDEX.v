`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2020 18:30:36
// Design Name: 
// Module Name: IDEX
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


module IDEX(
    input clk,
    input reset,
    input [7:0] reg_out_1_in,
    input [7:0] reg_out_2_in,
    input [7:0] shamt_in,
    input alu_sel_in,
    input alu_src_in,
    input regwrite_in,
    input [2:0] write_reg,
    input [2:0] source1,
    input [2:0] source2,
    output reg [7:0] reg_out_1,
    output reg [7:0] reg_out_2,
    output reg [7:0] shamt,
    output reg alu_sel,
    output reg alu_src,
    output reg regwrite,
    output reg [2:0] write_reg_out,
    output reg [2:0] source1_out,
    output reg [2:0] source2_out
    );
    
    always@ (posedge clk, posedge reset)
    begin
        if (reset == 0)
            {reg_out_1, reg_out_2, shamt, alu_sel, alu_src, regwrite} <= 0;
        
        else
        begin
            reg_out_1 <= reg_out_1_in;
            reg_out_2 <= reg_out_2_in;
            shamt <= shamt_in;
            alu_sel <= alu_sel_in;
            alu_src <= alu_src_in;
            regwrite <= regwrite_in;
            write_reg_out <= write_reg;
            source1_out <= source1;
            source2_out <= source2;
        end
    end
    
endmodule
