// Code your design here
module arithmetic_operator();
  integer a,b,c,d;
  real e,f,g,h;
  initial begin
    a=10;b=3;
    c=a%b;
    $display("  c= 10 modulo 3::a=%0d,b=%0d,c=%0d",a,b,c);
    
    a= -10 ;b=3;
    c=a%b;
    $display("  c= -10 modulo 3::a=%0d,b=%0d,c=%0d",a,b,c);
    
    a= 10 ;b= -3;
    c=a%b;
    $display("  c= 10 modulo -3::a=%0d,b=%0d,c=%0d",a,b,c);
    
    a=0 ;b=3;
    c=a%b;
    $display("  c= 0 modulo 3::a=%0d,b=%0d,c=%0d",a,b,c);
    
    
    a=3 ;b=0;
    c=a%b;
    $display("  c= 3 modulo 0::a=%0d,b=%0d,c=%0d",a,b,c);  
    
    
    a=0 ;b=-3;
    c=a%b;
    $display("  c= 0 modulo -3::a=%0d,b=%0d,c=%0d",a,b,c);  
    
  end
endmodule
