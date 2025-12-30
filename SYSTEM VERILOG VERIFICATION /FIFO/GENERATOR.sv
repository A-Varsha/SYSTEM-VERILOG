`include "transaction.sv"
class generator;
  transaction trans;
  mailbox mb;
  
  function new(mailbox mb);
    this.mb=mb;
  endfunction
   
  
  task main();
    repeat (8)begin
      trans=new();
    if(!trans.randomize()) 
      $display("trandomization failed");
    mb.put(trans);
    trans.display("generator signals");
    end
  endtask
endclass
    
