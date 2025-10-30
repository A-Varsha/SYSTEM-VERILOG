`include"transaction.sv"
`include"generator.sv"
`include"driver.sv"
`include"monitor.sv"
`include"scoreboard.sv"
class environment;
  transaction trans;
  generator gen;
  driver div;
  monitor mon;
  scoreboard scb;
  
  mailbox mb;
  mailbox mb1;
  event g1;
  
  virtual intf vif;
  
  function new(virtual intf vif);
    this.vif=vif;
    
    mb=new();
    mb1=new();
    gen=new(mb);
    div=new(vif,mb);
    mon=new(vif,mb1);
    scb=new(mb1);
    gen.g1=g1;
    scb.g1=g1;
    
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
  
  
  
