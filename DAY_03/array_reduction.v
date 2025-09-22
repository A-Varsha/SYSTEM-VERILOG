module reduction();
  int on[10];
  int summ;

  initial begin
    foreach(on[i])
      on[i] = i;

    $display("Sum of array elements: %0d", on.sum());

    summ = on.sum();
    $display("Stored sum in variable summ: %0d", summ);
  end
endmodule
