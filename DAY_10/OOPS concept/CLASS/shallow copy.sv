class addr_range;
  bit [31:0]s_addr;
  bit [31:0]e_addr;
  function new();
   s_addr=10;
   e_addr=20;
  endfunction
endclass

class packet ;
  bit [31:0]addr;
  bit [31:0]data;
  addr_range ar;
  
  function new();
    addr=32'h30;
    data=32'hff;
    ar=new();
  endfunction
  
  function void display();
    $display("  ");
    $display(" addr=%0h",addr);
    $display(" data=%0h",data);
    $display("s_addr=%0d",ar.s_addr);
    $display("e_addr=%0d",ar.e_addr);
    $display("      ");
  endfunction
 endclass

module range;
  packet pkt_1;
  packet pkt_2;
 initial begin
   pkt_1=new();
   pkt_1.display();
   pkt_2=new pkt_1;
   pkt_2.display();
   pkt_2.addr=32'h10;
   pkt_2.ar.s_addr=40;
   pkt_1.display();
   pkt_2.display();
 end
endmodule
#  addr=30
#  data=ff
# s_addr=10
# e_addr=20
#       
#   
#  addr=30
#  data=ff
# s_addr=10
# e_addr=20
#       
#   
#  addr=30
#  data=ff
# s_addr=40
# e_addr=20
#       
#   
#  addr=10
#  data=ff
# s_addr=40
# e_addr=20
