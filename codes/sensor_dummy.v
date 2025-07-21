`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 09:49:46
// Design Name: 
// Module Name: sensor_dummy
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


module sensor_dummy(
    input wire clk,
    input wire rst,
    output reg [7:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        data_out <= 8'b0;
    else
        data_out <= data_out + 1;
end

endmodule

