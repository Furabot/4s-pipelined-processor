`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2020 18:03:54
// Design Name: 
// Module Name: fwd
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


module fwd(
    input [2:0] prev_dst,
    input [2:0] curr_s1,
    input [2:0] curr_s2,
    output fwdA,
    output fwdB
    );
    
    assign fwdA = (prev_dst == curr_s1);
    assign fwdB = (prev_dst == curr_s2);
    
endmodule
