
// Code your design here
module unique_if;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    unique if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else if(a<50)
      $display("a is less than 50");
    else 
      $display("a is equal to b");
  end
endmodule


output 
# a is less than b
# ** Warning: (vsim-8360) The if/case statement is not unique.
#    Time: 0 ns  Iteration: 0  Process: /unique_if/#ublk#9169318#4/#implicit#unique__8 File: C:/Users/VARSHA/questa/unique_if.sv Line: 8

