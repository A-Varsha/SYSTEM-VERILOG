module dynamic_array;
  int array[];   

  initial begin
    array = new[5];
    array[0] = 43;
    array[1] = 41;
    array[2] = 42;
    array[3] = 44;
    array[4] = 45;

    $display("\nOriginal Array:");
    foreach(array[i])
      $display("array[%0d] = %0d", i, array[i]);
    $display("Size = %0d\n", array.size());

    array = new[8](array);
    $display("After resizing to 8:");
    foreach(array[i])
      $display("array[%0d] = %0d", i, array[i]);
    $display("Size = %0d\n", array.size());

    array = new[6](array);
    $display("After resizing to 6:");
    foreach(array[i])
      $display("array[%0d] = %0d", i, array[i]);
    $display("Size = %0d\n", array.size());

    array.delete();
    $display("After delete, size = %0d", array.size());
  end
endmodule
