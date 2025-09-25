// Code your design here
module priority_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    priority if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else if(a<50)
      $display("a is less than 50");
    else 
      $display("a is equal to b");
  end
endmodule
