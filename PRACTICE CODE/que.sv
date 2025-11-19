module que();
  int array[$];
  initial begin
    array='{100,200,300};
    foreach(array[i]);
    $display("array=%p",array);
    $display("before:array");
    array.push_front(310);
    $display("array=%p",array);
  end
endmodule
//op
array='{100, 200, 300} 
before:array
array='{310, 100, 200, 300} 
           V C S   S i m u l a t i o n   R e p o r t
