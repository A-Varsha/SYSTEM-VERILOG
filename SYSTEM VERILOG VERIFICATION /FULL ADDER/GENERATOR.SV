// generator.sv - Generator Class
class generator;
  mailbox mb;
  function new(mailbox mb);
    this.mb = mb; 
  endfunction

  task mxt();
    repeat (5) begin
      transaction trans = new();
      if (!trans.randomize()) $fatal("Randomization failed");
      mb.put(trans);
      trans.display("Generator");
      #10;
    end
  endtask
endclass
