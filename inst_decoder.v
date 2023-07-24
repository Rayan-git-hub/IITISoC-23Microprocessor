`timescale 1ns / 1ps
 
module inst_decoder(
 input [7:0]inst,
 output reg[1:0] opcode,
 output reg[1:0] add1,
 output reg[1:0] add2,
input clk
    );
         
  always @(*)
begin
    opcode <= inst[7:6];
    add1<=inst[5:4];
    add2<= inst[3:2];
    end
endmodule
