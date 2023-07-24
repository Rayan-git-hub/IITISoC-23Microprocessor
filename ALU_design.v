`timescale 1ns / 1ps

module ALU_design(in1,in2,opcode,out,clk,s);
input [7:0] in1;
input [7:0] in2;
input [2:0] opcode;

output reg [7:0] out;
input clk;
  output reg s;
always@(*)
  begin
    case(opcode)
    2'b00:begin
      out=in1+in2;s=1;
    end
    2'b01:begin
      out=in1-in2;s=1;
    end
    2'b10:begin
      out=in1&in2;s=1;
    end
    2'b11:begin
      out=in1^in2;
    end
  default: begin
     out=in1;s=1;
  end
    endcase
  end
endmodule
