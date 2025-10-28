`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
generator gen;
  driver dr;
  monitor mon;
  scoreboard sbd;
  
  mailbox mb;
  mailbox mb2;
  
  virtual intf vif;
  function new(virtual intf vif);
    this.vif=vif;
    
    mb=new();
    mb2=new();
    gen =new(mb);
    dr=new(vif,mb);
    mon=new(vif,mb2);
    sbd=new(mb2);
  endfunction
  task main();
    fork
    gen.mxt();
    dr.mxt();
    mon.mxt();
    sbd.mxt();
    join
  endtask
endclass


 
