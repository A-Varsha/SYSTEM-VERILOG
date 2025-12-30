class scoreboard #(parameter=8);
  mailbox mb2;
  
  function new(mailbox mb2);
    this.mb2=mb2;
  endfunction
  
  task main();
    transaction trans;
    bit ref_
   
      $display("pass ");
    else
      $display(" not yet finished");
    end
  endtask
endclass
