`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2020 15:22:13
// Design Name: 
// Module Name: processor_mc_tb
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


module processor_mc_tb();

    reg clk;
    reg reset;
    
    processor_mc dut(clk, reset);
    
    initial begin
    reset = 1;
    clk = 0;
    #10;
    reset = 0;
    #10;
    reset = 1;
    end
    
    always #10 clk = ~clk;
    
endmodule