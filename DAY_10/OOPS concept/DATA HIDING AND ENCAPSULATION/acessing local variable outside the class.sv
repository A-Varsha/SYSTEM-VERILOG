class parent_class;
  local bit[31:0]data;
  function new(bit[31:0]vat);
    data=vat+10;
  endfunction
  
  function display();
    $display("value of data=%0d",data);
  endfunction
endclass

module encap;
  parent_class p;
  initial begin
    p=new(10);
    p.data=10;
    p.display();
  end
endmodule
//op
Error (suppressible): Illegal access to local member data.
        Full name of member: design_sv_unit::parent_class::data
        Full name of calling scope: outside a class context
