`timescale 1ns / 1ps

 module tb_rv();
 reg [1:0]add;
 reg rw;
 reg [7:0]ip;
 reg clk;
 
 wire [7:0]op;
 register_bank rb( op,add,rw,ip,clk);
 always
 #5 clk=~clk;
 initial begin
  $monitor("op=%b",op);
 clk=0;
 rw=1'b0;add=2'b00; ip=8'b00000001;
 #5  rw=1'b0;add=2'b01; ip=8'b00000011;
 #5 rw= 1'b1;add= 2'b00; ip= 8'b00000000;
 #5 $finish();
 end
 endmodule
