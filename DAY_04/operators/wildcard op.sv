// Code your design here
module wildcard_operatio();
  logic[15:0]a,b;
  initial begin
    a='hff;b='hxx;
    $display("a='hff b='hxx a==?b=boolean %0d",a==?b);
    $display("a='hff b='hxx a!=?b=boolean %0d",a!=?b);
    
    
    a='hxx;b='hxx;
    $display("a='hxx b='hxx a==?b=boolean %0d",a==?b);
    $display("a='hxx b='hxx a!=?b=boolean %0d",a!=?b);
    
    
     a='hxx;b='hff;
    $display("a='hxx b='hff a==?b=boolean %0d",a==?b);
    $display("a='hxx b='hff a!=?b=boolean %0d",a!=?b);
    
    
    
     a='hxx;b='hx0;
    $display("a='hxx b='hx0 a==?b=boolean %0d",a==?b);
    $display("a='hxx b='hx0 a!=?b=boolean %0d",a!=?b);
    
    
    a='hff;b='hff;
    $display("a='hff b='hff a==?b=boolean %0d",a==?b);
    $display("a='hff b='hff a!=?b=boolean %0d",a!=?b);
    
    
  end
endmodule
