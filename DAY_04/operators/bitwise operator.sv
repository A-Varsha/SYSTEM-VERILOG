// Code your design here
module bitwise_operator();
  logic[31:0]a,b;
    int i;
  initial begin
     a='hff_00_f0_ff;
     b='h00_ff_ff_00;
    i=a&b;
    $display("a=%h b-%h a&b=%h",a,b,i);
    i=a|b;
    $display("a=%h b=%h a|b=%h",a,b,i);
    i=a^b;
    $display("a=%h b=%h a^b=%h",a,b,i);
    i=a~^b;
    $display("a=%h b=%h a~^b=%h",a,b,i);
    i=a^~b;
    $display("a=%h b=%h a^~b=%h",a,b,i);
   // i=~a;
   // $display("a=%h  ~a=%h",a);
    //i=~b;
    //$display("b=%h  ~b=%h",b);
    
  end 
endmodule

//output 
a=ff00f0ff b-00ffff00 a&b=0000f000
a=ff00f0ff b=00ffff00 a|b=ffffffff
a=ff00f0ff b=00ffff00 a^b=ffff0fff
a=ff00f0ff b=00ffff00 a~^b=0000f000
a=ff00f0ff b=00ffff00 a^~b=0000f000
