`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2020 18:34:36
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input [7:0] PC,
    input reset,
    output [7:0] instruction_code
    );
    
    reg [7:0] Memory [7:0]; //byte-addressable memory (8 locations)
    
    assign instruction_code = Memory[PC];
    
    always@(reset)
    begin
        if (reset == 1)
        begin
            Memory[0] = 8'h15;
            Memory[1] = 8'h51;
            Memory[2] = 8'h2a;
            Memory[3] = 8'hc5;
            Memory[4] = 8'h6b;
            Memory[5] = 8'h0d;
        end
    end
endmodule
