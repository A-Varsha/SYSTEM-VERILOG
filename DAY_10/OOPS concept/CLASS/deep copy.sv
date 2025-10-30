class addr_range;
  bit[31:0]s_addr;
  bit[31:0]e_addr;
  function new();
    s_addr=10;
    e_addr=50;
  endfunction
  
  function addr_range copy;
    copy =new();
    copy.s_addr=this.s_addr;
    copy.e_addr=this.e_addr;
    return copy;
  endfunction
endclass
 
class packet;
  bit[31:0]addr;
  bit[31:0]data;
  addr_range ar;
  
  
  function new();
    addr=10;
    data=20;
    ar=new();
  endfunction
  
  
  function void display();
    $display("  ");
    $display("addr=%0h",addr);
    $display("data=%0h",data);
    $display("s_addr=%0d",ar.s_addr);
    $display("e_addr=%0d",ar.e_addr);
    $display("");
  endfunction
  
  
  function packet copy();
    copy=new();
    copy.addr=this.addr;
    copy.data=this.data;
    copy.ar=ar.copy;
    return copy;
  endfunction
endclass

module range;
  packet pkt_1;
  packet pkt_2;
  
  initial begin
    pkt_1=new();
    pkt_1.display();
    pkt_2=new();
    pkt_2.display();
    pkt_2=pkt_1.copy;
    pkt_2.addr=49;
    pkt_1.display();
    pkt_2.display();
  end
endmodule

//op

# addr=a
# data=14
# s_addr=10
# e_addr=50
# 
#   
# addr=a
# data=14
# s_addr=10
# e_addr=50
# 
#   
# addr=a
# data=14
# s_addr=10
# e_addr=50
# 
#   
# addr=31
# data=14
# s_addr=10
# e_addr=50
