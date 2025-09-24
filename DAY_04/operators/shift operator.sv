// Code your design here
module shift_op();
  logic[7:0] a,b;
  initial begin
     a=8'b10110010;
    b=a<<2;
    $display(" a=%b:<<2 =%b",a,b);
    b=a<<4;
    $display(" a=%b:<<4 =%b",a,b);
    b=a>>2;
    $display(" a=%b:>>2 =%b",a,b);
    b=a>>4;
    $display(" a=%b:>>4 =%b",a,b);
    a=-3;
    b=a<<<2;
    $display(" a=%b:<<<2 =%b",a,b);
    b=a<<<4;
    $display(" a=%b:<<<4 =%b",a,b);
    b=a>>>2;
    $display(" a=%b:>>>2 =%b",a,b);
    b=a>>>4;
    $display(" a=%b:>>>4 =%b",a,b);
    
  end
endmodule
