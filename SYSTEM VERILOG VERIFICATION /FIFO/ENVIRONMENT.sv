`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment ;
  generator gen;
  driver div;
  monitor mon;
  scoreboard scb;
  mailbox mb;
  mailbox mb2;
   
  virtual intf vif;
  
  function new( virtual intf vif)
    this.vif=vif;
    mb=new();
    mb2=new()
    gen=new(mb);
    div=new(vif,mb);
    mon=new(vif,mb2);
    scb=new(mb2);
  endfunction
  
  task run();
    fork
      gen.main();
      div.main();
      mon.main();
      scb.main();
    join
  endtask
endclass
