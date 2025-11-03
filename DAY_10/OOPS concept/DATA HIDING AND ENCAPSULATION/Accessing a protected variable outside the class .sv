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
    r_display++;
  endfunction
endclass

module encap;
  parent_class p;
  child_class c;
  initial begin
    p=new();
    c=new();
    p.data=10;
    p.display();
    c.r_display;
    c.display();
  end
endmodule

//op
(vlog-2110) Illegal reference to non-variable "r_display".
: Verilog Compiler exiting
