`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 09:50:39
// Design Name: 
// Module Name: aes_128
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


module aes_128(
    input wire clk,
    input wire rst,
    input wire [127:0] data_in,
    input wire [127:0] key,
    input wire enc_dec,  // 1 = encrypt, 0 = decrypt
    output reg [127:0] data_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        data_out <= 128'b0;
    else begin
        if (enc_dec)
            data_out <= data_in ^ key;  // dummy encrypt
        else
            data_out <= data_in ^ key;  // dummy decrypt
    end
end

endmodule

