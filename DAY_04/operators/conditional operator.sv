// Code your design here
module conditional_op();
  logic[7:0] a;
  logic enable;
  initial begin
    enable=1'b1;
    a=enable?'hff:'z;
    $display("enable= %0d a = %h", enable,a);
    
    enable=1'b0;
    a=enable?'hff:'z;
    $display("enable= %0d a = %h", enable,a);
    
    
    enable=1'bx;
    a=enable?'hff:0;
    $display("enable= %0d a = %h", enable,a);
    
    
    enable=1'bx;
    a=enable?'hff:'hff;
    $display("enable= %0d a = %h", enable,a);
    
    enable=1'bx;
    a=enable?0:'z;
    $display("enable= %0d a = %h", enable,a);
    

  end
endmodule

#output
enable= 1 a = ff
enable= 0 a = zz
enable= x a = xx
enable= x a = ff
enable= x a = xx

