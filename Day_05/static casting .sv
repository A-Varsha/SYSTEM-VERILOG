// Code your design here
module static_casting();
  real  rNum;
  int   iNum;
  string s1;
  logic [7:0] a;
  logic signed [7:0]b;
  initial begin
  rNum=(2.3*3.2);
  iNum = int'(rNum);
  $display("real value is %f",rNum);
  $display("int value is %d",iNum);
  iNum=-10;
  rNum= signed '(iNum);
  $display("real value is %f",rNum);
  $display("int value is %d",iNum);
  iNum=-10;
  rNum= unsigned '(iNum);
  $display("real value is %f",rNum);
  $display("int value is %d",iNum);
  a[0 +: 8] = unsigned'(-4);
  b = signed'(4'b1100);
  $display("a = %b b = %0d", a, b);
  end 
endmodule
