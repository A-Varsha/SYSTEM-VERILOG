class parent;
  bit[31:0]data;
  static int id;
  
  static function display();
    $display("value of id=%0d",id);
  endfunction
  
  function auto_display();
    $display("value of id =%0d",id);
  endfunction
endclass
  module scope;
    initial begin
      parent::id=10;
      parent::display(parent::id);
    end
  endmodule

//op
# value of id=10
