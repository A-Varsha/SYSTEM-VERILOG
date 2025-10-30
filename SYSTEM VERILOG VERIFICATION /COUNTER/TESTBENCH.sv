// Code your testbench here
// or browse Examples

`include "environment.sv"
`include "interface.sv"
`include "test.sv"

module tb;
  intf inst();
  test tst (inst);

  counter dut (
    .clk(inst.clk),
    .rst(inst.rst),
    .count(inst.count)
  );

  initial begin
    inst.clk = 0;
    forever #5 inst.clk = ~inst.clk;  
  end

  initial begin
    inst.rst = 1;
    #12 inst.rst = 0;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
  end

  initial begin
    #100 $finish;
  end
endmodule

  
  
