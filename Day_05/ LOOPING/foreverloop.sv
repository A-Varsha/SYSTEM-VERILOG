
module forever_loop;  
  int count;
  initial begin
    forever begin 
      $display("Value of count = %0d", count);
      count++;
      #5;
    end
  end
  
  initial begin
    #30;
    $finish;
  end
endmodule
  output
# value of count =0
# value of count =1
# value of count =2
# value of count =3
# value of count =4
# value of count =5
# ** Note: $finish    : C:/Users/VARSHA/questa/forever_loop.sv(13)
#    Time: 30 ns  Iteration: 0  Instance: /forever_loop
