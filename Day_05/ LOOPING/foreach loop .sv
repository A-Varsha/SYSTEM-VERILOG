module foreach_loop();
  int array [5]='{100,200,300,400,500};
  initial begin
    foreach (array[i])begin
      $display ("array [%0d]=%0d",1,array[i]);
    end
  end
endmodule


output
# array=0        100
# array=1        200
# array=2        300
# array=3        400
# array=4        500
