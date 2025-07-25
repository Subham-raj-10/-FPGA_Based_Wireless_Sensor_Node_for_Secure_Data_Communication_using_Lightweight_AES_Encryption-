`timescale 1ns / 1ps
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

