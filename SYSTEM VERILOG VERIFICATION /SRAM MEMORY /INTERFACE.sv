interface intf;
  logic clk;
  logic rst;
  logic wen;
  logic [7:0] addr;
  logic [7:0] datain;
  logic [7:0] dataout;
  modport ram_inf (input clk,rst,addr,datain,wen,output dataout);
  modport ramtb_inf(input dataout,output clk,rst,addr,datain,wen);
endinterface

