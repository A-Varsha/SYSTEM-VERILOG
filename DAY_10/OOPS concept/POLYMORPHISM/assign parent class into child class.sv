class parent ;
  bit[31:0]data;
  int id;
  function void display();
    $display("value of data=%0d value of id=%0d",data,id);
  endfunction
endclass
class child_class extends parent;
  function void display();
    $display("value of data=%0d value od id=%0d",data,id);
  endfunction
endclass
module practice;
  initial begin
  parent p;
  child_class cc;
  cc=new();
 cc=p;
  p.data=100;
  p.id=15;
  
  cc.data=120;
  cc.id=330;
  
  p.display();
  end
endmodule
  //op
** Error (suppressible): design.sv(852): (vlog-13401) Illegal assignment to type 'class design_sv_unit:
:child_class' from type 'class design_sv_unit::parent'
  : Types are not assignment compatible.
  This assignment will always fail during simulation.
