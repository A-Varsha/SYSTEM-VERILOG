class scoreboard;
  mailbox mb1;
  int cout = 0;  
  event g1;
  
  function new(mailbox mb1);
    this.mb1 = mb1;
  endfunction
  
  task main();
    repeat (2) begin
      transaction trans;
      trans = new();         
      mb1.get(trans);        
      if(trans.rst) begin
        trans.count = 0;
      end else begin
        trans.count = trans.count + 1;
      end
      cout = cout + 1;
      
      if(cout == trans.count) begin
        $display("scb: done");
      end else begin
        $display("scb: not yet finished");
      end
      
      -> g1;  
    end
  endtask
endclass
