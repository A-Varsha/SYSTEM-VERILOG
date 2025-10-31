class generator;
  transaction trans;
  mailbox mb;

  function new(mailbox mb);
    this.mb = mb;
  endfunction

  task main();
    repeat (2) begin
      trans = new();
      void'(trans.randomize());

      mb.put(trans);
    end
  endtask
endclass
