class generator;
  transaction trans;
  mailbox mb;
  event g1;
  
  function new(mailbox mb);
    this.mb=mb;
  endfunction
  
  task main();
     repeat(2)begin
    transaction trans;
    trans=new();
   
       if(!trans.randomize()) begin
    $display("randomization success");
  
           mb.put(trans);
  trans.func("generator class signals");
end else begin
    $display("failed");
end
 
       @g1;
     end
       endtask
       endclass
      
    
