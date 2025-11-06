class parent;
  bit[31:0]data;
  int id;
  virtual function void display();
    $display("value of data=%0d value of id=%0d",data,id);
  endfunction
endclass
class child_a extends parent;
  function void display();
    $display("vlaue of data =%0d value of id=%0d",data,id);
  endfunction
endclass
class child_b extends parent;
  function void display();
    $display("value of data=%0d value of id=%0d",data,id);
  endfunction
endclass
class child_c extends parent;
  function void display();
    $display("value of data =%0d value of id=%0d",data,id);
  endfunction
endclass

module practice;
  initial begin
    parent p_a,p_b,p_c;

    child_a c_a =new();
    child_b c_b =new();
    child_c c_c =new();
    
    c_a.data=100;
    c_a.id=200;
    c_b.data=300;
    c_b.id=100;
    c_c.data=400;
    c_c.id=300;
    
    p_a=c_a;
    p_b=c_b;
    p_c=c_c;
    
    p_a.data=500;
    p_a.id=700;
    
    
    p_a.display();
    p_b.display();
    p_c.display();
  end
endmodule
//op
# vlaue of data =500 value of id=700
# value of data=300 value of id=100
# value of data =400 value of id=300
