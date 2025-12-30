class driver#(parameter FIFO_DEPTH = 8,
              parameter DATA_WIDTH = 32);
 
  virtual intf vif;
  mailbox mb;
  function new(virtual intf vif,mailbox mb);
    this.vif=vif;
    this.mb=mb;
  endfunction
  task main();
    transaction #(8)trans;
    repeat (8)begin
       trans=new();
      mb.get(trans);
      vif.reset_n<=trans.reset_n;
      vif.cs<=trans.cs;
      vif.wr_en<=trans.wr_en;
      vif.rd_en<=trans.rd_en;
      vif.[DATA_WIDTH-1:0] data_in<=trans.[DATA_WIDTH-1:0] data_in;
      $display("driver signals");
      #1;
    end
  endtask
endclass
      
    
