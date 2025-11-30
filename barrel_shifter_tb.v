`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2025 12:46:57
// Design Name: 
// Module Name: barrel_shifter_tb
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


module barrel_shifter_tb();
    reg  [3:0] data_in;       // input data
    reg  [1:0] shift_amt;     // shift by 0..3
    reg        dir;           // 0 = left, 1 = right
    wire [3:0] data_out;      // output data

    // Instantiate the UUT
    barrel_shifter uut (.data_in(data_in),.shift_amt(shift_amt),.dir(dir),.data_out(data_out));

    initial begin


        data_in   = 4'b1011;  // Your custom input
        shift_amt = 2'b01;    // Shift amount
        dir       = 0;        // 0 = left shift, 1 = right shift
        #20;  // wait so waveform shows stable output
        $finish;
    end
endmodule
