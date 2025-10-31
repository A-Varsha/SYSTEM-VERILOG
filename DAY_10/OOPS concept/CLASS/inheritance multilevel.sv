class parent_class;
  bit[31:0]data;
  
  function void display_p();
    $display("value of data=%0d",data);
  endfunction
endclass

class class_a extends parent_class;
  bit [7:0]d;
  
  function void display_ca();
    $display("value of d=%0d",d);
  endfunction
endclass
  
  
  class class_b extends parent_class;
    int d1;
    function void display_cb();
      $display("value of d1=%0d",d1);
    endfunction
  endclass

class class_1 extends class_a;
  bit[5:0]t1;
  function void display_t1();
    $display("value of t1=%0d",t1);
  endfunction
endclass
module main;
  initial begin
  class_1 c1;
    c1=new();
    c1.t1=9;
  c1.data=1;
  c1.d=2;
    
  
  c1.display_p();
  c1.display_ca();
  c1.display_t1();
  end
endmodule

//op
# value of data=1
# value of d=2
# value of t1=9
