class parent_class;
  local bit[31:0]data;
  function new(bit[31:0]date);
    data=date+3;
  endfunction
  
  function void display();
    $display("value of data",data);
  endfunction
endclass

module encap;
  parent_class pt=new(10);
  initial begin
    pt.display();
    end
endmodule
//op
# value of data        13
