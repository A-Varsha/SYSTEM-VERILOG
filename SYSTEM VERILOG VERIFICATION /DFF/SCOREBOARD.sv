class scoreboard;
  mailbox mb1;
  bit ref_q,ref_qb;
  function new(mailbox mb1);
    this.mb1=mb1;
  endfunction
  task main();
    transaction trans;
     
    
    repeat (2)begin
      mb1.get(trans);
      ref_q=trans.d;
      //ref_qb=~trans.d;
      $display("SCB: DUT=%b/%b REF=%b/%b   %s",
        trans.d, ~trans.d, ref_q, ref_qb,((ref_q==trans.q)) ? "PASS" : "FAIL");
      
    
    end
  endtask
endclass

  
      
      
