class parent ;
  bit[31:0]data;
  static bit[31:0]addr;
  
  function display();
    $display("value of addr=%0d",addr);
  endfunction
endclass

module scope;
  
  initial begin
    parent p;
    p=new();
    parent::addr=10;
    p.display(parent::addr);
    //parent::display(parent::addr);
  end
endmodule
    //op
#value of addr=10;
