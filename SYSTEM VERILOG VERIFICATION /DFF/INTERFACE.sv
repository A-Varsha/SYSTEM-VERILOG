interface intf;

  logic clk;
  logic rst;
  logic d;
  logic q;
 modport dff (input clk, rst, d, output q);
 modport dff_tb(output clk, rst, d, input q);

endinterface
