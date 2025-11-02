// Code your testbench here
// or browse Examples
`include"interface.sv"
`include"environment.sv"
`include"test.sv"


module ramtb;
  intf inf();
  test tst (inf);
  
  
  ram dut (.clk(inf.clk),.rst(inf.rst),.addr(inf.addr),.datain(inf.datain),.wen(inf.wen),.dataout(inf.dataout));
  
  
  initial begin
    inf.clk = 0;
    forever #5 inf.clk = ~inf.clk; 
  end


  initial begin
    inf.rst = 1;
    #5;
    inf.rst = 0;
  end
   initial begin
    inf.wen=0;
    
    #5;
     inf.wen = 1; 
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, ramtb);
  end

 
  initial begin
    #500;
    $finish;
  end
endmodule
    
