// Code your testbench here
// or browse Examples
`include "environment.sv"
`include "generator.sv"
`include "interface.sv"
module tb();
  intf #(8)intf();
  test #(8) tst(intf);
  
  
  fifo dut (  .clk(intf.clk),
            .reset_n(intf.reset_n),
            .cs(intf.cs),
            .wr_en(intf.wr_en),
            .rd_en(intf.rd_en),
            .[DATA_WIDTH-1:0] data_in(intf.[DATA_WIDTH-1:0] data_in),
            .[DATA_WIDTH-1:0] data_out(intf.[DATA_WIDTH-1:0] data_out),
            .empty(intf.empty),
            .full(intf.full));
  intial begin
    $dumpfile(dump.vcd);
    $dumpvars();
  end
  intial  intf .clk=0;
  always #5 clk=~clk;
endmodule
    
