`timescale 1ns / 1ps

module ALU_design(in1,in2,opcode,out);
input [7:0] in1;
input [7:0] in2;
input [2:0] opcode;

output reg [7:0] out;

always@(*)
  begin
    case(opcode)
    3'b000:
      out<=in1+in2;
    3'b001:
      out<=in1-in2;
    3'b010:
      out<=in1&in2;
    3'b011:
      out<=in1^in2;
  default:
     out<=in1;
    endcase
  end
endmodule
