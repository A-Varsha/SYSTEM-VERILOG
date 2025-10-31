class driver;
virtual intf vif;
  mailbox mb;
  function new(virtual intf vif,mailbox mb);
    this.vif=vif;
    this.mb=mb;
  endfunction
  task main();
  transaction trans;

  vif.rst = 1;
  vif.d   = 0;
  repeat (2) @(posedge vif.clk);
  vif.rst = 0;   
  $display("Reset released at time %0t", $time);

  repeat (2) begin
    mb.get(trans);
    @(negedge vif.clk);
    vif.d = trans.d;
    @(posedge vif.clk);
    trans.display("driver class signals");
  end
endtask

endclass
  
