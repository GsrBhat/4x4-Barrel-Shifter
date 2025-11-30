`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2025 12:45:46
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter(
    input  [3:0] data_in,     // 4-bit value to be shifted
    input  [1:0] shift_amt,   // shift amount (00, 01, 10, 11)
    input dir,                // 0 = left shift, 1 = right shift
    output reg [3:0] data_out // final output
);

    always @(*) begin
        if (dir == 0) begin
            case (shift_amt)
                2'b00: data_out = data_in;                   // No shift
                2'b01: data_out = {data_in[2:0], data_in[3]};      // Shift left by 1
                2'b10: data_out = {data_in[1:0], data_in[3:2]};     // Shift left by 2
                2'b11: data_out = {data_in[0],  data_in[3:1]};     // Shift left by 3
            endcase
        end 
else 
begin

            case (shift_amt)
                2'b00: data_out = data_in;                   // No shift
                2'b01: data_out = {data_in[0],  data_in[3:1]};     // Shift right by 1
                2'b10: data_out = {data_in[1:0], data_in[3:2]};     // Shift right by 2
                2'b11: data_out = {data_in[2:0], data_in[3]};      // Shift right by 3
            endcase
        end
    end
endmodule
