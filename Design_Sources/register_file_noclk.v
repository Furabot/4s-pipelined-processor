`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2020 14:25:26
// Design Name: 
// Module Name: register_file_noclk
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


module register_file_noclk(
    input [2:0] read_reg_1,
    input [2:0] read_reg_2,
    input [2:0] write_reg,
    input [7:0] write_data,
    output [7:0] read_data_1,
    output [7:0] read_data_2,
    input regwrite,
    input reset
    );
    
    reg [7:0] register_memory [0:7];
    
    assign read_data_1 = register_memory[read_reg_1];
    assign read_data_2 = register_memory[read_reg_2];

    always@*
    begin
        if (reset == 0)
        begin
            register_memory[0] = 0;
            register_memory[1] = 1;
            register_memory[2] = 2;
            register_memory[3] = 3;
            register_memory[4] = 4;
            register_memory[5] = 5;
            register_memory[6] = 6;
            register_memory[7] = 7;
        end
        
        if (regwrite == 1)
            register_memory[write_reg] = write_data;
        
    end
    
    
endmodule
