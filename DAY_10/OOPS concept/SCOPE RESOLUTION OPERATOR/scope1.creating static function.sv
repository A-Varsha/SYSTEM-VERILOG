class parent ;
  bit[31:0]data;
  static bit[31:0]addr=5;
  
 static function display();
    $display("value of addr=%0d",addr);
  endfunction
endclass

module scope;
  
  initial begin
    parent::addr=10;
    parent::display(parent::addr);
  end
endmodule
    //op
# value of addr=10
