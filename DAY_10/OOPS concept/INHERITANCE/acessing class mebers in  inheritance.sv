class parent_class;
  bit[31:0]data;
  int d;
  
  function void display();
    $display(" value of data=%0d value of d=%0d",data,d);
  endfunction
endclass

class child_class;
  bit[7:0]tr;
  bit[4:0]dr;
  
  function void display();
    $display("value of tr=%0d value of dr=%0d",tr,dr);
  endfunction
endclass

module main;
  parent_class pc;
  child_class cc;
  initial begin
    pc=new();
    cc=new();
    
    pc.data=100;
    pc.d=2;
    cc.tr=50;
    cc.dr=7;
    pc.display();
    cc.display();
  end
endmodule
//op
#  value of data=100 value of d=2
# value of tr=50 value of dr=7
