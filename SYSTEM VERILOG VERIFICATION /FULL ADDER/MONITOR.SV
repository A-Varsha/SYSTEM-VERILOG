class monitor;
  virtual intf vif;
  mailbox mb2;
  function new(virtual intf vif, mailbox mb2);
               this.vif=vif;
               this.mb2=mb2;
               endfunction
  task mxt();
    repeat (5)begin
       transaction trans;
      #1;
                
                  
                   trans=new();
                  trans.a=vif.a;
                  trans.b=vif.b;
                  trans.cin=vif.cin;
                  trans.sum=vif.sum;
                  trans.carry=vif.carry;
                     
      mb2.put (trans);
                  trans.display("monitor class signals");
                   
                 end
               endtask
               endclass
