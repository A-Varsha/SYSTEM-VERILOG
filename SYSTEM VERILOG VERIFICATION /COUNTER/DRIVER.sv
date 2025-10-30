class driver;
  virtual intf vif;
  mailbox mb;
  
  
  function new(virtual intf vif,mailbox mb);
    this.vif=vif;
    this.mb=mb;
  endfunction
  
  
  task main();
    repeat (2)begin
      transaction trans;
      //trans=new();
      mb.get(trans);
      vif.rst<=trans.rst;
      @(posedge vif.clk);
      trans.func("driver class signals");
      
      end
  endtask
endclass
