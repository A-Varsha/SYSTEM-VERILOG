class parent_class;
  protected bit[31:0]data;
  function new(bit[31:0]date);
    data=date+1;
  endfunction
  
  function display();
    $display("value of data=%0d",data);
  endfunction
endclass

class child_class extends parent_class;
  function new(bit[31:0]date);
    super.new(date);
  endfunction
  function void r_display();
    data++;
  endfunction
endclass

module encap;
 initial begin
   child_class c=new(10);
    c.r_display;
    c.display();
  end
endmodule

//op
# value of data=12
