class monitor;
  virtual intf vif;
  mailbox mb1;
  
  
  function new(virtual intf vif,  mailbox mb1);
    this.vif=vif;
    this.mb1=mb1;
  endfunction
  
  
  task main();
    repeat(2)begin
      transaction trans;
      trans=new();
      @(posedge vif.clk)begin
        //trans.clk<=vif.clk;
        trans.rst<=vif.rst;
        #1;
        trans.count<=vif.count;
        mb1.put(trans);
        trans.func("monitor class signals");
        
      end
    end
   endtask
endclass
        
