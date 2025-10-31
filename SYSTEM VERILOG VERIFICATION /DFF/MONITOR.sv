  class monitor;
    virtual intf vif;
    mailbox mb1;
    function new(virtual intf vif,mailbox mb1);
      this.vif=vif;
      this.mb1=mb1;
    endfunction
    task main();
      repeat(2) begin
       transaction trans;
        @(posedge vif.clk);
        #1;
        trans=new();
        trans.d=vif.d;
        trans.q=vif.q;
        //trans.qb=vif.qb;
        trans.rst=vif.rst;
        mb1.put(trans);
        trans.display("monitor class signals");
      end
    endtask
  endclass
