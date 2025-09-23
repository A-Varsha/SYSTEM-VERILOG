// Code your design here
module op();
  int a,b,c;
  initial begin
    a=10;
    b=a++;
    $display("b=a++::a=%0d,b=%0d",a,b);
    
    a=10;
    b=++a;
    $display("b=++a::a=%0d,b=%0d",a,b);
    
    
    a=10;
    b=a--;
    $display("b=a--::a=%0d,b=%0d",a,b);
    
    a=10;
    b=--a;
    $display("b=--a::a=%0d,b=%0d",a,b);
    
    a=10;
    c=10;
    b=++a + ++c;
    $display(" b=++a + ++c::a=%0d,b=%0d",a,b);
    
    
    a=10;
    c=10;
    b=a++ + c++;
    $display(" b=++a + ++c::a=%0d,b=%0d",a,b);
    
    
  end
endmodule
    

    
   
  
