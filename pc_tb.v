`timescale 1ns / 1ps
module pc_tb();
reg clk,increment,reset;
wire [15:0]pc;
PC p1(clk,reset,increment,pc);
always begin
clk=0;
#5 clk<=!clk;
end
initial begin
reset=1;
increment=0;

#10 reset=0;

#10 increment=1;
#20 increment=0;
#10 increment=1;
#20 increment=0;

#10 reset=1;
#10 reset=0;increment=1;
#20 increment=0;
#10 $finish;
end
endmodule
