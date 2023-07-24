  `timescale 1ns / 1ps
 module instr_bank(output reg [7:0]i_op,
                    input [1:0]pci,
                    input [1:0]pco,
                    input rw,
                    input [7:0]ip,
                    input clk);

reg [7:0]registers[3:0];
  always @(*)
    if(rw==0)
        registers[pci]<=ip;
        
    
    else
        i_op <= registers[pco];
    
endmodule
