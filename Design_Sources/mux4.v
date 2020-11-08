`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2020 13:34:05
// Design Name: 
// Module Name: mux3
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


module mux3(
    input [7:0] data1, //don't forward data
    input [7:0] data2, //forward data
    input [7:0] data3, //shamt data
    input sel1, //shamt select line
    input sel0, //forward select line
    output reg [7:0] out
    );
    
    wire [1:0] sel;
    assign sel = {sel1, sel0};
    
    always@(data1 or data2 or data3 or sel)
    begin
    casex(sel)
    2'b00 : out <= data1;
    2'b01 : out <= data2;
    2'b1x : out <= data3;
    endcase
    end
    
endmodule
