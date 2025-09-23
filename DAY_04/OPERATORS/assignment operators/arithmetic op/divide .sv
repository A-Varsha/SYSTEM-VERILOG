// Code your design here
module arithmetic_operators();
  integer a,b,c,d;
  real e,f,g,h;
   initial begin
     a=10; b=3;
     c=a/b;
     $display("c=10/3 ::a=%0d,b=%0d,c=%0d",a,b,c);
     a=3.2; b=2.3;
     c=a/b;
     $display("integer c=3.2/2.3::a=%0f,b=%0f,c=%0f",a,b,c);
     e=3.1;f=4.5;
     g=e/f;
     $display("real g=3.1/4.5::e=%0f,f=%0f,g=%0d",e,f,g);
   end
endmodule
  
  

  
