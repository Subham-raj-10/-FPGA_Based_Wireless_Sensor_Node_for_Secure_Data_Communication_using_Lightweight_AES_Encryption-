`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 09:52:18
// Design Name: 
// Module Name: sha_256
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


module sha_256(
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

