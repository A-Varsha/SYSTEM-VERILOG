class monitor;
  virtual intf vif;
  mailbox mb2;
  function new (virtual intf vif,mailbox mb2);
    this .vif=vif;
    this. mb2=mb2;
  endfunction
  
  
  task main();
    repeat (8)begin
      transaction trans;
      trans=new();
      @(posedge vif .clk);
    trans.reset_n=vif.reset_n;
      trans.c= vif.css;
      trans.wr_en=vif.wr_en;
      trans.rd_en<=vifrd_en;
      trans.[DATA_WIDTH-1:0] data_in=  vif.[DATA_WIDTH-1:0] data_in;
      trans.[DATA_WIDTH-1:0] data_out=vif.[DATA_WIDTH-1:0] data_out;
      trans.empty=vif.empty;
      trans.full=vif.full;
      mb2.put(trans);
      $display("monitor signals");
    end
  endtask
endclass
