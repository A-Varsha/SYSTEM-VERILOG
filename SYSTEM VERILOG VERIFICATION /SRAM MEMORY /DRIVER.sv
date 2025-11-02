  class driver;
    virtual intf vif;
    mailbox mb;

    function new(virtual intf vif,mailbox mb);
      this.vif=vif;
      this.mb=mb;
    endfunction



    task main();
  wait (vif.rst == 0);
    repeat(10) begin
    transaction trans;
    mb.get(trans);
    @(posedge vif.clk);
    vif.addr    = trans.addr;
    vif.datain  = trans.datain;
    vif.wen     = 1;
    @(posedge vif.clk);
      #15;
    vif.wen= 0;
    @(posedge vif.clk);
    vif.wen= 0;
    if(vif.datain==trans.datain)
      trans.display("driver signals");
  end
endtask
  endclass

