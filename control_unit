`timescale 1ns / 1ps


module control_unit(
input clk,

input reset,
input start,input s,
output reg [1:0]pc,
    
    output reg [1:0]state,
    output reg [1:0]next_state);
   
    
    
    //start= 00
    //get_decode_calc=01
    //next=10
    
    always@(*)
    
    begin 
       
     state=next_state;
     if(reset==0)        
        begin state=2'b00;//start
            pc=2'b00;    
        end
    
        if (clk==1||s==1)
            begin    
                case(state)
                   2'b00:
                        begin
 
    next_state=2'b01;//execute
    end
    
    2'b01:
    begin
    pc=pc+1;
    next_state=2'b10;//next
    end
    
    2'b10:
    begin
    next_state<=2'b01;
    end
    endcase   
     
 
     
     end
    end
    
endmodule




