virtual class parent ;
  bit[31:0]ad;
endclass

class parent_class extends parent;
  bit[31:0]addr;
  function void display();
    $display("value of addr",addr);
  endfunction
endclass
module pad;
  parent_class pc;
  initial begin
    pc=new();
    pc.ad=10;
    pc.display();
  end
endmodule



//op
#value of ad=0;
