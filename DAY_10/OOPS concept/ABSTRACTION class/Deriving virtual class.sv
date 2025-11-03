virtual class parrent;
  bit[31:0]data;
endclass

class parent extends parrent;
  bit[31:0]addr;
  function void display();
    $display("value of addr",addr);
  endfunction
endclass
module parrt;
    parent p;
    initial begin
      p=new();
      p.addr=10;
      p.display();
  end
endmodule
//op
# value of addr        10
