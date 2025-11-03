class parent_class;
  bit[31:0]data;
  function void display();
    $display("value of data=%0d",data);
  endfunction
endclass

class child_class extends parent_class;
  bit[31:0]addr;
  function void display();
    super.display();
    $display("value of addr",addr);
  endfunction
endclass

module dam;
  parent_class p;
  child_class c;
  initial begin
    p=new();
    c=new();
    c.addr=10;
    c.data=40;
    c=p;
    c.display();
  end
endmodule

//op
Illegal assignment to type 'class design_sv_unit::child_class' from type 'class design_sv_unit::parent_class':
  Types are not assignment compatible.
  This assignment will always fail during simulation.
