class parent_class;
  bit [31:0]data;
  function void display();
    $display("value of data=%0d",data);
  endfunction
endclass

class child_class extends parent_class;
  bit[31:0]addr;
  function void display();
    super.display();
    $display("value of addr=%0d",addr);
  endfunction
endclass

module fun;
   parent_class p;
    child_class c;
  initial begin
    p=new();
    c=new();
    c.data=10;
    c.addr=20;
    p=c;
    p.display();
  end
endmodule

//op
# value of data=10
# value of addr=20
