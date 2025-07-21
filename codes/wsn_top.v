`timescale 1ns / 1ps
module wsn_top (
    input wire clk,
    input wire rst,
    output reg [7:0] sensor_out  // Only 8-bit output allowed on real IO
);

    wire [7:0] sensor_data;
    reg  [127:0] data_in_to_aes;
    wire [127:0] aes_enc, aes_dec;
    reg  [127:0] decrypted_out_reg;
    reg  [7:0] d1, d2, d3;

    // AES key
    wire [127:0] aes_key = 128'hAABBCCDDEEFF00112233445566778899;

    // Sensor Data Generator
    sensor_dummy sensor_inst (
        .clk(clk),
        .rst(rst),
        .data_out(sensor_data)
    );

    // Pipeline Input to AES
    always @(posedge clk or posedge rst) begin
        if (rst)
            data_in_to_aes <= 128'd0;
        else
            data_in_to_aes <= {120'd0, sensor_data};
    end

    // AES Encrypt
    aes_128 aes_enc_inst (
        .clk(clk), .rst(rst),
        .data_in(data_in_to_aes),
        .key(aes_key),
        .enc_dec(1'b1),
        .data_out(aes_enc)
    );

    // AES Decrypt
    aes_128 aes_dec_inst (
        .clk(clk), .rst(rst),
        .data_in(aes_enc),
        .key(aes_key),
        .enc_dec(1'b0),
        .data_out(aes_dec)
    );

    // Capture decrypted output internally
    always @(posedge clk or posedge rst) begin
        if (rst)
            decrypted_out_reg <= 128'd0;
        else
            decrypted_out_reg <= aes_dec;
    end

    // Delay sensor_out to match decryption delay
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            d1 <= 8'd0;
            d2 <= 8'd0;
            d3 <= 8'd0;
        end else begin
            d1 <= sensor_data;
            d2 <= d1;
            d3 <= d2;
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst)
            sensor_out <= 8'd0;
        else
            sensor_out <= d3;
    end

endmodule

