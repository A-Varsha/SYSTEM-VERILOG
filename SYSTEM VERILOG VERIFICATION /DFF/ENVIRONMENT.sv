`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
class environment;
  generator gen;
  driver div;
  monitor mon;
  scoreboard scb;
  
  virtual intf vif;
  mailbox mb;
  mailbox mb1;
  
  function new(virtual intf vif);
    this.vif=vif;
    mb=new();
    mb1=new();
    gen=new(mb);
    div=new(vif,mb);
    mon=new(vif,mb1);
    scb=new(mb1);
  endfunction
  
  
  task runn();
    fork
      gen.main();
      div.main();
      mon.main();
      scb.main();
    join
  endtask
endclass
    
  
