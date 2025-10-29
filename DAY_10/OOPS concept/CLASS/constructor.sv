class sv_class;
  bit[2:0]addr;
  bit[2:0]data;
  bit write;
  string name;
  
  function new();
    addr=32'h10;
    data=32'hff;
    write=1;
    name="varsha";
    
  endfunction
  
  function void display( );
    $display("     ");
    $display("addr=%0h",addr);
    $display("data=%0h",data);
    $display("write=%0h",write);
    $display("name=%s",name);
    $display("         ");
  endfunction
endclass
  module packet;
    sv_class class_1;
    initial begin
      class_1=new();
      class_1.display();
    end
  endmodule



//op
# addr=0
# data=7
# write=1
# name=varsha
