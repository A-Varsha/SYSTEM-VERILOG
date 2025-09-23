// Code your design here
module equality_op();
  logic[15:0] a,b;
  initial begin
    a='hff;b='hf0;
    $display("a='hff b='hf0 :a==b=boolean %0d",a==b);
    $display("a='hff b='hf0 :a!=b=boolean %0d",a!=b);
    $display("a='hff b='hf0 :a===b=boolean %0d",a===b);
    $display("a='hff b='hf0 :a!==b=boolean %0d",a!==b);
    
    a='hfx;b='hfx;
    $display("a='hfx b='hfx :a==b=boolean %0d",a==b);
    $display("a='hfx b='hfx :a!=b=boolean %0d",a!=b);
    $display("a='hfx b='hfx :a===b=boolean %0d",a===b);
    $display("a='hfx b='hfx :a!==b=boolean %0d",a!==b);
    
    
  end
endmodule
