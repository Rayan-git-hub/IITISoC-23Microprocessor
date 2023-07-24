`timescale 1ns / 1ps
 
module tb1();
wire[7:0] op1;//data out
wire [7:0] op2;//data output
wire [7:0]i_op;//instr out
reg[1:0]pci;
wire[1:0]pco;
reg rw_i;
reg [7:0]i_ip;//instr out
reg clk;
reg [1:0]add1i;//data add
reg [1:0]add2i;//data add
wire [1:0]add1o;//data add
wire [1:0]add2o;//data add
reg rw;
reg [7:0]ip1;//data in
reg [7:0]ip2;//data in
wire [1:0]opcode;
wire[7:0] out;
reg reset;
wire [1:0]state;
wire [1:0]next_state;
wire s;
reg str;
register_bank rb(op1,op2, add1i, add2i,rw, ip1,ip2,add1o,add2o,clk);
instr_bank ib( i_op,pci,pco,rw_i, i_ip,clk);
inst_decoder id(i_op,opcode, add1o,add2o,clk);
ALU_design alu(op1,op2,opcode,out,clk,s);
control_unit cu(clk,reset,str,s,pco,state,next_state);
initial begin
 clk=0;
 forever
 #5 clk=~clk;
end
//adding data and instructions
initial begin 
 rw=0; add1i=2'b00; ip1=8'b00000001; 
  add2i=2'b01; ip2=8'b00000010;
  rw_i=0; pci=2'b00; i_ip= 8'b00000100;
  
 #5 rw=0; add1i=2'b10; ip1=8'b00000010; 
 add2i=2'b11; ip2=8'b00000000;
 rw_i=0; pci=2'b01; i_ip= 8'b01011000;
 #5 rw_i=0; pci=2'b10; i_ip=8'b00011000;
 #5 rw=1; rw_i=1;
#5 reset=0;
#10 reset=1;
//#5 str=1;


#10 $finish();
//add data
end
endmodule
