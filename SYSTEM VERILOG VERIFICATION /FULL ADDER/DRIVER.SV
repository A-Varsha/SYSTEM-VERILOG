class driver;
  virtual intf vif;
  mailbox mb;
  function new(virtual intf vif,mailbox mb);
    this.vif=vif;
    this.mb=mb;
  endfunction
  task mxt();
     transaction trans;
    repeat(5) begin
      mb.get(trans);
      vif.a=trans.a;
      vif.b=trans.b;
      vif.cin=trans.cin;
      #1;
     trans.display(" driver class signals ");
    
   end 
  endtask
endclass
