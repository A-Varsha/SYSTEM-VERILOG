class parent ;
  bit[31:0]data;
  int id;
  function void display();
    $display("value of data=%0d value of id=%0d",data,id);
  endfunction
endclass
class child_class extends parent;
  bit[31:0]data;
  int id;
  function void display();
    $display("value of data=%0d value od id=%0d",data,id);
  endfunction
endclass
module practice;
  initial begin
  parent p;
  child_class cc;
  cc=new();
  p=cc;
  p.data=100;
  p.id=15;
  
  cc.data=120;
  cc.id=330;
  
  p.display();
  end
endmodule

//op
# value of data=100 value of id=15
