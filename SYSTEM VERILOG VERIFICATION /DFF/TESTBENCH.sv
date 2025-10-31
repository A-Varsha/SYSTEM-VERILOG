`include "interface.sv"
`include "environment.sv"
`include "test.sv"

module dff_tb;
  
  intf ift();
test txt(ift);
dff ut1(.rst(ift.rst), .clk(ift.clk), .d(ift.d), .q(ift.q));
 
  initial begin
    ift.clk = 0;
    forever #5 ift.clk = ~ift.clk;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, dff_tb);
    $monitor("Time=%0t | rst=%b | clk=%b | d=%b | q=%b ",$time, ift.rst, ift.clk, ift.d, ift.q);
    #1000;
    $finish;
  end
  initial begin
   ift.rst = 1; ift.d = 0;
    #8  ift.rst = 0;   
    #7  ift.d = 1;
    #10 ift.d = 0;
    #10 ift.d = 1;
    #20 $finish;
  end

  
endmodule
