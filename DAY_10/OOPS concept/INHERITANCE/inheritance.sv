class parent;
  bit[2:0]data;
  
  function void display_p();
    $display("value of data=%0d",data);
  endfunction
  
endclass

class child extends parent;
  int d;
  function void display_c();
    $display(" value of d=%0d",d);
  endfunction
endclass

module main;
  initial begin
    repeat(5)begin
    child ch;
    ch=new();
    ch.data=3;
    ch.d=15;
    
    ch.display_p();
    ch.display_c();
  end
  end
endmodule
//op

value of data=3;
value of d=15;
