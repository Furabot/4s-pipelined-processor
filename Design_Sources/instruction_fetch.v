`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2020 19:07:06
// Design Name: 
// Module Name: instruction_fetch
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


module instruction_fetch(
    input clk,
    input reset,
    output [7:0] instruction_code
    );
    
    wire pcsrc;
    
    reg [7:0] PC;
    reg [7:0] jump_ins;
    reg [7:0] next_ins;
    
    instruction_memory mem(PC, reset, instruction_code);
    
    always@(posedge clk, posedge reset)
    begin
    
        next_ins = PC + 1;
        jump_ins = {next_ins[7:6], instruction_code[5:0]};
    
        if (reset == 0)
            PC <= 0;
        else 
            PC <= pcsrc ? jump_ins : next_ins;
    end
    
    assign pcsrc = instruction_code[7];
    
endmodule
