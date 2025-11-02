class generator;
  transaction trans;
  mailbox mb;
  function new(mailbox mb);
    this.mb=mb;
  endfunction
  
  
  task main();
    repeat(10)begin
    transaction trans;
    trans=new();
    mb.put(trans);
    if(!trans.randomize())begin
      $display("transaction failed");
      trans.display("generator class signal");
    end
    end
  endtask
endclass
      
