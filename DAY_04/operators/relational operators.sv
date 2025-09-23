// Code your design here
module relational_operator();
  integer a,b,c,d;
  initial begin
    a=3;b=2;
    $display("3>2 = boolean %0d",a>b);
    $display("3>=2 = boolean %0d",a>=b);
    $display("3<2 = boolean %0d",a<b);
    $display("3<=2 = boolean %0d",a<=b);
    
    
    
    a=1'bx;b=2;
    $display("\n relational operator  with 'x'  results in'x'\n");
    $display("x>2 = boolean %0d",a>b);
    $display("x>=2 = boolean %0d",a>=b);
    $display("x<2 = boolean %0d",a<b);
    $display("x<=2 = boolean %0d",a<=b);
    
    
    a=-1;b=-3;
    $display("-1>-3 = boolean %0d",a>b);
    
    
    a=2;b=4;
    $display("following two are same");
    $display(" a=2 b=4: a < b-1 = %0d",a<b-1);
    a=2;b=3;
    $display(" a=2 b=3: a <( b-1) = %0d",a<(b-1));
    
    
    
    a=2;b=4;
    $display("following two  are not  same");
    $display(" a=2 b=4: b-1<a = %0d",b-1<a);
    a=3;b=1;
    $display(" a=3 b=1: b-(1<a) = %0d",b-(1<a));
    
    
    
    
  end
endmodule
