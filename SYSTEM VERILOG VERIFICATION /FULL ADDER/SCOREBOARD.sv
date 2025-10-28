class scoreboard;
  mailbox mb2;
  function new(mailbox mb2);
    this.mb2=mb2;
  endfunction
  task mxt();
    transaction trans;
    bit ref_sum, ref_carry;
    repeat(5) begin
      mb2.get(trans);
      ref_sum   = trans.a ^ trans.b ^ trans.cin;
      ref_carry = (trans.a & trans.b) | (trans.b & trans.cin) | (trans.cin & trans.a);
      $display("SCB: DUT=%b/%b REF=%b/%b   %s",
        trans.sum, trans.carry, ref_sum, ref_carry,
        ((ref_sum==trans.sum)&&(ref_carry==trans.carry)) ? "PASS" : "FAIL"
      );
    end
  endtask
endclass
