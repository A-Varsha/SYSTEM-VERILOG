// Code your design here
module ram (
  input clk,
  input rst,
  input [7:0]addr,
  input[7:0] datain,
  input wen,
  output reg  [7:0]dataout);
  
  reg[7:0]mem[0:255];
  
  always_ff @(posedge clk or negedge rst) begin
  if (rst) begin
     dataout <= 8'd0;
  end  else 
    if (wen)
      mem[addr] <= datain;    
   else
    dataout <= mem[addr];
end
endmodule
  
      
      
  
  
  
  
