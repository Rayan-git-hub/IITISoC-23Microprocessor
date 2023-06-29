`timescale 1ns / 1ps


module ALU_tb( );
reg [7:0] in1,in2;
reg clk=0;
reg [2:0] opcode;
wire [7:0] out;
ALU_design  a(in1,in2,opcode,out);

initial 
begin
#20 in1=8'b00000000;in2=8'b00000000;opcode=3'b000;
#20 opcode=3'b010;
#20 in1=8'b00000001;in2=8'b00000001;opcode=3'b000;
#20 opcode=3'b001;
#20 in1=8'b00001000;in2=8'b00000000;opcode=3'b011;
#20 $finish();
end
endmodule
