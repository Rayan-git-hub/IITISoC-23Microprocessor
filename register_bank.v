  `timescale 1ns / 1ps
 module register_bank(output reg [7:0]op1,
 output reg [7:0]op2,
                    input [1:0]add1i,
                    input [1:0]add2i,
                    input rw,
                    input [7:0]ip1,
                    input [7:0]ip2,
                    input [1:0]add1o,
                    input [1:0]add2o,
                    input clk);

reg [7:0]registers[3:0];
  always @(*)
    if(rw==0)
    begin
        registers[add1i]<=ip1;
        registers[add2i]<=ip2;
        end
    
    else
    begin
        op1 <= registers[add1o];
        op2 <= registers[add2o];
    end
endmodule
