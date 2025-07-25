`timescale 1ns / 1ps
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

