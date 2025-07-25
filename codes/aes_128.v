`timescale 1ns / 1ps
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

