`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2020 16:47:13
// Design Name: 
// Module Name: control
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


module control(
    input [1:0] opcode,
    output reg alu_sel,
    output reg alusrc,
    output reg regwrite
    );
    
    always@ (opcode)
    begin
        if (opcode == 2'b00)
        begin
            alu_sel = 0;
            alusrc = 0;
            regwrite = 1;
        end
        
        else if (opcode == 2'b01)
        begin
            alu_sel = 1;
            alusrc = 1;
            regwrite = 1;
        end
        
        else if (opcode == 2'b11)
        begin
            alu_sel = 1'bx;
            alusrc = 1'bx;
            regwrite = 0;
        end
    end
    
    
endmodule
