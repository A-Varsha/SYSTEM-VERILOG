class monitor;
  virtual intf vif;
  mailbox mb1;

  function new(virtual intf vif, mailbox mb1);
    this.vif = vif;
    this.mb1 = mb1;
  endfunction

 task main();
  repeat(10) begin
    transaction trans;
    trans = new();
    @(posedge vif.clk);
    trans.rst    = vif.rst;
    trans.addr   = vif.addr;
    trans.datain = vif.datain;
    trans.wen    = vif.wen;
    @(posedge vif.clk);
    #1;
    trans.dataout = vif.dataout;   
    mb1.put(trans);
    trans.display("Monitor captured signals");
  end
endtask

endclass
