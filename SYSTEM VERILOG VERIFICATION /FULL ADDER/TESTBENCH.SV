// Code your testbench here
// or browse Examples
`include "environment.sv"
`include "interface.sv"
`include "test.sv"
module full_adder_tb();
  intf intf_inst();
  test tst(intf_inst);
  full_adder dut(.a(intf_inst.a), .b(intf_inst.b), .cin(intf_inst.cin),
                 .sum(intf_inst.sum), .carry(intf_inst.carry));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,full_adder_tb);
  end
endmodule
