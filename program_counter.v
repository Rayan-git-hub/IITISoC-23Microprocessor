module PC(
  input wire clk,        
  input wire reset,     

  input wire increment, 

  output reg [15:0] pc  
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      pc <= 16'h0000; end
    else if (increment) begin
      pc <= pc + 1;
  end
  end
endmodule
