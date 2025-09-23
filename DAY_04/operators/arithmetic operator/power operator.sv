// Code your design here
module power_operator();
  integer a,b,c,d;
  real e,f,g,h;
  initial begin
    a=2;b=3;
    c=a**b;
    $display("c=2**3::a=%0d,b=%0d,c=%0d",a,b,c);
  end
endmodule
