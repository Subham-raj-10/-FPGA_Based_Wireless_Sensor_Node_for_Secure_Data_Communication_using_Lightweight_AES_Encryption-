`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 09:51:32
// Design Name: 
// Module Name: ecc_163
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


module ecc_163(
    input wire clk,
    input wire rst,
    input wire start,
    output reg done
);

always @(posedge clk or posedge rst) begin
    if (rst)
        done <= 0;
    else
        done <= 1;  // dummy done signal
end

endmodule
